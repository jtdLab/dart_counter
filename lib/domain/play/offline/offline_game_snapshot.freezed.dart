// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'offline_game_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OfflineGameSnapshotTearOff {
  const _$OfflineGameSnapshotTearOff();

  _OfflineGameSnapshot call(
      {required Status status,
      required Mode mode,
      required int size,
      required Type type,
      required int startingPoints,
      required KtList<AbstractOfflinePlayerSnapshot> players}) {
    return _OfflineGameSnapshot(
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
const $OfflineGameSnapshot = _$OfflineGameSnapshotTearOff();

/// @nodoc
mixin _$OfflineGameSnapshot {
  Status get status => throw _privateConstructorUsedError;
  Mode get mode => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  Type get type => throw _privateConstructorUsedError;
  int get startingPoints => throw _privateConstructorUsedError;
  KtList<AbstractOfflinePlayerSnapshot> get players =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OfflineGameSnapshotCopyWith<OfflineGameSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflineGameSnapshotCopyWith<$Res> {
  factory $OfflineGameSnapshotCopyWith(
          OfflineGameSnapshot value, $Res Function(OfflineGameSnapshot) then) =
      _$OfflineGameSnapshotCopyWithImpl<$Res>;
  $Res call(
      {Status status,
      Mode mode,
      int size,
      Type type,
      int startingPoints,
      KtList<AbstractOfflinePlayerSnapshot> players});
}

/// @nodoc
class _$OfflineGameSnapshotCopyWithImpl<$Res>
    implements $OfflineGameSnapshotCopyWith<$Res> {
  _$OfflineGameSnapshotCopyWithImpl(this._value, this._then);

  final OfflineGameSnapshot _value;
  // ignore: unused_field
  final $Res Function(OfflineGameSnapshot) _then;

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
              as KtList<AbstractOfflinePlayerSnapshot>,
    ));
  }
}

/// @nodoc
abstract class _$OfflineGameSnapshotCopyWith<$Res>
    implements $OfflineGameSnapshotCopyWith<$Res> {
  factory _$OfflineGameSnapshotCopyWith(_OfflineGameSnapshot value,
          $Res Function(_OfflineGameSnapshot) then) =
      __$OfflineGameSnapshotCopyWithImpl<$Res>;
  @override
  $Res call(
      {Status status,
      Mode mode,
      int size,
      Type type,
      int startingPoints,
      KtList<AbstractOfflinePlayerSnapshot> players});
}

/// @nodoc
class __$OfflineGameSnapshotCopyWithImpl<$Res>
    extends _$OfflineGameSnapshotCopyWithImpl<$Res>
    implements _$OfflineGameSnapshotCopyWith<$Res> {
  __$OfflineGameSnapshotCopyWithImpl(
      _OfflineGameSnapshot _value, $Res Function(_OfflineGameSnapshot) _then)
      : super(_value, (v) => _then(v as _OfflineGameSnapshot));

  @override
  _OfflineGameSnapshot get _value => super._value as _OfflineGameSnapshot;

  @override
  $Res call({
    Object? status = freezed,
    Object? mode = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? startingPoints = freezed,
    Object? players = freezed,
  }) {
    return _then(_OfflineGameSnapshot(
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
              as KtList<AbstractOfflinePlayerSnapshot>,
    ));
  }
}

/// @nodoc

@Implements<AbstractGameSnapshot>()
class _$_OfflineGameSnapshot extends _OfflineGameSnapshot {
  const _$_OfflineGameSnapshot(
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
  final KtList<AbstractOfflinePlayerSnapshot> players;

  @override
  String toString() {
    return 'OfflineGameSnapshot(status: $status, mode: $mode, size: $size, type: $type, startingPoints: $startingPoints, players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OfflineGameSnapshot &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.startingPoints, startingPoints) ||
                other.startingPoints == startingPoints) &&
            (identical(other.players, players) || other.players == players));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, mode, size, type, startingPoints, players);

  @JsonKey(ignore: true)
  @override
  _$OfflineGameSnapshotCopyWith<_OfflineGameSnapshot> get copyWith =>
      __$OfflineGameSnapshotCopyWithImpl<_OfflineGameSnapshot>(
          this, _$identity);
}

abstract class _OfflineGameSnapshot extends OfflineGameSnapshot
    implements AbstractGameSnapshot {
  const factory _OfflineGameSnapshot(
          {required Status status,
          required Mode mode,
          required int size,
          required Type type,
          required int startingPoints,
          required KtList<AbstractOfflinePlayerSnapshot> players}) =
      _$_OfflineGameSnapshot;
  const _OfflineGameSnapshot._() : super._();

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
  KtList<AbstractOfflinePlayerSnapshot> get players;
  @override
  @JsonKey(ignore: true)
  _$OfflineGameSnapshotCopyWith<_OfflineGameSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}
