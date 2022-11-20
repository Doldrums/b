import 'package:freezed_annotation/freezed_annotation.dart';

import 'connection_details.dart';

part 'ble_state.freezed.dart';

@freezed
class BleState with _$BleState {
  const factory BleState.off() = _BleStateOff;
  const factory BleState.disconnected({required ConnectionDetails details}) =
      _BleStateDisconnected;
  const factory BleState.connected({required ConnectionDetails details}) =
      _BleStateConnected;
  const factory BleState.connecting() = _BleStateConnecting;
  const factory BleState.disconnecting() = _BleStateDisconnecting;
  const factory BleState.error({String? error}) = _BleStateError;
}
