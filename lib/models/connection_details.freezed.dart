// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'connection_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectionDetails {
  FlutterBlue get instance => throw _privateConstructorUsedError;
  BluetoothDevice? get device => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectionDetailsCopyWith<ConnectionDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionDetailsCopyWith<$Res> {
  factory $ConnectionDetailsCopyWith(
          ConnectionDetails value, $Res Function(ConnectionDetails) then) =
      _$ConnectionDetailsCopyWithImpl<$Res, ConnectionDetails>;
  @useResult
  $Res call({FlutterBlue instance, BluetoothDevice? device});
}

/// @nodoc
class _$ConnectionDetailsCopyWithImpl<$Res, $Val extends ConnectionDetails>
    implements $ConnectionDetailsCopyWith<$Res> {
  _$ConnectionDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instance = null,
    Object? device = freezed,
  }) {
    return _then(_value.copyWith(
      instance: null == instance
          ? _value.instance
          : instance // ignore: cast_nullable_to_non_nullable
              as FlutterBlue,
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as BluetoothDevice?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConnectionDetailsCopyWith<$Res>
    implements $ConnectionDetailsCopyWith<$Res> {
  factory _$$_ConnectionDetailsCopyWith(_$_ConnectionDetails value,
          $Res Function(_$_ConnectionDetails) then) =
      __$$_ConnectionDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FlutterBlue instance, BluetoothDevice? device});
}

/// @nodoc
class __$$_ConnectionDetailsCopyWithImpl<$Res>
    extends _$ConnectionDetailsCopyWithImpl<$Res, _$_ConnectionDetails>
    implements _$$_ConnectionDetailsCopyWith<$Res> {
  __$$_ConnectionDetailsCopyWithImpl(
      _$_ConnectionDetails _value, $Res Function(_$_ConnectionDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instance = null,
    Object? device = freezed,
  }) {
    return _then(_$_ConnectionDetails(
      instance: null == instance
          ? _value.instance
          : instance // ignore: cast_nullable_to_non_nullable
              as FlutterBlue,
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as BluetoothDevice?,
    ));
  }
}

/// @nodoc

class _$_ConnectionDetails implements _ConnectionDetails {
  const _$_ConnectionDetails({required this.instance, this.device});

  @override
  final FlutterBlue instance;
  @override
  final BluetoothDevice? device;

  @override
  String toString() {
    return 'ConnectionDetails(instance: $instance, device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectionDetails &&
            (identical(other.instance, instance) ||
                other.instance == instance) &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, instance, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectionDetailsCopyWith<_$_ConnectionDetails> get copyWith =>
      __$$_ConnectionDetailsCopyWithImpl<_$_ConnectionDetails>(
          this, _$identity);
}

abstract class _ConnectionDetails implements ConnectionDetails {
  const factory _ConnectionDetails(
      {required final FlutterBlue instance,
      final BluetoothDevice? device}) = _$_ConnectionDetails;

  @override
  FlutterBlue get instance;
  @override
  BluetoothDevice? get device;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectionDetailsCopyWith<_$_ConnectionDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
