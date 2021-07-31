// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'undo_throw_packet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UndoThrowPacket _$UndoThrowPacketFromJson(Map<String, dynamic> json) {
  return _UndoThrowPacket.fromJson(json);
}

/// @nodoc
class _$UndoThrowPacketTearOff {
  const _$UndoThrowPacketTearOff();

  _UndoThrowPacket call() {
    return const _UndoThrowPacket();
  }

  UndoThrowPacket fromJson(Map<String, Object> json) {
    return UndoThrowPacket.fromJson(json);
  }
}

/// @nodoc
const $UndoThrowPacket = _$UndoThrowPacketTearOff();

/// @nodoc
mixin _$UndoThrowPacket {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UndoThrowPacketCopyWith<$Res> {
  factory $UndoThrowPacketCopyWith(
          UndoThrowPacket value, $Res Function(UndoThrowPacket) then) =
      _$UndoThrowPacketCopyWithImpl<$Res>;
}

/// @nodoc
class _$UndoThrowPacketCopyWithImpl<$Res>
    implements $UndoThrowPacketCopyWith<$Res> {
  _$UndoThrowPacketCopyWithImpl(this._value, this._then);

  final UndoThrowPacket _value;
  // ignore: unused_field
  final $Res Function(UndoThrowPacket) _then;
}

/// @nodoc
abstract class _$UndoThrowPacketCopyWith<$Res> {
  factory _$UndoThrowPacketCopyWith(
          _UndoThrowPacket value, $Res Function(_UndoThrowPacket) then) =
      __$UndoThrowPacketCopyWithImpl<$Res>;
}

/// @nodoc
class __$UndoThrowPacketCopyWithImpl<$Res>
    extends _$UndoThrowPacketCopyWithImpl<$Res>
    implements _$UndoThrowPacketCopyWith<$Res> {
  __$UndoThrowPacketCopyWithImpl(
      _UndoThrowPacket _value, $Res Function(_UndoThrowPacket) _then)
      : super(_value, (v) => _then(v as _UndoThrowPacket));

  @override
  _UndoThrowPacket get _value => super._value as _UndoThrowPacket;
}

/// @nodoc
@JsonSerializable()
@Implements(RequestPacket)
class _$_UndoThrowPacket extends _UndoThrowPacket {
  const _$_UndoThrowPacket() : super._();

  factory _$_UndoThrowPacket.fromJson(Map<String, dynamic> json) =>
      _$_$_UndoThrowPacketFromJson(json);

  @override
  String toString() {
    return 'UndoThrowPacket()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UndoThrowPacket);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UndoThrowPacketToJson(this);
  }
}

abstract class _UndoThrowPacket extends UndoThrowPacket
    implements RequestPacket {
  const factory _UndoThrowPacket() = _$_UndoThrowPacket;
  const _UndoThrowPacket._() : super._();

  factory _UndoThrowPacket.fromJson(Map<String, dynamic> json) =
      _$_UndoThrowPacket.fromJson;
}
