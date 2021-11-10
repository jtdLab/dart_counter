// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'single_training_game_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SingleTrainingGameSnapshotTearOff {
  const _$SingleTrainingGameSnapshotTearOff();

  _SingleTrainingGameSnapshot call(
      {required Status status,
      required Mode mode,
      required KtList<SingleTrainingPlayerSnapshot> players,
      required SingleTrainingPlayerSnapshot owner}) {
    return _SingleTrainingGameSnapshot(
      status: status,
      mode: mode,
      players: players,
      owner: owner,
    );
  }
}

/// @nodoc
const $SingleTrainingGameSnapshot = _$SingleTrainingGameSnapshotTearOff();

/// @nodoc
mixin _$SingleTrainingGameSnapshot {
  Status get status => throw _privateConstructorUsedError;
  Mode get mode => throw _privateConstructorUsedError;
  KtList<SingleTrainingPlayerSnapshot> get players =>
      throw _privateConstructorUsedError;
  SingleTrainingPlayerSnapshot get owner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleTrainingGameSnapshotCopyWith<SingleTrainingGameSnapshot>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleTrainingGameSnapshotCopyWith<$Res> {
  factory $SingleTrainingGameSnapshotCopyWith(SingleTrainingGameSnapshot value,
          $Res Function(SingleTrainingGameSnapshot) then) =
      _$SingleTrainingGameSnapshotCopyWithImpl<$Res>;
  $Res call(
      {Status status,
      Mode mode,
      KtList<SingleTrainingPlayerSnapshot> players,
      SingleTrainingPlayerSnapshot owner});

  $SingleTrainingPlayerSnapshotCopyWith<$Res> get owner;
}

/// @nodoc
class _$SingleTrainingGameSnapshotCopyWithImpl<$Res>
    implements $SingleTrainingGameSnapshotCopyWith<$Res> {
  _$SingleTrainingGameSnapshotCopyWithImpl(this._value, this._then);

  final SingleTrainingGameSnapshot _value;
  // ignore: unused_field
  final $Res Function(SingleTrainingGameSnapshot) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? mode = freezed,
    Object? players = freezed,
    Object? owner = freezed,
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
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as KtList<SingleTrainingPlayerSnapshot>,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as SingleTrainingPlayerSnapshot,
    ));
  }

  @override
  $SingleTrainingPlayerSnapshotCopyWith<$Res> get owner {
    return $SingleTrainingPlayerSnapshotCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$SingleTrainingGameSnapshotCopyWith<$Res>
    implements $SingleTrainingGameSnapshotCopyWith<$Res> {
  factory _$SingleTrainingGameSnapshotCopyWith(
          _SingleTrainingGameSnapshot value,
          $Res Function(_SingleTrainingGameSnapshot) then) =
      __$SingleTrainingGameSnapshotCopyWithImpl<$Res>;
  @override
  $Res call(
      {Status status,
      Mode mode,
      KtList<SingleTrainingPlayerSnapshot> players,
      SingleTrainingPlayerSnapshot owner});

  @override
  $SingleTrainingPlayerSnapshotCopyWith<$Res> get owner;
}

/// @nodoc
class __$SingleTrainingGameSnapshotCopyWithImpl<$Res>
    extends _$SingleTrainingGameSnapshotCopyWithImpl<$Res>
    implements _$SingleTrainingGameSnapshotCopyWith<$Res> {
  __$SingleTrainingGameSnapshotCopyWithImpl(_SingleTrainingGameSnapshot _value,
      $Res Function(_SingleTrainingGameSnapshot) _then)
      : super(_value, (v) => _then(v as _SingleTrainingGameSnapshot));

  @override
  _SingleTrainingGameSnapshot get _value =>
      super._value as _SingleTrainingGameSnapshot;

  @override
  $Res call({
    Object? status = freezed,
    Object? mode = freezed,
    Object? players = freezed,
    Object? owner = freezed,
  }) {
    return _then(_SingleTrainingGameSnapshot(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as Mode,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as KtList<SingleTrainingPlayerSnapshot>,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as SingleTrainingPlayerSnapshot,
    ));
  }
}

/// @nodoc

@Implements<AbstractTrainingGameSnapshot>()
class _$_SingleTrainingGameSnapshot implements _SingleTrainingGameSnapshot {
  const _$_SingleTrainingGameSnapshot(
      {required this.status,
      required this.mode,
      required this.players,
      required this.owner});

  @override
  final Status status;
  @override
  final Mode mode;
  @override
  final KtList<SingleTrainingPlayerSnapshot> players;
  @override
  final SingleTrainingPlayerSnapshot owner;

  @override
  String toString() {
    return 'SingleTrainingGameSnapshot(status: $status, mode: $mode, players: $players, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SingleTrainingGameSnapshot &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.players, players) || other.players == players) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, mode, players, owner);

  @JsonKey(ignore: true)
  @override
  _$SingleTrainingGameSnapshotCopyWith<_SingleTrainingGameSnapshot>
      get copyWith => __$SingleTrainingGameSnapshotCopyWithImpl<
          _SingleTrainingGameSnapshot>(this, _$identity);
}

abstract class _SingleTrainingGameSnapshot
    implements SingleTrainingGameSnapshot, AbstractTrainingGameSnapshot {
  const factory _SingleTrainingGameSnapshot(
          {required Status status,
          required Mode mode,
          required KtList<SingleTrainingPlayerSnapshot> players,
          required SingleTrainingPlayerSnapshot owner}) =
      _$_SingleTrainingGameSnapshot;

  @override
  Status get status;
  @override
  Mode get mode;
  @override
  KtList<SingleTrainingPlayerSnapshot> get players;
  @override
  SingleTrainingPlayerSnapshot get owner;
  @override
  @JsonKey(ignore: true)
  _$SingleTrainingGameSnapshotCopyWith<_SingleTrainingGameSnapshot>
      get copyWith => throw _privateConstructorUsedError;
}
