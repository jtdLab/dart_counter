// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'online_game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OnlineGameTearOff {
  const _$OnlineGameTearOff();

  _OnlineGame call(
      {required UniqueId id,
      required DateTime createdAt,
      required UniqueId ownerId,
      required Status status,
      required Mode mode,
      required int size,
      required Type type,
      required int startingPoints,
      required KtList<OnlinePlayer> players}) {
    return _OnlineGame(
      id: id,
      createdAt: createdAt,
      ownerId: ownerId,
      status: status,
      mode: mode,
      size: size,
      type: type,
      startingPoints: startingPoints,
      players: players,
    );
  }
}

/// @nodoc
const $OnlineGame = _$OnlineGameTearOff();

/// @nodoc
mixin _$OnlineGame {
  UniqueId get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  UniqueId get ownerId => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  Mode get mode => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  Type get type => throw _privateConstructorUsedError;
  int get startingPoints => throw _privateConstructorUsedError;
  KtList<OnlinePlayer> get players => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnlineGameCopyWith<OnlineGame> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlineGameCopyWith<$Res> {
  factory $OnlineGameCopyWith(
          OnlineGame value, $Res Function(OnlineGame) then) =
      _$OnlineGameCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      DateTime createdAt,
      UniqueId ownerId,
      Status status,
      Mode mode,
      int size,
      Type type,
      int startingPoints,
      KtList<OnlinePlayer> players});
}

/// @nodoc
class _$OnlineGameCopyWithImpl<$Res> implements $OnlineGameCopyWith<$Res> {
  _$OnlineGameCopyWithImpl(this._value, this._then);

  final OnlineGame _value;
  // ignore: unused_field
  final $Res Function(OnlineGame) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? ownerId = freezed,
    Object? status = freezed,
    Object? mode = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? startingPoints = freezed,
    Object? players = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as Mode,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
      startingPoints: startingPoints == freezed
          ? _value.startingPoints
          : startingPoints // ignore: cast_nullable_to_non_nullable
              as int,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as KtList<OnlinePlayer>,
    ));
  }
}

/// @nodoc
abstract class _$OnlineGameCopyWith<$Res> implements $OnlineGameCopyWith<$Res> {
  factory _$OnlineGameCopyWith(
          _OnlineGame value, $Res Function(_OnlineGame) then) =
      __$OnlineGameCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      DateTime createdAt,
      UniqueId ownerId,
      Status status,
      Mode mode,
      int size,
      Type type,
      int startingPoints,
      KtList<OnlinePlayer> players});
}

/// @nodoc
class __$OnlineGameCopyWithImpl<$Res> extends _$OnlineGameCopyWithImpl<$Res>
    implements _$OnlineGameCopyWith<$Res> {
  __$OnlineGameCopyWithImpl(
      _OnlineGame _value, $Res Function(_OnlineGame) _then)
      : super(_value, (v) => _then(v as _OnlineGame));

  @override
  _OnlineGame get _value => super._value as _OnlineGame;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? ownerId = freezed,
    Object? status = freezed,
    Object? mode = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? startingPoints = freezed,
    Object? players = freezed,
  }) {
    return _then(_OnlineGame(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as Mode,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
      startingPoints: startingPoints == freezed
          ? _value.startingPoints
          : startingPoints // ignore: cast_nullable_to_non_nullable
              as int,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as KtList<OnlinePlayer>,
    ));
  }
}

/// @nodoc

@Implements<AbstractGame>()
class _$_OnlineGame extends _OnlineGame {
  const _$_OnlineGame(
      {required this.id,
      required this.createdAt,
      required this.ownerId,
      required this.status,
      required this.mode,
      required this.size,
      required this.type,
      required this.startingPoints,
      required this.players})
      : super._();

  @override
  final UniqueId id;
  @override
  final DateTime createdAt;
  @override
  final UniqueId ownerId;
  @override
  final Status status;
  @override
  final Mode mode;
  @override
  final int size;
  @override
  final Type type;
  @override
  final int startingPoints;
  @override
  final KtList<OnlinePlayer> players;

  @override
  String toString() {
    return 'OnlineGame(id: $id, createdAt: $createdAt, ownerId: $ownerId, status: $status, mode: $mode, size: $size, type: $type, startingPoints: $startingPoints, players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnlineGame &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.startingPoints, startingPoints) &&
            const DeepCollectionEquality().equals(other.players, players));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(startingPoints),
      const DeepCollectionEquality().hash(players));

  @JsonKey(ignore: true)
  @override
  _$OnlineGameCopyWith<_OnlineGame> get copyWith =>
      __$OnlineGameCopyWithImpl<_OnlineGame>(this, _$identity);
}

abstract class _OnlineGame extends OnlineGame implements AbstractGame {
  const factory _OnlineGame(
      {required UniqueId id,
      required DateTime createdAt,
      required UniqueId ownerId,
      required Status status,
      required Mode mode,
      required int size,
      required Type type,
      required int startingPoints,
      required KtList<OnlinePlayer> players}) = _$_OnlineGame;
  const _OnlineGame._() : super._();

  @override
  UniqueId get id;
  @override
  DateTime get createdAt;
  @override
  UniqueId get ownerId;
  @override
  Status get status;
  @override
  Mode get mode;
  @override
  int get size;
  @override
  Type get type;
  @override
  int get startingPoints;
  @override
  KtList<OnlinePlayer> get players;
  @override
  @JsonKey(ignore: true)
  _$OnlineGameCopyWith<_OnlineGame> get copyWith =>
      throw _privateConstructorUsedError;
}
