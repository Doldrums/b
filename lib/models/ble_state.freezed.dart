// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ble_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() off,
    required TResult Function(ConnectionDetails details) disconnected,
    required TResult Function(ConnectionDetails details) connected,
    required TResult Function() connecting,
    required TResult Function() disconnecting,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? off,
    TResult? Function(ConnectionDetails details)? disconnected,
    TResult? Function(ConnectionDetails details)? connected,
    TResult? Function()? connecting,
    TResult? Function()? disconnecting,
    TResult? Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? off,
    TResult Function(ConnectionDetails details)? disconnected,
    TResult Function(ConnectionDetails details)? connected,
    TResult Function()? connecting,
    TResult Function()? disconnecting,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BleStateOff value) off,
    required TResult Function(_BleStateDisconnected value) disconnected,
    required TResult Function(_BleStateConnected value) connected,
    required TResult Function(_BleStateConnecting value) connecting,
    required TResult Function(_BleStateDisconnecting value) disconnecting,
    required TResult Function(_BleStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BleStateOff value)? off,
    TResult? Function(_BleStateDisconnected value)? disconnected,
    TResult? Function(_BleStateConnected value)? connected,
    TResult? Function(_BleStateConnecting value)? connecting,
    TResult? Function(_BleStateDisconnecting value)? disconnecting,
    TResult? Function(_BleStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BleStateOff value)? off,
    TResult Function(_BleStateDisconnected value)? disconnected,
    TResult Function(_BleStateConnected value)? connected,
    TResult Function(_BleStateConnecting value)? connecting,
    TResult Function(_BleStateDisconnecting value)? disconnecting,
    TResult Function(_BleStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BleStateCopyWith<$Res> {
  factory $BleStateCopyWith(BleState value, $Res Function(BleState) then) =
      _$BleStateCopyWithImpl<$Res, BleState>;
}

/// @nodoc
class _$BleStateCopyWithImpl<$Res, $Val extends BleState>
    implements $BleStateCopyWith<$Res> {
  _$BleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_BleStateOffCopyWith<$Res> {
  factory _$$_BleStateOffCopyWith(
          _$_BleStateOff value, $Res Function(_$_BleStateOff) then) =
      __$$_BleStateOffCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BleStateOffCopyWithImpl<$Res>
    extends _$BleStateCopyWithImpl<$Res, _$_BleStateOff>
    implements _$$_BleStateOffCopyWith<$Res> {
  __$$_BleStateOffCopyWithImpl(
      _$_BleStateOff _value, $Res Function(_$_BleStateOff) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BleStateOff implements _BleStateOff {
  const _$_BleStateOff();

  @override
  String toString() {
    return 'BleState.off()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BleStateOff);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() off,
    required TResult Function(ConnectionDetails details) disconnected,
    required TResult Function(ConnectionDetails details) connected,
    required TResult Function() connecting,
    required TResult Function() disconnecting,
    required TResult Function(String? error) error,
  }) {
    return off();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? off,
    TResult? Function(ConnectionDetails details)? disconnected,
    TResult? Function(ConnectionDetails details)? connected,
    TResult? Function()? connecting,
    TResult? Function()? disconnecting,
    TResult? Function(String? error)? error,
  }) {
    return off?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? off,
    TResult Function(ConnectionDetails details)? disconnected,
    TResult Function(ConnectionDetails details)? connected,
    TResult Function()? connecting,
    TResult Function()? disconnecting,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (off != null) {
      return off();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BleStateOff value) off,
    required TResult Function(_BleStateDisconnected value) disconnected,
    required TResult Function(_BleStateConnected value) connected,
    required TResult Function(_BleStateConnecting value) connecting,
    required TResult Function(_BleStateDisconnecting value) disconnecting,
    required TResult Function(_BleStateError value) error,
  }) {
    return off(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BleStateOff value)? off,
    TResult? Function(_BleStateDisconnected value)? disconnected,
    TResult? Function(_BleStateConnected value)? connected,
    TResult? Function(_BleStateConnecting value)? connecting,
    TResult? Function(_BleStateDisconnecting value)? disconnecting,
    TResult? Function(_BleStateError value)? error,
  }) {
    return off?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BleStateOff value)? off,
    TResult Function(_BleStateDisconnected value)? disconnected,
    TResult Function(_BleStateConnected value)? connected,
    TResult Function(_BleStateConnecting value)? connecting,
    TResult Function(_BleStateDisconnecting value)? disconnecting,
    TResult Function(_BleStateError value)? error,
    required TResult orElse(),
  }) {
    if (off != null) {
      return off(this);
    }
    return orElse();
  }
}

