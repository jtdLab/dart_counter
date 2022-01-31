// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameSnapshotTearOff {
  const _$GameSnapshotTearOff();

  _GameSnapshot call(
      {required Status status,
      required Mode mode,
      required int size,
      required Type type,
      required int startingPoints,
      required KtList<PlayerSnapshot> players}) {
    return _GameSnapshot(
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
const $GameSnapshot = _$GameSnapshotTearOff();

/// @nodoc
mixin _$GameSnapshot {
  Status get status => throw _privateConstructorUsedError;
  Mode get mode => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  Type get type => throw _privateConstructorUsedError;
  int get startingPoints => throw _privateConstructorUsedError;
  KtList<PlayerSnapshot> get players => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameSnapshotCopyWith<GameSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameSnapshotCopyWith<$Res> {
  factory $GameSnapshotCopyWith(
          GameSnapshot value, $Res Function(GameSnapshot) then) =
      _$GameSnapshotCopyWithImpl<$Res>;
  $Res call(
      {Status status,
      Mode mode,
      int size,
      Type type,
      int startingPoints,
      KtList<PlayerSnapshot> players});
}

/// @nodoc
class _$GameSnapshotCopyWithImpl<$Res> implements $GameSnapshotCopyWith<$Res> {
  _$GameSnapshotCopyWithImpl(this._value, this._then);

  final GameSnapshot _value;
  // ignore: unused_field
  final $Res Function(GameSnapshot) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? mode = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? startingPoints = freezed,
    Object? players = freezed,
  }) {
    return _then(_value.copyWith(
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
              as KtList<PlayerSnapshot>,
    ));
  }
}

/// @nodoc
abstract class _$GameSnapshotCopyWith<$Res>
    implements $GameSnapshotCopyWith<$Res> {
  factory _$GameSnapshotCopyWith(
          _GameSnapshot value, $Res Function(_GameSnapshot) then) =
      __$GameSnapshotCopyWithImpl<$Res>;
  @override
  $Res call(
      {Status status,
      Mode mode,
      int size,
      Type type,
      int startingPoints,
      KtList<PlayerSnapshot> players});
}

/// @nodoc
class __$GameSnapshotCopyWithImpl<$Res> extends _$GameSnapshotCopyWithImpl<$Res>
    implements _$GameSnapshotCopyWith<$Res> {
  __$GameSnapshotCopyWithImpl(
      _GameSnapshot _value, $Res Function(_GameSnapshot) _then)
      : super(_value, (v) => _then(v as _GameSnapshot));

  @override
  _GameSnapshot get _value => super._value as _GameSnapshot;

  @override
  $Res call({
    Object? status = freezed,
    Object? mode = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? startingPoints = freezed,
    Object? players = freezed,
  }) {
    return _then(_GameSnapshot(
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
              as KtList<PlayerSnapshot>,
    ));
  }
}

/// @nodoc

class _$_GameSnapshot implements _GameSnapshot {
  const _$_GameSnapshot(
      {required this.status,
      required this.mode,
      required this.size,
      required this.type,
      required this.startingPoints,
      required this.players});

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
  final KtList<PlayerSnapshot> players;

  @override
  String toString() {
    return 'GameSnapshot(status: $status, mode: $mode, size: $size, type: $type, startingPoints: $startingPoints, players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameSnapshot &&
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
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(startingPoints),
      const DeepCollectionEquality().hash(players));

  @JsonKey(ignore: true)
  @override
  _$GameSnapshotCopyWith<_GameSnapshot> get copyWith =>
      __$GameSnapshotCopyWithImpl<_GameSnapshot>(this, _$identity);
}

abstract class _GameSnapshot implements GameSnapshot {
  const factory _GameSnapshot(
      {required Status status,
      required Mode mode,
      required int size,
      required Type type,
      required int startingPoints,
      required KtList<PlayerSnapshot> players}) = _$_GameSnapshot;

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
  KtList<PlayerSnapshot> get players;
  @override
  @JsonKey(ignore: true)
  _$GameSnapshotCopyWith<_GameSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}
