// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'start_game_packet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StartGamePacket _$StartGamePacketFromJson(Map<String, dynamic> json) {
  return _StartGamePacket.fromJson(json);
}

/// @nodoc
class _$StartGamePacketTearOff {
  const _$StartGamePacketTearOff();

  _StartGamePacket call() {
    return const _StartGamePacket();
  }

  StartGamePacket fromJson(Map<String, Object?> json) {
    return StartGamePacket.fromJson(json);
  }
}

/// @nodoc
const $StartGamePacket = _$StartGamePacketTearOff();

/// @nodoc
mixin _$StartGamePacket {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartGamePacketCopyWith<$Res> {
  factory $StartGamePacketCopyWith(
          StartGamePacket value, $Res Function(StartGamePacket) then) =
      _$StartGamePacketCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartGamePacketCopyWithImpl<$Res>
    implements $StartGamePacketCopyWith<$Res> {
  _$StartGamePacketCopyWithImpl(this._value, this._then);

  final StartGamePacket _value;
  // ignore: unused_field
  final $Res Function(StartGamePacket) _then;
}

/// @nodoc
abstract class _$StartGamePacketCopyWith<$Res> {
  factory _$StartGamePacketCopyWith(
          _StartGamePacket value, $Res Function(_StartGamePacket) then) =
      __$StartGamePacketCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartGamePacketCopyWithImpl<$Res>
    extends _$StartGamePacketCopyWithImpl<$Res>
    implements _$StartGamePacketCopyWith<$Res> {
  __$StartGamePacketCopyWithImpl(
      _StartGamePacket _value, $Res Function(_StartGamePacket) _then)
      : super(_value, (v) => _then(v as _StartGamePacket));

  @override
  _StartGamePacket get _value => super._value as _StartGamePacket;
}

/// @nodoc
@JsonSerializable()
@Implements<RequestPacket>()
class _$_StartGamePacket extends _StartGamePacket {
  const _$_StartGamePacket() : super._();

  factory _$_StartGamePacket.fromJson(Map<String, dynamic> json) =>
      _$$_StartGamePacketFromJson(json);

  @override
  String toString() {
    return 'StartGamePacket()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _StartGamePacket);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_StartGamePacketToJson(this);
  }
}

abstract class _StartGamePacket extends StartGamePacket
    implements RequestPacket {
  const factory _StartGamePacket() = _$_StartGamePacket;
  const _StartGamePacket._() : super._();

  factory _StartGamePacket.fromJson(Map<String, dynamic> json) =
      _$_StartGamePacket.fromJson;
}