abstract class _BleStateOff implements BleState {
  const factory _BleStateOff() = _$_BleStateOff;
}

/// @nodoc
abstract class _$$_BleStateDisconnectedCopyWith<$Res> {
  factory _$$_BleStateDisconnectedCopyWith(_$_BleStateDisconnected value,
          $Res Function(_$_BleStateDisconnected) then) =
      __$$_BleStateDisconnectedCopyWithImpl<$Res>;
  @useResult
  $Res call({ConnectionDetails details});

  $ConnectionDetailsCopyWith<$Res> get details;
}

/// @nodoc
class __$$_BleStateDisconnectedCopyWithImpl<$Res>
    extends _$BleStateCopyWithImpl<$Res, _$_BleStateDisconnected>
    implements _$$_BleStateDisconnectedCopyWith<$Res> {
  __$$_BleStateDisconnectedCopyWithImpl(_$_BleStateDisconnected _value,
      $Res Function(_$_BleStateDisconnected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = null,
  }) {
    return _then(_$_BleStateDisconnected(
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ConnectionDetails,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ConnectionDetailsCopyWith<$Res> get details {
    return $ConnectionDetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value));
    });
  }
}

/// @nodoc

class _$_BleStateDisconnected implements _BleStateDisconnected {
  const _$_BleStateDisconnected({required this.details});

  @override
  final ConnectionDetails details;

  @override
  String toString() {
    return 'BleState.disconnected(details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BleStateDisconnected &&
            (identical(other.details, details) || other.details == details));
  }

  @override
  int get hashCode => Object.hash(runtimeType, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BleStateDisconnectedCopyWith<_$_BleStateDisconnected> get copyWith =>
      __$$_BleStateDisconnectedCopyWithImpl<_$_BleStateDisconnected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() off,
    required TResult Function(ConnectionDetails details) disconnected,
    required TResult Function(ConnectionDetails details) connected,
    required TResult Function() connecting,
    required TResult Function() disconnecting,
    required TResult Function(String? error) error,
  }) {
    return disconnected(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? off,
    TResult? Function(ConnectionDetails details)? disconnected,
    TResult? Function(ConnectionDetails details)? connected,
    TResult? Function()? connecting,
    TResult? Function()? disconnecting,
    TResult? Function(String? error)? error,
  }) {
    return disconnected?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? off,
    TResult Function(ConnectionDetails details)? disconnected,
    TResult Function(ConnectionDetails details)? connected,
    TResult Function()? connecting,
    TResult Function()? disconnecting,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BleStateOff value) off,
    required TResult Function(_BleStateDisconnected value) disconnected,
    required TResult Function(_BleStateConnected value) connected,
    required TResult Function(_BleStateConnecting value) connecting,
    required TResult Function(_BleStateDisconnecting value) disconnecting,
    required TResult Function(_BleStateError value) error,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BleStateOff value)? off,
    TResult? Function(_BleStateDisconnected value)? disconnected,
    TResult? Function(_BleStateConnected value)? connected,
    TResult? Function(_BleStateConnecting value)? connecting,
    TResult? Function(_BleStateDisconnecting value)? disconnecting,
    TResult? Function(_BleStateError value)? error,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BleStateOff value)? off,
    TResult Function(_BleStateDisconnected value)? disconnected,
    TResult Function(_BleStateConnected value)? connected,
    TResult Function(_BleStateConnecting value)? connecting,
    TResult Function(_BleStateDisconnecting value)? disconnecting,
    TResult Function(_BleStateError value)? error,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class _BleStateDisconnected implements BleState {
  const factory _BleStateDisconnected(
      {required final ConnectionDetails details}) = _$_BleStateDisconnected;

  ConnectionDetails get details;
  @JsonKey(ignore: true)
  _$$_BleStateDisconnectedCopyWith<_$_BleStateDisconnected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BleStateConnectedCopyWith<$Res> {
  factory _$$_BleStateConnectedCopyWith(_$_BleStateConnected value,
          $Res Function(_$_BleStateConnected) then) =
      __$$_BleStateConnectedCopyWithImpl<$Res>;
  @useResult
  $Res call({ConnectionDetails details});

  $ConnectionDetailsCopyWith<$Res> get details;
}

/// @nodoc
class __$$_BleStateConnectedCopyWithImpl<$Res>
    extends _$BleStateCopyWithImpl<$Res, _$_BleStateConnected>
    implements _$$_BleStateConnectedCopyWith<$Res> {
  __$$_BleStateConnectedCopyWithImpl(
      _$_BleStateConnected _value, $Res Function(_$_BleStateConnected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = null,
  }) {
    return _then(_$_BleStateConnected(
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ConnectionDetails,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ConnectionDetailsCopyWith<$Res> get details {
    return $ConnectionDetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value));
    });
  }
}

