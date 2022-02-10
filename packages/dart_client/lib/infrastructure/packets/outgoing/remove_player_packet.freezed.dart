// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'remove_player_packet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemovePlayerPacket _$RemovePlayerPacketFromJson(Map<String, dynamic> json) {
  return _RemovePlayerPacket.fromJson(json);
}

/// @nodoc
class _$RemovePlayerPacketTearOff {
  const _$RemovePlayerPacketTearOff();

  _RemovePlayerPacket call({required int index}) {
    return _RemovePlayerPacket(
      index: index,
    );
  }

  RemovePlayerPacket fromJson(Map<String, Object?> json) {
    return RemovePlayerPacket.fromJson(json);
  }
}

/// @nodoc
const $RemovePlayerPacket = _$RemovePlayerPacketTearOff();

/// @nodoc
mixin _$RemovePlayerPacket {
  int get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemovePlayerPacketCopyWith<RemovePlayerPacket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemovePlayerPacketCopyWith<$Res> {
  factory $RemovePlayerPacketCopyWith(
          RemovePlayerPacket value, $Res Function(RemovePlayerPacket) then) =
      _$RemovePlayerPacketCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$RemovePlayerPacketCopyWithImpl<$Res>
    implements $RemovePlayerPacketCopyWith<$Res> {
  _$RemovePlayerPacketCopyWithImpl(this._value, this._then);

  final RemovePlayerPacket _value;
  // ignore: unused_field
  final $Res Function(RemovePlayerPacket) _then;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RemovePlayerPacketCopyWith<$Res>
    implements $RemovePlayerPacketCopyWith<$Res> {
  factory _$RemovePlayerPacketCopyWith(
          _RemovePlayerPacket value, $Res Function(_RemovePlayerPacket) then) =
      __$RemovePlayerPacketCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

/// @nodoc
class __$RemovePlayerPacketCopyWithImpl<$Res>
    extends _$RemovePlayerPacketCopyWithImpl<$Res>
    implements _$RemovePlayerPacketCopyWith<$Res> {
  __$RemovePlayerPacketCopyWithImpl(
      _RemovePlayerPacket _value, $Res Function(_RemovePlayerPacket) _then)
      : super(_value, (v) => _then(v as _RemovePlayerPacket));

  @override
  _RemovePlayerPacket get _value => super._value as _RemovePlayerPacket;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_RemovePlayerPacket(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<RequestPacket>()
class _$_RemovePlayerPacket extends _RemovePlayerPacket {
  const _$_RemovePlayerPacket({required this.index}) : super._();

  factory _$_RemovePlayerPacket.fromJson(Map<String, dynamic> json) =>
      _$$_RemovePlayerPacketFromJson(json);

  @override
  final int index;

  @override
  String toString() {
    return 'RemovePlayerPacket(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemovePlayerPacket &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$RemovePlayerPacketCopyWith<_RemovePlayerPacket> get copyWith =>
      __$RemovePlayerPacketCopyWithImpl<_RemovePlayerPacket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemovePlayerPacketToJson(this);
  }
}

abstract class _RemovePlayerPacket extends RemovePlayerPacket
    implements RequestPacket {
  const factory _RemovePlayerPacket({required int index}) =
      _$_RemovePlayerPacket;
  const _RemovePlayerPacket._() : super._();

  factory _RemovePlayerPacket.fromJson(Map<String, dynamic> json) =
      _$_RemovePlayerPacket.fromJson;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$RemovePlayerPacketCopyWith<_RemovePlayerPacket> get copyWith =>
      throw _privateConstructorUsedError;
}
