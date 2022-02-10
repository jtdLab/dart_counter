// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'double_training_game_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DoubleTrainingGameSnapshotTearOff {
  const _$DoubleTrainingGameSnapshotTearOff();

  _DoubleTrainingGameSnapshot call(
      {required Status status,
      required Mode mode,
      required KtList<DoubleTrainingPlayerSnapshot> players,
      required DoubleTrainingPlayerSnapshot owner}) {
    return _DoubleTrainingGameSnapshot(
      status: status,
      mode: mode,
      players: players,
      owner: owner,
    );
  }
}

/// @nodoc
const $DoubleTrainingGameSnapshot = _$DoubleTrainingGameSnapshotTearOff();

/// @nodoc
mixin _$DoubleTrainingGameSnapshot {
  Status get status => throw _privateConstructorUsedError;
  Mode get mode => throw _privateConstructorUsedError;
  KtList<DoubleTrainingPlayerSnapshot> get players =>
      throw _privateConstructorUsedError;
  DoubleTrainingPlayerSnapshot get owner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoubleTrainingGameSnapshotCopyWith<DoubleTrainingGameSnapshot>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoubleTrainingGameSnapshotCopyWith<$Res> {
  factory $DoubleTrainingGameSnapshotCopyWith(DoubleTrainingGameSnapshot value,
          $Res Function(DoubleTrainingGameSnapshot) then) =
      _$DoubleTrainingGameSnapshotCopyWithImpl<$Res>;
  $Res call(
      {Status status,
      Mode mode,
      KtList<DoubleTrainingPlayerSnapshot> players,
      DoubleTrainingPlayerSnapshot owner});

  $DoubleTrainingPlayerSnapshotCopyWith<$Res> get owner;
}

/// @nodoc
class _$DoubleTrainingGameSnapshotCopyWithImpl<$Res>
    implements $DoubleTrainingGameSnapshotCopyWith<$Res> {
  _$DoubleTrainingGameSnapshotCopyWithImpl(this._value, this._then);

  final DoubleTrainingGameSnapshot _value;
  // ignore: unused_field
  final $Res Function(DoubleTrainingGameSnapshot) _then;

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
              as KtList<DoubleTrainingPlayerSnapshot>,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as DoubleTrainingPlayerSnapshot,
    ));
  }

  @override
  $DoubleTrainingPlayerSnapshotCopyWith<$Res> get owner {
    return $DoubleTrainingPlayerSnapshotCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$DoubleTrainingGameSnapshotCopyWith<$Res>
    implements $DoubleTrainingGameSnapshotCopyWith<$Res> {
  factory _$DoubleTrainingGameSnapshotCopyWith(
          _DoubleTrainingGameSnapshot value,
          $Res Function(_DoubleTrainingGameSnapshot) then) =
      __$DoubleTrainingGameSnapshotCopyWithImpl<$Res>;
  @override
  $Res call(
      {Status status,
      Mode mode,
      KtList<DoubleTrainingPlayerSnapshot> players,
      DoubleTrainingPlayerSnapshot owner});

  @override
  $DoubleTrainingPlayerSnapshotCopyWith<$Res> get owner;
}

/// @nodoc
class __$DoubleTrainingGameSnapshotCopyWithImpl<$Res>
    extends _$DoubleTrainingGameSnapshotCopyWithImpl<$Res>
    implements _$DoubleTrainingGameSnapshotCopyWith<$Res> {
  __$DoubleTrainingGameSnapshotCopyWithImpl(_DoubleTrainingGameSnapshot _value,
      $Res Function(_DoubleTrainingGameSnapshot) _then)
      : super(_value, (v) => _then(v as _DoubleTrainingGameSnapshot));

  @override
  _DoubleTrainingGameSnapshot get _value =>
      super._value as _DoubleTrainingGameSnapshot;

  @override
  $Res call({
    Object? status = freezed,
    Object? mode = freezed,
    Object? players = freezed,
    Object? owner = freezed,
  }) {
    return _then(_DoubleTrainingGameSnapshot(
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
              as KtList<DoubleTrainingPlayerSnapshot>,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as DoubleTrainingPlayerSnapshot,
    ));
  }
}

/// @nodoc

@Implements<AbstractTrainingGameSnapshot>()
class _$_DoubleTrainingGameSnapshot extends _DoubleTrainingGameSnapshot {
  const _$_DoubleTrainingGameSnapshot(
      {required this.status,
      required this.mode,
      required this.players,
      required this.owner})
      : super._();

  @override
  final Status status;
  @override
  final Mode mode;
  @override
  final KtList<DoubleTrainingPlayerSnapshot> players;
  @override
  final DoubleTrainingPlayerSnapshot owner;

  @override
  String toString() {
    return 'DoubleTrainingGameSnapshot(status: $status, mode: $mode, players: $players, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DoubleTrainingGameSnapshot &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.players, players) &&
            const DeepCollectionEquality().equals(other.owner, owner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(players),
      const DeepCollectionEquality().hash(owner));

  @JsonKey(ignore: true)
  @override
  _$DoubleTrainingGameSnapshotCopyWith<_DoubleTrainingGameSnapshot>
      get copyWith => __$DoubleTrainingGameSnapshotCopyWithImpl<
          _DoubleTrainingGameSnapshot>(this, _$identity);
}

abstract class _DoubleTrainingGameSnapshot extends DoubleTrainingGameSnapshot
    implements AbstractTrainingGameSnapshot {
  const factory _DoubleTrainingGameSnapshot(
          {required Status status,
          required Mode mode,
          required KtList<DoubleTrainingPlayerSnapshot> players,
          required DoubleTrainingPlayerSnapshot owner}) =
      _$_DoubleTrainingGameSnapshot;
  const _DoubleTrainingGameSnapshot._() : super._();

  @override
  Status get status;
  @override
  Mode get mode;
  @override
  KtList<DoubleTrainingPlayerSnapshot> get players;
  @override
  DoubleTrainingPlayerSnapshot get owner;
  @override
  @JsonKey(ignore: true)
  _$DoubleTrainingGameSnapshotCopyWith<_DoubleTrainingGameSnapshot>
      get copyWith => throw _privateConstructorUsedError;
}
