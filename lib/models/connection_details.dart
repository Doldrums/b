import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_blue/flutter_blue.dart';

part 'connection_details.freezed.dart';

@freezed
class ConnectionDetails with _$ConnectionDetails {
  const factory ConnectionDetails({
    FlutterBlue? instance,
    BluetoothDevice? device,
    int? rssi,
  }) = _ConnectionDetails;
}
