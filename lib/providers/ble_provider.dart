import 'dart:math';

import 'package:ble_reader/ble_reader.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/ble_state.dart';
import '../models/connection_details.dart';

final flutterDatabase =
    Provider<FlutterSecureStorage>((ref) => const FlutterSecureStorage());

final bleProvider =
    StateNotifierProvider<BLENotifier, BleState>((ref) => BLENotifier());

const int mtuInBytes = 512;

final connectionStateStreamProvider =
    StreamProvider<BluetoothDeviceState>((ref) async* {
  final instance = ref.watch(bleProvider);
  Stream<BluetoothDeviceState> stream = const Stream.empty();
  yield BluetoothDeviceState.connected;
  instance.maybeWhen(
      connected: (ConnectionDetails details) async {
        final devices = await details.instance!.connectedDevices;
        if (devices.isNotEmpty) {
          stream = devices.first.state;
        } else {}
      },
      orElse: () {});
  yield* stream;
});

final recordingStateProvider = StateProvider<bool>((ref) => false);

final approximateDistance = StateProvider<num>((ref) {
  late num approximateDistance;
  final instance = ref.watch(bleProvider);
  instance.maybeWhen(connected: (ConnectionDetails details) async {
    num? rssi = details.rssi;
    if (rssi != null) {
      rssi = rssi.toDouble();
      approximateDistance = pow(10, ((-25 - rssi) / (10 * 2.4)));
    } else {
      approximateDistance = 0;
    }
  }, orElse: () {
    return approximateDistance = 0;
  });
  return approximateDistance;
});

class BLENotifier extends StateNotifier<BleState> {
  late ConnectionDetails details;
  late BluetoothCharacteristic? messageCharacteristic;
  late Stream<BluetoothState> stateStream;

  BLENotifier() : super(const BleState.off()) {
    init();
  }

  void init() async {
    state = const BleState.connecting();
    FlutterBlue flutterBlue = FlutterBlue.instance;
    details = ConnectionDetails(
      instance: flutterBlue,
    );
    stateStream = flutterBlue.state;
    await Future.delayed(
      const Duration(seconds: 5),
    );
    state = BleState.disconnected(details: details);
  }

  void connect(ScanResult data) async {
    state = const BleState.connecting();
    final connectionManager = details.instance;
    try {
      if (data.advertisementData.connectable) {
        data.device.connect(timeout: const Duration(seconds: 15));
        await Future.delayed(
          const Duration(seconds: 5),
        );
        details = ConnectionDetails(
          instance: connectionManager,
          device: data.device,
          rssi: data.rssi,
        );
      }
    } on Exception catch (_) {
      state = const BleState.error(error: 'Error bitches');
    }
    await BleReader.setupConnection;
    state = BleState.connected(details: details);
  }

  Future<void> findMessageCharacteristic() async {
    List<BluetoothService> services = await details.device!.discoverServices();
    if (services.isEmpty) return;
    var messageService = services.firstWhere(
        (s) => s.uuid == Guid('0000b81d-0000-1000-8000-00805f9b34fb'));

    messageCharacteristic = messageService.characteristics.firstWhere(
        (c) => c.uuid == Guid('7db3e235-3608-41f3-a03c-955fcbd2ea4b'));
  }

  Future<void> sendSamples(List<int> voice) async {
    if (messageCharacteristic == null) return;
    for (var start = 0; start < voice.length; start += mtuInBytes) {
      await messageCharacteristic!.write(
          voice.sublist(
              start,
              start + mtuInBytes > voice.length
                  ? voice.length
                  : start + mtuInBytes),
          withoutResponse: true);
    }
  }

  void disconnect() async {
    state = const BleState.disconnecting();
    state = const BleState.off();
  }
}