/// @nodoc

class _$_BleStateConnected implements _BleStateConnected {
  const _$_BleStateConnected({required this.details});

  @override
  final ConnectionDetails details;

  @override
  String toString() {
    return 'BleState.connected(details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BleStateConnected &&
            (identical(other.details, details) || other.details == details));
  }

  @override
  int get hashCode => Object.hash(runtimeType, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BleStateConnectedCopyWith<_$_BleStateConnected> get copyWith =>
      __$$_BleStateConnectedCopyWithImpl<_$_BleStateConnected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() off,
    required TResult Function(ConnectionDetails details) disconnected,
    required TResult Function(ConnectionDetails details) connected,
    required TResult Function() connecting,
    required TResult Function() disconnecting,
    required TResult Function(String? error) error,
  }) {
    return connected(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? off,
    TResult? Function(ConnectionDetails details)? disconnected,
    TResult? Function(ConnectionDetails details)? connected,
    TResult? Function()? connecting,
    TResult? Function()? disconnecting,
    TResult? Function(String? error)? error,
  }) {
    return connected?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? off,
    TResult Function(ConnectionDetails details)? disconnected,
    TResult Function(ConnectionDetails details)? connected,
    TResult Function()? connecting,
    TResult Function()? disconnecting,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BleStateOff value) off,
    required TResult Function(_BleStateDisconnected value) disconnected,
    required TResult Function(_BleStateConnected value) connected,
    required TResult Function(_BleStateConnecting value) connecting,
    required TResult Function(_BleStateDisconnecting value) disconnecting,
    required TResult Function(_BleStateError value) error,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BleStateOff value)? off,
    TResult? Function(_BleStateDisconnected value)? disconnected,
    TResult? Function(_BleStateConnected value)? connected,
    TResult? Function(_BleStateConnecting value)? connecting,
    TResult? Function(_BleStateDisconnecting value)? disconnecting,
    TResult? Function(_BleStateError value)? error,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BleStateOff value)? off,
    TResult Function(_BleStateDisconnected value)? disconnected,
    TResult Function(_BleStateConnected value)? connected,
    TResult Function(_BleStateConnecting value)? connecting,
    TResult Function(_BleStateDisconnecting value)? disconnecting,
    TResult Function(_BleStateError value)? error,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class _BleStateConnected implements BleState {
  const factory _BleStateConnected({required final ConnectionDetails details}) =
      _$_BleStateConnected;

  ConnectionDetails get details;
  @JsonKey(ignore: true)
  _$$_BleStateConnectedCopyWith<_$_BleStateConnected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BleStateConnectingCopyWith<$Res> {
  factory _$$_BleStateConnectingCopyWith(_$_BleStateConnecting value,
          $Res Function(_$_BleStateConnecting) then) =
      __$$_BleStateConnectingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BleStateConnectingCopyWithImpl<$Res>
    extends _$BleStateCopyWithImpl<$Res, _$_BleStateConnecting>
    implements _$$_BleStateConnectingCopyWith<$Res> {
  __$$_BleStateConnectingCopyWithImpl(
      _$_BleStateConnecting _value, $Res Function(_$_BleStateConnecting) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BleStateConnecting implements _BleStateConnecting {
  const _$_BleStateConnecting();

  @override
  String toString() {
    return 'BleState.connecting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BleStateConnecting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() off,
    required TResult Function(ConnectionDetails details) disconnected,
    required TResult Function(ConnectionDetails details) connected,
    required TResult Function() connecting,
    required TResult Function() disconnecting,
    required TResult Function(String? error) error,
  }) {
    return connecting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? off,
    TResult? Function(ConnectionDetails details)? disconnected,
    TResult? Function(ConnectionDetails details)? connected,
    TResult? Function()? connecting,
    TResult? Function()? disconnecting,
    TResult? Function(String? error)? error,
  }) {
    return connecting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? off,
    TResult Function(ConnectionDetails details)? disconnected,
    TResult Function(ConnectionDetails details)? connected,
    TResult Function()? connecting,
    TResult Function()? disconnecting,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BleStateOff value) off,
    required TResult Function(_BleStateDisconnected value) disconnected,
    required TResult Function(_BleStateConnected value) connected,
    required TResult Function(_BleStateConnecting value) connecting,
    required TResult Function(_BleStateDisconnecting value) disconnecting,
    required TResult Function(_BleStateError value) error,
  }) {
    return connecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BleStateOff value)? off,
    TResult? Function(_BleStateDisconnected value)? disconnected,
    TResult? Function(_BleStateConnected value)? connected,
    TResult? Function(_BleStateConnecting value)? connecting,
    TResult? Function(_BleStateDisconnecting value)? disconnecting,
    TResult? Function(_BleStateError value)? error,
  }) {
    return connecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BleStateOff value)? off,
    TResult Function(_BleStateDisconnected value)? disconnected,
    TResult Function(_BleStateConnected value)? connected,
    TResult Function(_BleStateConnecting value)? connecting,
    TResult Function(_BleStateDisconnecting value)? disconnecting,
    TResult Function(_BleStateError value)? error,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting(this);
    }
    return orElse();
  }
}

