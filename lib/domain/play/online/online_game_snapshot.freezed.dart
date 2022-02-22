// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'online_game_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OnlineGameSnapshotTearOff {
  const _$OnlineGameSnapshotTearOff();

  _OnlineGameSnapshot call(
      {required Status status,
      required Mode mode,
      required int size,
      required Type type,
      required int startingPoints,
      required KtList<OnlinePlayerSnapshot> players}) {
    return _OnlineGameSnapshot(
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
const $OnlineGameSnapshot = _$OnlineGameSnapshotTearOff();

/// @nodoc
mixin _$OnlineGameSnapshot {
  Status get status => throw _privateConstructorUsedError;
  Mode get mode => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  Type get type => throw _privateConstructorUsedError;
  int get startingPoints => throw _privateConstructorUsedError;
  KtList<OnlinePlayerSnapshot> get players =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnlineGameSnapshotCopyWith<OnlineGameSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlineGameSnapshotCopyWith<$Res> {
  factory $OnlineGameSnapshotCopyWith(
          OnlineGameSnapshot value, $Res Function(OnlineGameSnapshot) then) =
      _$OnlineGameSnapshotCopyWithImpl<$Res>;
  $Res call(
      {Status status,
      Mode mode,
      int size,
      Type type,
      int startingPoints,
      KtList<OnlinePlayerSnapshot> players});
}

/// @nodoc
class _$OnlineGameSnapshotCopyWithImpl<$Res>
    implements $OnlineGameSnapshotCopyWith<$Res> {
  _$OnlineGameSnapshotCopyWithImpl(this._value, this._then);

  final OnlineGameSnapshot _value;
  // ignore: unused_field
  final $Res Function(OnlineGameSnapshot) _then;

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
              as KtList<OnlinePlayerSnapshot>,
    ));
  }
}

/// @nodoc
abstract class _$OnlineGameSnapshotCopyWith<$Res>
    implements $OnlineGameSnapshotCopyWith<$Res> {
  factory _$OnlineGameSnapshotCopyWith(
          _OnlineGameSnapshot value, $Res Function(_OnlineGameSnapshot) then) =
      __$OnlineGameSnapshotCopyWithImpl<$Res>;
  @override
  $Res call(
      {Status status,
      Mode mode,
      int size,
      Type type,
      int startingPoints,
      KtList<OnlinePlayerSnapshot> players});
}

/// @nodoc
class __$OnlineGameSnapshotCopyWithImpl<$Res>
    extends _$OnlineGameSnapshotCopyWithImpl<$Res>
    implements _$OnlineGameSnapshotCopyWith<$Res> {
  __$OnlineGameSnapshotCopyWithImpl(
      _OnlineGameSnapshot _value, $Res Function(_OnlineGameSnapshot) _then)
      : super(_value, (v) => _then(v as _OnlineGameSnapshot));

  @override
  _OnlineGameSnapshot get _value => super._value as _OnlineGameSnapshot;

  @override
  $Res call({
    Object? status = freezed,
    Object? mode = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? startingPoints = freezed,
    Object? players = freezed,
  }) {
    return _then(_OnlineGameSnapshot(
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
              as KtList<OnlinePlayerSnapshot>,
    ));
  }
}

/// @nodoc

@Implements<AbstractGameSnapshot>()
class _$_OnlineGameSnapshot extends _OnlineGameSnapshot {
  const _$_OnlineGameSnapshot(
      {required this.status,
      required this.mode,
      required this.size,
      required this.type,
      required this.startingPoints,
      required this.players})
      : super._();

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
  final KtList<OnlinePlayerSnapshot> players;

  @override
  String toString() {
    return 'OnlineGameSnapshot(status: $status, mode: $mode, size: $size, type: $type, startingPoints: $startingPoints, players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnlineGameSnapshot &&
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
  _$OnlineGameSnapshotCopyWith<_OnlineGameSnapshot> get copyWith =>
      __$OnlineGameSnapshotCopyWithImpl<_OnlineGameSnapshot>(this, _$identity);
}

abstract class _OnlineGameSnapshot extends OnlineGameSnapshot
    implements AbstractGameSnapshot {
  const factory _OnlineGameSnapshot(
      {required Status status,
      required Mode mode,
      required int size,
      required Type type,
      required int startingPoints,
      required KtList<OnlinePlayerSnapshot> players}) = _$_OnlineGameSnapshot;
  const _OnlineGameSnapshot._() : super._();

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
  KtList<OnlinePlayerSnapshot> get players;
  @override
  @JsonKey(ignore: true)
  _$OnlineGameSnapshotCopyWith<_OnlineGameSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}
