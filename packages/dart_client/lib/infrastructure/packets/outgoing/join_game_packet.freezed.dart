// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'join_game_packet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JoinGamePacket _$JoinGamePacketFromJson(Map<String, dynamic> json) {
  return _JoinGamePacket.fromJson(json);
}

/// @nodoc
class _$JoinGamePacketTearOff {
  const _$JoinGamePacketTearOff();

  _JoinGamePacket call({required int gameCode}) {
    return _JoinGamePacket(
      gameCode: gameCode,
    );
  }

  JoinGamePacket fromJson(Map<String, Object?> json) {
    return JoinGamePacket.fromJson(json);
  }
}

/// @nodoc
const $JoinGamePacket = _$JoinGamePacketTearOff();

/// @nodoc
mixin _$JoinGamePacket {
  int get gameCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JoinGamePacketCopyWith<JoinGamePacket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinGamePacketCopyWith<$Res> {
  factory $JoinGamePacketCopyWith(
          JoinGamePacket value, $Res Function(JoinGamePacket) then) =
      _$JoinGamePacketCopyWithImpl<$Res>;
  $Res call({int gameCode});
}

/// @nodoc
class _$JoinGamePacketCopyWithImpl<$Res>
    implements $JoinGamePacketCopyWith<$Res> {
  _$JoinGamePacketCopyWithImpl(this._value, this._then);

  final JoinGamePacket _value;
  // ignore: unused_field
  final $Res Function(JoinGamePacket) _then;

  @override
  $Res call({
    Object? gameCode = freezed,
  }) {
    return _then(_value.copyWith(
      gameCode: gameCode == freezed
          ? _value.gameCode
          : gameCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$JoinGamePacketCopyWith<$Res>
    implements $JoinGamePacketCopyWith<$Res> {
  factory _$JoinGamePacketCopyWith(
          _JoinGamePacket value, $Res Function(_JoinGamePacket) then) =
      __$JoinGamePacketCopyWithImpl<$Res>;
  @override
  $Res call({int gameCode});
}

/// @nodoc
class __$JoinGamePacketCopyWithImpl<$Res>
    extends _$JoinGamePacketCopyWithImpl<$Res>
    implements _$JoinGamePacketCopyWith<$Res> {
  __$JoinGamePacketCopyWithImpl(
      _JoinGamePacket _value, $Res Function(_JoinGamePacket) _then)
      : super(_value, (v) => _then(v as _JoinGamePacket));

  @override
  _JoinGamePacket get _value => super._value as _JoinGamePacket;

  @override
  $Res call({
    Object? gameCode = freezed,
  }) {
    return _then(_JoinGamePacket(
      gameCode: gameCode == freezed
          ? _value.gameCode
          : gameCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<RequestPacket>()
class _$_JoinGamePacket extends _JoinGamePacket {
  const _$_JoinGamePacket({required this.gameCode}) : super._();

  factory _$_JoinGamePacket.fromJson(Map<String, dynamic> json) =>
      _$$_JoinGamePacketFromJson(json);

  @override
  final int gameCode;

  @override
  String toString() {
    return 'JoinGamePacket(gameCode: $gameCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JoinGamePacket &&
            const DeepCollectionEquality().equals(other.gameCode, gameCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(gameCode));

  @JsonKey(ignore: true)
  @override
  _$JoinGamePacketCopyWith<_JoinGamePacket> get copyWith =>
      __$JoinGamePacketCopyWithImpl<_JoinGamePacket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JoinGamePacketToJson(this);
  }
}

abstract class _JoinGamePacket extends JoinGamePacket implements RequestPacket {
  const factory _JoinGamePacket({required int gameCode}) = _$_JoinGamePacket;
  const _JoinGamePacket._() : super._();

  factory _JoinGamePacket.fromJson(Map<String, dynamic> json) =
      _$_JoinGamePacket.fromJson;

  @override
  int get gameCode;
  @override
  @JsonKey(ignore: true)
  _$JoinGamePacketCopyWith<_JoinGamePacket> get copyWith =>
      throw _privateConstructorUsedError;
}