abstract class _BleStateConnecting implements BleState {
  const factory _BleStateConnecting() = _$_BleStateConnecting;
}

/// @nodoc
abstract class _$$_BleStateDisconnectingCopyWith<$Res> {
  factory _$$_BleStateDisconnectingCopyWith(_$_BleStateDisconnecting value,
          $Res Function(_$_BleStateDisconnecting) then) =
      __$$_BleStateDisconnectingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BleStateDisconnectingCopyWithImpl<$Res>
    extends _$BleStateCopyWithImpl<$Res, _$_BleStateDisconnecting>
    implements _$$_BleStateDisconnectingCopyWith<$Res> {
  __$$_BleStateDisconnectingCopyWithImpl(_$_BleStateDisconnecting _value,
      $Res Function(_$_BleStateDisconnecting) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BleStateDisconnecting implements _BleStateDisconnecting {
  const _$_BleStateDisconnecting();

  @override
  String toString() {
    return 'BleState.disconnecting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BleStateDisconnecting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() off,
    required TResult Function(ConnectionDetails details) disconnected,
    required TResult Function(ConnectionDetails details) connected,
    required TResult Function() connecting,
    required TResult Function() disconnecting,
    required TResult Function(String? error) error,
  }) {
    return disconnecting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? off,
    TResult? Function(ConnectionDetails details)? disconnected,
    TResult? Function(ConnectionDetails details)? connected,
    TResult? Function()? connecting,
    TResult? Function()? disconnecting,
    TResult? Function(String? error)? error,
  }) {
    return disconnecting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? off,
    TResult Function(ConnectionDetails details)? disconnected,
    TResult Function(ConnectionDetails details)? connected,
    TResult Function()? connecting,
    TResult Function()? disconnecting,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (disconnecting != null) {
      return disconnecting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BleStateOff value) off,
    required TResult Function(_BleStateDisconnected value) disconnected,
    required TResult Function(_BleStateConnected value) connected,
    required TResult Function(_BleStateConnecting value) connecting,
    required TResult Function(_BleStateDisconnecting value) disconnecting,
    required TResult Function(_BleStateError value) error,
  }) {
    return disconnecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BleStateOff value)? off,
    TResult? Function(_BleStateDisconnected value)? disconnected,
    TResult? Function(_BleStateConnected value)? connected,
    TResult? Function(_BleStateConnecting value)? connecting,
    TResult? Function(_BleStateDisconnecting value)? disconnecting,
    TResult? Function(_BleStateError value)? error,
  }) {
    return disconnecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BleStateOff value)? off,
    TResult Function(_BleStateDisconnected value)? disconnected,
    TResult Function(_BleStateConnected value)? connected,
    TResult Function(_BleStateConnecting value)? connecting,
    TResult Function(_BleStateDisconnecting value)? disconnecting,
    TResult Function(_BleStateError value)? error,
    required TResult orElse(),
  }) {
    if (disconnecting != null) {
      return disconnecting(this);
    }
    return orElse();
  }
}

