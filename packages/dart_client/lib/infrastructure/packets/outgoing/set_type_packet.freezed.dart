// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'set_type_packet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SetTypePacket _$SetTypePacketFromJson(Map<String, dynamic> json) {
  return _SetTypePacket.fromJson(json);
}

/// @nodoc
class _$SetTypePacketTearOff {
  const _$SetTypePacketTearOff();

  _SetTypePacket call({required Type type}) {
    return _SetTypePacket(
      type: type,
    );
  }

  SetTypePacket fromJson(Map<String, Object?> json) {
    return SetTypePacket.fromJson(json);
  }
}

/// @nodoc
const $SetTypePacket = _$SetTypePacketTearOff();

/// @nodoc
mixin _$SetTypePacket {
  Type get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetTypePacketCopyWith<SetTypePacket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetTypePacketCopyWith<$Res> {
  factory $SetTypePacketCopyWith(
          SetTypePacket value, $Res Function(SetTypePacket) then) =
      _$SetTypePacketCopyWithImpl<$Res>;
  $Res call({Type type});
}

/// @nodoc
class _$SetTypePacketCopyWithImpl<$Res>
    implements $SetTypePacketCopyWith<$Res> {
  _$SetTypePacketCopyWithImpl(this._value, this._then);

  final SetTypePacket _value;
  // ignore: unused_field
  final $Res Function(SetTypePacket) _then;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
    ));
  }
}

/// @nodoc
abstract class _$SetTypePacketCopyWith<$Res>
    implements $SetTypePacketCopyWith<$Res> {
  factory _$SetTypePacketCopyWith(
          _SetTypePacket value, $Res Function(_SetTypePacket) then) =
      __$SetTypePacketCopyWithImpl<$Res>;
  @override
  $Res call({Type type});
}

/// @nodoc
class __$SetTypePacketCopyWithImpl<$Res>
    extends _$SetTypePacketCopyWithImpl<$Res>
    implements _$SetTypePacketCopyWith<$Res> {
  __$SetTypePacketCopyWithImpl(
      _SetTypePacket _value, $Res Function(_SetTypePacket) _then)
      : super(_value, (v) => _then(v as _SetTypePacket));

  @override
  _SetTypePacket get _value => super._value as _SetTypePacket;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_SetTypePacket(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<RequestPacket>()
class _$_SetTypePacket extends _SetTypePacket {
  const _$_SetTypePacket({required this.type}) : super._();

  factory _$_SetTypePacket.fromJson(Map<String, dynamic> json) =>
      _$$_SetTypePacketFromJson(json);

  @override
  final Type type;

  @override
  String toString() {
    return 'SetTypePacket(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetTypePacket &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$SetTypePacketCopyWith<_SetTypePacket> get copyWith =>
      __$SetTypePacketCopyWithImpl<_SetTypePacket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SetTypePacketToJson(this);
  }
}

abstract class _SetTypePacket extends SetTypePacket implements RequestPacket {
  const factory _SetTypePacket({required Type type}) = _$_SetTypePacket;
  const _SetTypePacket._() : super._();

  factory _SetTypePacket.fromJson(Map<String, dynamic> json) =
      _$_SetTypePacket.fromJson;

  @override
  Type get type;
  @override
  @JsonKey(ignore: true)
  _$SetTypePacketCopyWith<_SetTypePacket> get copyWith =>
      throw _privateConstructorUsedError;
}
