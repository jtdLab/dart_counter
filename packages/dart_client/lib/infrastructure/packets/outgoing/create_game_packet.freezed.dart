// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_game_packet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateGamePacket _$CreateGamePacketFromJson(Map<String, dynamic> json) {
  return _CreateGamePacket.fromJson(json);
}

/// @nodoc
class _$CreateGamePacketTearOff {
  const _$CreateGamePacketTearOff();

  _CreateGamePacket call() {
    return const _CreateGamePacket();
  }

  CreateGamePacket fromJson(Map<String, Object> json) {
    return CreateGamePacket.fromJson(json);
  }
}

/// @nodoc
const $CreateGamePacket = _$CreateGamePacketTearOff();

/// @nodoc
mixin _$CreateGamePacket {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGamePacketCopyWith<$Res> {
  factory $CreateGamePacketCopyWith(
          CreateGamePacket value, $Res Function(CreateGamePacket) then) =
      _$CreateGamePacketCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateGamePacketCopyWithImpl<$Res>
    implements $CreateGamePacketCopyWith<$Res> {
  _$CreateGamePacketCopyWithImpl(this._value, this._then);

  final CreateGamePacket _value;
  // ignore: unused_field
  final $Res Function(CreateGamePacket) _then;
}

/// @nodoc
abstract class _$CreateGamePacketCopyWith<$Res> {
  factory _$CreateGamePacketCopyWith(
          _CreateGamePacket value, $Res Function(_CreateGamePacket) then) =
      __$CreateGamePacketCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateGamePacketCopyWithImpl<$Res>
    extends _$CreateGamePacketCopyWithImpl<$Res>
    implements _$CreateGamePacketCopyWith<$Res> {
  __$CreateGamePacketCopyWithImpl(
      _CreateGamePacket _value, $Res Function(_CreateGamePacket) _then)
      : super(_value, (v) => _then(v as _CreateGamePacket));

  @override
  _CreateGamePacket get _value => super._value as _CreateGamePacket;
}

/// @nodoc
@JsonSerializable()
@Implements(RequestPacket)
class _$_CreateGamePacket extends _CreateGamePacket {
  const _$_CreateGamePacket() : super._();

  factory _$_CreateGamePacket.fromJson(Map<String, dynamic> json) =>
      _$_$_CreateGamePacketFromJson(json);

  @override
  String toString() {
    return 'CreateGamePacket()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreateGamePacket);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CreateGamePacketToJson(this);
  }
}

abstract class _CreateGamePacket extends CreateGamePacket
    implements RequestPacket {
  const factory _CreateGamePacket() = _$_CreateGamePacket;
  const _CreateGamePacket._() : super._();

  factory _CreateGamePacket.fromJson(Map<String, dynamic> json) =
      _$_CreateGamePacket.fromJson;
}
