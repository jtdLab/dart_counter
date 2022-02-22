// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'score_training_game_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScoreTrainingGameSnapshotTearOff {
  const _$ScoreTrainingGameSnapshotTearOff();

  _ScoreTrainingGameSnapshot call(
      {required Status status,
      required int numberOfTakes,
      required KtList<ScoreTrainingPlayerSnapshot> players,
      required ScoreTrainingPlayerSnapshot owner}) {
    return _ScoreTrainingGameSnapshot(
      status: status,
      numberOfTakes: numberOfTakes,
      players: players,
      owner: owner,
    );
  }
}

/// @nodoc
const $ScoreTrainingGameSnapshot = _$ScoreTrainingGameSnapshotTearOff();

/// @nodoc
mixin _$ScoreTrainingGameSnapshot {
  Status get status => throw _privateConstructorUsedError;
  int get numberOfTakes => throw _privateConstructorUsedError;
  KtList<ScoreTrainingPlayerSnapshot> get players =>
      throw _privateConstructorUsedError;
  ScoreTrainingPlayerSnapshot get owner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScoreTrainingGameSnapshotCopyWith<ScoreTrainingGameSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreTrainingGameSnapshotCopyWith<$Res> {
  factory $ScoreTrainingGameSnapshotCopyWith(ScoreTrainingGameSnapshot value,
          $Res Function(ScoreTrainingGameSnapshot) then) =
      _$ScoreTrainingGameSnapshotCopyWithImpl<$Res>;
  $Res call(
      {Status status,
      int numberOfTakes,
      KtList<ScoreTrainingPlayerSnapshot> players,
      ScoreTrainingPlayerSnapshot owner});

  $ScoreTrainingPlayerSnapshotCopyWith<$Res> get owner;
}

/// @nodoc
class _$ScoreTrainingGameSnapshotCopyWithImpl<$Res>
    implements $ScoreTrainingGameSnapshotCopyWith<$Res> {
  _$ScoreTrainingGameSnapshotCopyWithImpl(this._value, this._then);

  final ScoreTrainingGameSnapshot _value;
  // ignore: unused_field
  final $Res Function(ScoreTrainingGameSnapshot) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? numberOfTakes = freezed,
    Object? players = freezed,
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      numberOfTakes: numberOfTakes == freezed
          ? _value.numberOfTakes
          : numberOfTakes // ignore: cast_nullable_to_non_nullable
              as int,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as KtList<ScoreTrainingPlayerSnapshot>,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ScoreTrainingPlayerSnapshot,
    ));
  }

  @override
  $ScoreTrainingPlayerSnapshotCopyWith<$Res> get owner {
    return $ScoreTrainingPlayerSnapshotCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$ScoreTrainingGameSnapshotCopyWith<$Res>
    implements $ScoreTrainingGameSnapshotCopyWith<$Res> {
  factory _$ScoreTrainingGameSnapshotCopyWith(_ScoreTrainingGameSnapshot value,
          $Res Function(_ScoreTrainingGameSnapshot) then) =
      __$ScoreTrainingGameSnapshotCopyWithImpl<$Res>;
  @override
  $Res call(
      {Status status,
      int numberOfTakes,
      KtList<ScoreTrainingPlayerSnapshot> players,
      ScoreTrainingPlayerSnapshot owner});

  @override
  $ScoreTrainingPlayerSnapshotCopyWith<$Res> get owner;
}

/// @nodoc
class __$ScoreTrainingGameSnapshotCopyWithImpl<$Res>
    extends _$ScoreTrainingGameSnapshotCopyWithImpl<$Res>
    implements _$ScoreTrainingGameSnapshotCopyWith<$Res> {
  __$ScoreTrainingGameSnapshotCopyWithImpl(_ScoreTrainingGameSnapshot _value,
      $Res Function(_ScoreTrainingGameSnapshot) _then)
      : super(_value, (v) => _then(v as _ScoreTrainingGameSnapshot));

  @override
  _ScoreTrainingGameSnapshot get _value =>
      super._value as _ScoreTrainingGameSnapshot;

  @override
  $Res call({
    Object? status = freezed,
    Object? numberOfTakes = freezed,
    Object? players = freezed,
    Object? owner = freezed,
  }) {
    return _then(_ScoreTrainingGameSnapshot(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      numberOfTakes: numberOfTakes == freezed
          ? _value.numberOfTakes
          : numberOfTakes // ignore: cast_nullable_to_non_nullable
              as int,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as KtList<ScoreTrainingPlayerSnapshot>,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ScoreTrainingPlayerSnapshot,
    ));
  }
}

/// @nodoc

@Implements<AbstractTrainingGameSnapshot>()
class _$_ScoreTrainingGameSnapshot extends _ScoreTrainingGameSnapshot {
  const _$_ScoreTrainingGameSnapshot(
      {required this.status,
      required this.numberOfTakes,
      required this.players,
      required this.owner})
      : super._();

  @override
  final Status status;
  @override
  final int numberOfTakes;
  @override
  final KtList<ScoreTrainingPlayerSnapshot> players;
  @override
  final ScoreTrainingPlayerSnapshot owner;

  @override
  String toString() {
    return 'ScoreTrainingGameSnapshot(status: $status, numberOfTakes: $numberOfTakes, players: $players, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScoreTrainingGameSnapshot &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.numberOfTakes, numberOfTakes) &&
            const DeepCollectionEquality().equals(other.players, players) &&
            const DeepCollectionEquality().equals(other.owner, owner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(numberOfTakes),
      const DeepCollectionEquality().hash(players),
      const DeepCollectionEquality().hash(owner));

  @JsonKey(ignore: true)
  @override
  _$ScoreTrainingGameSnapshotCopyWith<_ScoreTrainingGameSnapshot>
      get copyWith =>
          __$ScoreTrainingGameSnapshotCopyWithImpl<_ScoreTrainingGameSnapshot>(
              this, _$identity);
}

abstract class _ScoreTrainingGameSnapshot extends ScoreTrainingGameSnapshot
    implements AbstractTrainingGameSnapshot {
  const factory _ScoreTrainingGameSnapshot(
          {required Status status,
          required int numberOfTakes,
          required KtList<ScoreTrainingPlayerSnapshot> players,
          required ScoreTrainingPlayerSnapshot owner}) =
      _$_ScoreTrainingGameSnapshot;
  const _ScoreTrainingGameSnapshot._() : super._();

  @override
  Status get status;
  @override
  int get numberOfTakes;
  @override
  KtList<ScoreTrainingPlayerSnapshot> get players;
  @override
  ScoreTrainingPlayerSnapshot get owner;
  @override
  @JsonKey(ignore: true)
  _$ScoreTrainingGameSnapshotCopyWith<_ScoreTrainingGameSnapshot>
      get copyWith => throw _privateConstructorUsedError;
}