abstract class _BleStateDisconnecting implements BleState {
  const factory _BleStateDisconnecting() = _$_BleStateDisconnecting;
}

/// @nodoc
abstract class _$$_BleStateErrorCopyWith<$Res> {
  factory _$$_BleStateErrorCopyWith(
          _$_BleStateError value, $Res Function(_$_BleStateError) then) =
      __$$_BleStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$_BleStateErrorCopyWithImpl<$Res>
    extends _$BleStateCopyWithImpl<$Res, _$_BleStateError>
    implements _$$_BleStateErrorCopyWith<$Res> {
  __$$_BleStateErrorCopyWithImpl(
      _$_BleStateError _value, $Res Function(_$_BleStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_BleStateError(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_BleStateError implements _BleStateError {
  const _$_BleStateError({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'BleState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BleStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BleStateErrorCopyWith<_$_BleStateError> get copyWith =>
      __$$_BleStateErrorCopyWithImpl<_$_BleStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() off,
    required TResult Function(ConnectionDetails details) disconnected,
    required TResult Function(ConnectionDetails details) connected,
    required TResult Function() connecting,
    required TResult Function() disconnecting,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? off,
    TResult? Function(ConnectionDetails details)? disconnected,
    TResult? Function(ConnectionDetails details)? connected,
    TResult? Function()? connecting,
    TResult? Function()? disconnecting,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? off,
    TResult Function(ConnectionDetails details)? disconnected,
    TResult Function(ConnectionDetails details)? connected,
    TResult Function()? connecting,
    TResult Function()? disconnecting,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BleStateOff value) off,
    required TResult Function(_BleStateDisconnected value) disconnected,
    required TResult Function(_BleStateConnected value) connected,
    required TResult Function(_BleStateConnecting value) connecting,
    required TResult Function(_BleStateDisconnecting value) disconnecting,
    required TResult Function(_BleStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BleStateOff value)? off,
    TResult? Function(_BleStateDisconnected value)? disconnected,
    TResult? Function(_BleStateConnected value)? connected,
    TResult? Function(_BleStateConnecting value)? connecting,
    TResult? Function(_BleStateDisconnecting value)? disconnecting,
    TResult? Function(_BleStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BleStateOff value)? off,
    TResult Function(_BleStateDisconnected value)? disconnected,
    TResult Function(_BleStateConnected value)? connected,
    TResult Function(_BleStateConnecting value)? connecting,
    TResult Function(_BleStateDisconnecting value)? disconnecting,
    TResult Function(_BleStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _BleStateError implements BleState {
  const factory _BleStateError({final String? error}) = _$_BleStateError;

  String? get error;
  @JsonKey(ignore: true)
  _$$_BleStateErrorCopyWith<_$_BleStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
