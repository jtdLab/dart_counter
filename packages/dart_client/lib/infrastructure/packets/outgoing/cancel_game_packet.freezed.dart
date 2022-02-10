// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cancel_game_packet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CancelGamePacket _$CancelGamePacketFromJson(Map<String, dynamic> json) {
  return _CancelGamePacket.fromJson(json);
}

/// @nodoc
class _$CancelGamePacketTearOff {
  const _$CancelGamePacketTearOff();

  _CancelGamePacket call() {
    return const _CancelGamePacket();
  }

  CancelGamePacket fromJson(Map<String, Object?> json) {
    return CancelGamePacket.fromJson(json);
  }
}

/// @nodoc
const $CancelGamePacket = _$CancelGamePacketTearOff();

/// @nodoc
mixin _$CancelGamePacket {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelGamePacketCopyWith<$Res> {
  factory $CancelGamePacketCopyWith(
          CancelGamePacket value, $Res Function(CancelGamePacket) then) =
      _$CancelGamePacketCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelGamePacketCopyWithImpl<$Res>
    implements $CancelGamePacketCopyWith<$Res> {
  _$CancelGamePacketCopyWithImpl(this._value, this._then);

  final CancelGamePacket _value;
  // ignore: unused_field
  final $Res Function(CancelGamePacket) _then;
}

/// @nodoc
abstract class _$CancelGamePacketCopyWith<$Res> {
  factory _$CancelGamePacketCopyWith(
          _CancelGamePacket value, $Res Function(_CancelGamePacket) then) =
      __$CancelGamePacketCopyWithImpl<$Res>;
}

/// @nodoc
class __$CancelGamePacketCopyWithImpl<$Res>
    extends _$CancelGamePacketCopyWithImpl<$Res>
    implements _$CancelGamePacketCopyWith<$Res> {
  __$CancelGamePacketCopyWithImpl(
      _CancelGamePacket _value, $Res Function(_CancelGamePacket) _then)
      : super(_value, (v) => _then(v as _CancelGamePacket));

  @override
  _CancelGamePacket get _value => super._value as _CancelGamePacket;
}

/// @nodoc
@JsonSerializable()
@Implements<RequestPacket>()
class _$_CancelGamePacket extends _CancelGamePacket {
  const _$_CancelGamePacket() : super._();

  factory _$_CancelGamePacket.fromJson(Map<String, dynamic> json) =>
      _$$_CancelGamePacketFromJson(json);

  @override
  String toString() {
    return 'CancelGamePacket()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CancelGamePacket);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_CancelGamePacketToJson(this);
  }
}

abstract class _CancelGamePacket extends CancelGamePacket
    implements RequestPacket {
  const factory _CancelGamePacket() = _$_CancelGamePacket;
  const _CancelGamePacket._() : super._();

  factory _CancelGamePacket.fromJson(Map<String, dynamic> json) =
      _$_CancelGamePacket.fromJson;
}
