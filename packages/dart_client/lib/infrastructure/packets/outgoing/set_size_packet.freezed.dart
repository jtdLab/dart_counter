// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'set_size_packet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SetSizePacket _$SetSizePacketFromJson(Map<String, dynamic> json) {
  return _SetSizePacket.fromJson(json);
}

/// @nodoc
class _$SetSizePacketTearOff {
  const _$SetSizePacketTearOff();

  _SetSizePacket call({required int size}) {
    return _SetSizePacket(
      size: size,
    );
  }

  SetSizePacket fromJson(Map<String, Object?> json) {
    return SetSizePacket.fromJson(json);
  }
}

/// @nodoc
const $SetSizePacket = _$SetSizePacketTearOff();

/// @nodoc
mixin _$SetSizePacket {
  int get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetSizePacketCopyWith<SetSizePacket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSizePacketCopyWith<$Res> {
  factory $SetSizePacketCopyWith(
          SetSizePacket value, $Res Function(SetSizePacket) then) =
      _$SetSizePacketCopyWithImpl<$Res>;
  $Res call({int size});
}

/// @nodoc
class _$SetSizePacketCopyWithImpl<$Res>
    implements $SetSizePacketCopyWith<$Res> {
  _$SetSizePacketCopyWithImpl(this._value, this._then);

  final SetSizePacket _value;
  // ignore: unused_field
  final $Res Function(SetSizePacket) _then;

  @override
  $Res call({
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SetSizePacketCopyWith<$Res>
    implements $SetSizePacketCopyWith<$Res> {
  factory _$SetSizePacketCopyWith(
          _SetSizePacket value, $Res Function(_SetSizePacket) then) =
      __$SetSizePacketCopyWithImpl<$Res>;
  @override
  $Res call({int size});
}

/// @nodoc
class __$SetSizePacketCopyWithImpl<$Res>
    extends _$SetSizePacketCopyWithImpl<$Res>
    implements _$SetSizePacketCopyWith<$Res> {
  __$SetSizePacketCopyWithImpl(
      _SetSizePacket _value, $Res Function(_SetSizePacket) _then)
      : super(_value, (v) => _then(v as _SetSizePacket));

  @override
  _SetSizePacket get _value => super._value as _SetSizePacket;

  @override
  $Res call({
    Object? size = freezed,
  }) {
    return _then(_SetSizePacket(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<RequestPacket>()
class _$_SetSizePacket extends _SetSizePacket {
  const _$_SetSizePacket({required this.size}) : super._();

  factory _$_SetSizePacket.fromJson(Map<String, dynamic> json) =>
      _$$_SetSizePacketFromJson(json);

  @override
  final int size;

  @override
  String toString() {
    return 'SetSizePacket(size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetSizePacket &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, size);

  @JsonKey(ignore: true)
  @override
  _$SetSizePacketCopyWith<_SetSizePacket> get copyWith =>
      __$SetSizePacketCopyWithImpl<_SetSizePacket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SetSizePacketToJson(this);
  }
}

abstract class _SetSizePacket extends SetSizePacket implements RequestPacket {
  const factory _SetSizePacket({required int size}) = _$_SetSizePacket;
  const _SetSizePacket._() : super._();

  factory _SetSizePacket.fromJson(Map<String, dynamic> json) =
      _$_SetSizePacket.fromJson;

  @override
  int get size;
  @override
  @JsonKey(ignore: true)
  _$SetSizePacketCopyWith<_SetSizePacket> get copyWith =>
      throw _privateConstructorUsedError;
}
