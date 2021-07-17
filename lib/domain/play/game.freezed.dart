// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameTearOff {
  const _$GameTearOff();

  _Game call(
      {required UniqueId id,
      required DateTime createdAt,
      required bool online,
      required Status status,
      required Mode mode,
      required int size,
      required Type type,
      required int startingPoints,
      required KtList<Player> players}) {
    return _Game(
      id: id,
      createdAt: createdAt,
      online: online,
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
const $Game = _$GameTearOff();

/// @nodoc
mixin _$Game {
  UniqueId get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get online => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  Mode get mode => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  Type get type => throw _privateConstructorUsedError;
  int get startingPoints => throw _privateConstructorUsedError;
  KtList<Player> get players => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      DateTime createdAt,
      bool online,
      Status status,
      Mode mode,
      int size,
      Type type,
      int startingPoints,
      KtList<Player> players});
}

/// @nodoc
class _$GameCopyWithImpl<$Res> implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  final Game _value;
  // ignore: unused_field
  final $Res Function(Game) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? online = freezed,
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
      online: online == freezed
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
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
              as KtList<Player>,
    ));
  }
}

/// @nodoc
abstract class _$GameCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$GameCopyWith(_Game value, $Res Function(_Game) then) =
      __$GameCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      DateTime createdAt,
      bool online,
      Status status,
      Mode mode,
      int size,
      Type type,
      int startingPoints,
      KtList<Player> players});
}

/// @nodoc
class __$GameCopyWithImpl<$Res> extends _$GameCopyWithImpl<$Res>
    implements _$GameCopyWith<$Res> {
  __$GameCopyWithImpl(_Game _value, $Res Function(_Game) _then)
      : super(_value, (v) => _then(v as _Game));

  @override
  _Game get _value => super._value as _Game;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? online = freezed,
    Object? status = freezed,
    Object? mode = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? startingPoints = freezed,
    Object? players = freezed,
  }) {
    return _then(_Game(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      online: online == freezed
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
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
              as KtList<Player>,
    ));
  }
}

/// @nodoc

class _$_Game extends _Game {
  const _$_Game(
      {required this.id,
      required this.createdAt,
      required this.online,
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
  final bool online;
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
  final KtList<Player> players;

  @override
  String toString() {
    return 'Game(id: $id, createdAt: $createdAt, online: $online, status: $status, mode: $mode, size: $size, type: $type, startingPoints: $startingPoints, players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Game &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.online, online) ||
                const DeepCollectionEquality().equals(other.online, online)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.startingPoints, startingPoints) ||
                const DeepCollectionEquality()
                    .equals(other.startingPoints, startingPoints)) &&
            (identical(other.players, players) ||
                const DeepCollectionEquality().equals(other.players, players)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(online) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(mode) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(startingPoints) ^
      const DeepCollectionEquality().hash(players);

  @JsonKey(ignore: true)
  @override
  _$GameCopyWith<_Game> get copyWith =>
      __$GameCopyWithImpl<_Game>(this, _$identity);
}

abstract class _Game extends Game {
  const factory _Game(
      {required UniqueId id,
      required DateTime createdAt,
      required bool online,
      required Status status,
      required Mode mode,
      required int size,
      required Type type,
      required int startingPoints,
      required KtList<Player> players}) = _$_Game;
  const _Game._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  bool get online => throw _privateConstructorUsedError;
  @override
  Status get status => throw _privateConstructorUsedError;
  @override
  Mode get mode => throw _privateConstructorUsedError;
  @override
  int get size => throw _privateConstructorUsedError;
  @override
  Type get type => throw _privateConstructorUsedError;
  @override
  int get startingPoints => throw _privateConstructorUsedError;
  @override
  KtList<Player> get players => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GameCopyWith<_Game> get copyWith => throw _privateConstructorUsedError;
}
