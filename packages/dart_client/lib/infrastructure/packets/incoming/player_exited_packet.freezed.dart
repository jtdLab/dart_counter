// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_exited_packet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayerExitedPacket _$PlayerExitedPacketFromJson(Map<String, dynamic> json) {
  return _PlayerExitedPacket.fromJson(json);
}

/// @nodoc
class _$PlayerExitedPacketTearOff {
  const _$PlayerExitedPacketTearOff();

  _PlayerExitedPacket call({required String username}) {
    return _PlayerExitedPacket(
      username: username,
    );
  }

  PlayerExitedPacket fromJson(Map<String, Object?> json) {
    return PlayerExitedPacket.fromJson(json);
  }
}

/// @nodoc
const $PlayerExitedPacket = _$PlayerExitedPacketTearOff();

/// @nodoc
mixin _$PlayerExitedPacket {
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerExitedPacketCopyWith<PlayerExitedPacket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerExitedPacketCopyWith<$Res> {
  factory $PlayerExitedPacketCopyWith(
          PlayerExitedPacket value, $Res Function(PlayerExitedPacket) then) =
      _$PlayerExitedPacketCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class _$PlayerExitedPacketCopyWithImpl<$Res>
    implements $PlayerExitedPacketCopyWith<$Res> {
  _$PlayerExitedPacketCopyWithImpl(this._value, this._then);

  final PlayerExitedPacket _value;
  // ignore: unused_field
  final $Res Function(PlayerExitedPacket) _then;

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
abstract class _$PlayerExitedPacketCopyWith<$Res>
    implements $PlayerExitedPacketCopyWith<$Res> {
  factory _$PlayerExitedPacketCopyWith(
          _PlayerExitedPacket value, $Res Function(_PlayerExitedPacket) then) =
      __$PlayerExitedPacketCopyWithImpl<$Res>;
  @override
  $Res call({String username});
}

/// @nodoc
class __$PlayerExitedPacketCopyWithImpl<$Res>
    extends _$PlayerExitedPacketCopyWithImpl<$Res>
    implements _$PlayerExitedPacketCopyWith<$Res> {
  __$PlayerExitedPacketCopyWithImpl(
      _PlayerExitedPacket _value, $Res Function(_PlayerExitedPacket) _then)
      : super(_value, (v) => _then(v as _PlayerExitedPacket));

  @override
  _PlayerExitedPacket get _value => super._value as _PlayerExitedPacket;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_PlayerExitedPacket(
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
class _$_PlayerExitedPacket extends _PlayerExitedPacket {
  const _$_PlayerExitedPacket({required this.username}) : super._();

  factory _$_PlayerExitedPacket.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerExitedPacketFromJson(json);

  @override
  final String username;

  @override
  String toString() {
    return 'PlayerExitedPacket(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlayerExitedPacket &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  _$PlayerExitedPacketCopyWith<_PlayerExitedPacket> get copyWith =>
      __$PlayerExitedPacketCopyWithImpl<_PlayerExitedPacket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerExitedPacketToJson(this);
  }
}

abstract class _PlayerExitedPacket extends PlayerExitedPacket
    implements ResponsePacket {
  const factory _PlayerExitedPacket({required String username}) =
      _$_PlayerExitedPacket;
  const _PlayerExitedPacket._() : super._();

  factory _PlayerExitedPacket.fromJson(Map<String, dynamic> json) =
      _$_PlayerExitedPacket.fromJson;

  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$PlayerExitedPacketCopyWith<_PlayerExitedPacket> get copyWith =>
      throw _privateConstructorUsedError;
}
