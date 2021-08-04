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
class _$OfflineGameTearOff {
  const _$OfflineGameTearOff();

  _OfflineGame call(
      {required UniqueId id,
      required DateTime createdAt,
      required Status status,
      required Mode mode,
      required int size,
      required Type type,
      required int startingPoints,
      required KtList<AbstractOfflinePlayer> players}) {
    return _OfflineGame(
      id: id,
      createdAt: createdAt,
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
const $OfflineGame = _$OfflineGameTearOff();

/// @nodoc
mixin _$OfflineGame {
  UniqueId get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  Mode get mode => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  Type get type => throw _privateConstructorUsedError;
  int get startingPoints => throw _privateConstructorUsedError;
  KtList<AbstractOfflinePlayer> get players =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OfflineGameCopyWith<OfflineGame> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflineGameCopyWith<$Res> {
  factory $OfflineGameCopyWith(
          OfflineGame value, $Res Function(OfflineGame) then) =
      _$OfflineGameCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      DateTime createdAt,
      Status status,
      Mode mode,
      int size,
      Type type,
      int startingPoints,
      KtList<AbstractOfflinePlayer> players});
}

/// @nodoc
class _$OfflineGameCopyWithImpl<$Res> implements $OfflineGameCopyWith<$Res> {
  _$OfflineGameCopyWithImpl(this._value, this._then);

  final OfflineGame _value;
  // ignore: unused_field
  final $Res Function(OfflineGame) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
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
              as KtList<AbstractOfflinePlayer>,
    ));
  }
}

/// @nodoc
abstract class _$OfflineGameCopyWith<$Res>
    implements $OfflineGameCopyWith<$Res> {
  factory _$OfflineGameCopyWith(
          _OfflineGame value, $Res Function(_OfflineGame) then) =
      __$OfflineGameCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      DateTime createdAt,
      Status status,
      Mode mode,
      int size,
      Type type,
      int startingPoints,
      KtList<AbstractOfflinePlayer> players});
}

/// @nodoc
class __$OfflineGameCopyWithImpl<$Res> extends _$OfflineGameCopyWithImpl<$Res>
    implements _$OfflineGameCopyWith<$Res> {
  __$OfflineGameCopyWithImpl(
      _OfflineGame _value, $Res Function(_OfflineGame) _then)
      : super(_value, (v) => _then(v as _OfflineGame));

  @override
  _OfflineGame get _value => super._value as _OfflineGame;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? status = freezed,
    Object? mode = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? startingPoints = freezed,
    Object? players = freezed,
  }) {
    return _then(_OfflineGame(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
              as KtList<AbstractOfflinePlayer>,
    ));
  }
}

/// @nodoc

@Implements(Game)
class _$_OfflineGame extends _OfflineGame {
  const _$_OfflineGame(
      {required this.id,
      required this.createdAt,
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
  final KtList<AbstractOfflinePlayer> players;

  @override
  String toString() {
    return 'OfflineGame(id: $id, createdAt: $createdAt, status: $status, mode: $mode, size: $size, type: $type, startingPoints: $startingPoints, players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OfflineGame &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
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
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(mode) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(startingPoints) ^
      const DeepCollectionEquality().hash(players);

  @JsonKey(ignore: true)
  @override
  _$OfflineGameCopyWith<_OfflineGame> get copyWith =>
      __$OfflineGameCopyWithImpl<_OfflineGame>(this, _$identity);
}

abstract class _OfflineGame extends OfflineGame implements Game {
  const factory _OfflineGame(
      {required UniqueId id,
      required DateTime createdAt,
      required Status status,
      required Mode mode,
      required int size,
      required Type type,
      required int startingPoints,
      required KtList<AbstractOfflinePlayer> players}) = _$_OfflineGame;
  const _OfflineGame._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
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
  KtList<AbstractOfflinePlayer> get players =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OfflineGameCopyWith<_OfflineGame> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OnlineGameTearOff {
  const _$OnlineGameTearOff();

  _OnlineGame call(
      {required UniqueId id,
      required DateTime createdAt,
      required Status status,
      required Mode mode,
      required int size,
      required Type type,
      required int startingPoints,
      required KtList<OnlinePlayer> players}) {
    return _OnlineGame(
      id: id,
      createdAt: createdAt,
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

@Implements(Game)
class _$_OnlineGame extends _OnlineGame {
  const _$_OnlineGame(
      {required this.id,
      required this.createdAt,
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
    return 'OnlineGame(id: $id, createdAt: $createdAt, status: $status, mode: $mode, size: $size, type: $type, startingPoints: $startingPoints, players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnlineGame &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
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
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(mode) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(startingPoints) ^
      const DeepCollectionEquality().hash(players);

  @JsonKey(ignore: true)
  @override
  _$OnlineGameCopyWith<_OnlineGame> get copyWith =>
      __$OnlineGameCopyWithImpl<_OnlineGame>(this, _$identity);
}

abstract class _OnlineGame extends OnlineGame implements Game {
  const factory _OnlineGame(
      {required UniqueId id,
      required DateTime createdAt,
      required Status status,
      required Mode mode,
      required int size,
      required Type type,
      required int startingPoints,
      required KtList<OnlinePlayer> players}) = _$_OnlineGame;
  const _OnlineGame._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
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
  KtList<OnlinePlayer> get players => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OnlineGameCopyWith<_OnlineGame> get copyWith =>
      throw _privateConstructorUsedError;
}
