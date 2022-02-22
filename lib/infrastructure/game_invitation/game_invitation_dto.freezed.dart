// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_invitation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameInvitationDto _$GameInvitationDtoFromJson(Map<String, dynamic> json) {
  return _GameInvitationDto.fromJson(json);
}

/// @nodoc
class _$GameInvitationDtoTearOff {
  const _$GameInvitationDtoTearOff();

  _GameInvitationDto call(
      {required String id,
      required String gameId,
      required String toId,
      required String fromId,
      required String fromName,
      required bool read,
      required int createdAt}) {
    return _GameInvitationDto(
      id: id,
      gameId: gameId,
      toId: toId,
      fromId: fromId,
      fromName: fromName,
      read: read,
      createdAt: createdAt,
    );
  }

  GameInvitationDto fromJson(Map<String, Object?> json) {
    return GameInvitationDto.fromJson(json);
  }
}

/// @nodoc
const $GameInvitationDto = _$GameInvitationDtoTearOff();

/// @nodoc
mixin _$GameInvitationDto {
  String get id => throw _privateConstructorUsedError;
  String get gameId => throw _privateConstructorUsedError;
  String get toId => throw _privateConstructorUsedError;
  String get fromId => throw _privateConstructorUsedError;
  String get fromName => throw _privateConstructorUsedError;
  bool get read => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameInvitationDtoCopyWith<GameInvitationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameInvitationDtoCopyWith<$Res> {
  factory $GameInvitationDtoCopyWith(
          GameInvitationDto value, $Res Function(GameInvitationDto) then) =
      _$GameInvitationDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String gameId,
      String toId,
      String fromId,
      String fromName,
      bool read,
      int createdAt});
}

/// @nodoc
class _$GameInvitationDtoCopyWithImpl<$Res>
    implements $GameInvitationDtoCopyWith<$Res> {
  _$GameInvitationDtoCopyWithImpl(this._value, this._then);

  final GameInvitationDto _value;
  // ignore: unused_field
  final $Res Function(GameInvitationDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? gameId = freezed,
    Object? toId = freezed,
    Object? fromId = freezed,
    Object? fromName = freezed,
    Object? read = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      gameId: gameId == freezed
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      toId: toId == freezed
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String,
      fromId: fromId == freezed
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String,
      fromName: fromName == freezed
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String,
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$GameInvitationDtoCopyWith<$Res>
    implements $GameInvitationDtoCopyWith<$Res> {
  factory _$GameInvitationDtoCopyWith(
          _GameInvitationDto value, $Res Function(_GameInvitationDto) then) =
      __$GameInvitationDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String gameId,
      String toId,
      String fromId,
      String fromName,
      bool read,
      int createdAt});
}

/// @nodoc
class __$GameInvitationDtoCopyWithImpl<$Res>
    extends _$GameInvitationDtoCopyWithImpl<$Res>
    implements _$GameInvitationDtoCopyWith<$Res> {
  __$GameInvitationDtoCopyWithImpl(
      _GameInvitationDto _value, $Res Function(_GameInvitationDto) _then)
      : super(_value, (v) => _then(v as _GameInvitationDto));

  @override
  _GameInvitationDto get _value => super._value as _GameInvitationDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? gameId = freezed,
    Object? toId = freezed,
    Object? fromId = freezed,
    Object? fromName = freezed,
    Object? read = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_GameInvitationDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      gameId: gameId == freezed
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      toId: toId == freezed
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String,
      fromId: fromId == freezed
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String,
      fromName: fromName == freezed
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String,
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameInvitationDto extends _GameInvitationDto {
  const _$_GameInvitationDto(
      {required this.id,
      required this.gameId,
      required this.toId,
      required this.fromId,
      required this.fromName,
      required this.read,
      required this.createdAt})
      : super._();

  factory _$_GameInvitationDto.fromJson(Map<String, dynamic> json) =>
      _$$_GameInvitationDtoFromJson(json);

  @override
  final String id;
  @override
  final String gameId;
  @override
  final String toId;
  @override
  final String fromId;
  @override
  final String fromName;
  @override
  final bool read;
  @override
  final int createdAt;

  @override
  String toString() {
    return 'GameInvitationDto(id: $id, gameId: $gameId, toId: $toId, fromId: $fromId, fromName: $fromName, read: $read, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameInvitationDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.gameId, gameId) &&
            const DeepCollectionEquality().equals(other.toId, toId) &&
            const DeepCollectionEquality().equals(other.fromId, fromId) &&
            const DeepCollectionEquality().equals(other.fromName, fromName) &&
            const DeepCollectionEquality().equals(other.read, read) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(gameId),
      const DeepCollectionEquality().hash(toId),
      const DeepCollectionEquality().hash(fromId),
      const DeepCollectionEquality().hash(fromName),
      const DeepCollectionEquality().hash(read),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$GameInvitationDtoCopyWith<_GameInvitationDto> get copyWith =>
      __$GameInvitationDtoCopyWithImpl<_GameInvitationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameInvitationDtoToJson(this);
  }
}

abstract class _GameInvitationDto extends GameInvitationDto {
  const factory _GameInvitationDto(
      {required String id,
      required String gameId,
      required String toId,
      required String fromId,
      required String fromName,
      required bool read,
      required int createdAt}) = _$_GameInvitationDto;
  const _GameInvitationDto._() : super._();

  factory _GameInvitationDto.fromJson(Map<String, dynamic> json) =
      _$_GameInvitationDto.fromJson;

  @override
  String get id;
  @override
  String get gameId;
  @override
  String get toId;
  @override
  String get fromId;
  @override
  String get fromName;
  @override
  bool get read;
  @override
  int get createdAt;
  @override
  @JsonKey(ignore: true)
  _$GameInvitationDtoCopyWith<_GameInvitationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
