// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_joined_packet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayerJoinedPacket _$PlayerJoinedPacketFromJson(Map<String, dynamic> json) {
  return _PlayerJoinedPacket.fromJson(json);
}

/// @nodoc
class _$PlayerJoinedPacketTearOff {
  const _$PlayerJoinedPacketTearOff();

  _PlayerJoinedPacket call({required String username}) {
    return _PlayerJoinedPacket(
      username: username,
    );
  }

  PlayerJoinedPacket fromJson(Map<String, Object?> json) {
    return PlayerJoinedPacket.fromJson(json);
  }
}

/// @nodoc
const $PlayerJoinedPacket = _$PlayerJoinedPacketTearOff();

/// @nodoc
mixin _$PlayerJoinedPacket {
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerJoinedPacketCopyWith<PlayerJoinedPacket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerJoinedPacketCopyWith<$Res> {
  factory $PlayerJoinedPacketCopyWith(
          PlayerJoinedPacket value, $Res Function(PlayerJoinedPacket) then) =
      _$PlayerJoinedPacketCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class _$PlayerJoinedPacketCopyWithImpl<$Res>
    implements $PlayerJoinedPacketCopyWith<$Res> {
  _$PlayerJoinedPacketCopyWithImpl(this._value, this._then);

  final PlayerJoinedPacket _value;
  // ignore: unused_field
  final $Res Function(PlayerJoinedPacket) _then;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PlayerJoinedPacketCopyWith<$Res>
    implements $PlayerJoinedPacketCopyWith<$Res> {
  factory _$PlayerJoinedPacketCopyWith(
          _PlayerJoinedPacket value, $Res Function(_PlayerJoinedPacket) then) =
      __$PlayerJoinedPacketCopyWithImpl<$Res>;
  @override
  $Res call({String username});
}

/// @nodoc
class __$PlayerJoinedPacketCopyWithImpl<$Res>
    extends _$PlayerJoinedPacketCopyWithImpl<$Res>
    implements _$PlayerJoinedPacketCopyWith<$Res> {
  __$PlayerJoinedPacketCopyWithImpl(
      _PlayerJoinedPacket _value, $Res Function(_PlayerJoinedPacket) _then)
      : super(_value, (v) => _then(v as _PlayerJoinedPacket));

  @override
  _PlayerJoinedPacket get _value => super._value as _PlayerJoinedPacket;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_PlayerJoinedPacket(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<ResponsePacket>()
class _$_PlayerJoinedPacket extends _PlayerJoinedPacket {
  const _$_PlayerJoinedPacket({required this.username}) : super._();

  factory _$_PlayerJoinedPacket.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerJoinedPacketFromJson(json);

  @override
  final String username;

  @override
  String toString() {
    return 'PlayerJoinedPacket(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlayerJoinedPacket &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$PlayerJoinedPacketCopyWith<_PlayerJoinedPacket> get copyWith =>
      __$PlayerJoinedPacketCopyWithImpl<_PlayerJoinedPacket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerJoinedPacketToJson(this);
  }
}

abstract class _PlayerJoinedPacket extends PlayerJoinedPacket
    implements ResponsePacket {
  const factory _PlayerJoinedPacket({required String username}) =
      _$_PlayerJoinedPacket;
  const _PlayerJoinedPacket._() : super._();

  factory _PlayerJoinedPacket.fromJson(Map<String, dynamic> json) =
      _$_PlayerJoinedPacket.fromJson;

  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$PlayerJoinedPacketCopyWith<_PlayerJoinedPacket> get copyWith =>
      throw _privateConstructorUsedError;
}
