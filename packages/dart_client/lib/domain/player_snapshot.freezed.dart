// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlayerSnapshotTearOff {
  const _$PlayerSnapshotTearOff();

  _PlayerSnapshot call(
      {required String id,
      required String name,
      bool? isCurrentTurn,
      bool? won,
      int? wonSets,
      int? wonLegsCurrentSet,
      int? pointsLeft,
      KtList<String>? finishRecommendation,
      int? lastPoints,
      int? dartsThrownCurrentLeg,
      Stats? stats,
      required String userId}) {
    return _PlayerSnapshot(
      id: id,
      name: name,
      isCurrentTurn: isCurrentTurn,
      won: won,
      wonSets: wonSets,
      wonLegsCurrentSet: wonLegsCurrentSet,
      pointsLeft: pointsLeft,
      finishRecommendation: finishRecommendation,
      lastPoints: lastPoints,
      dartsThrownCurrentLeg: dartsThrownCurrentLeg,
      stats: stats,
      userId: userId,
    );
  }
}

/// @nodoc
const $PlayerSnapshot = _$PlayerSnapshotTearOff();

/// @nodoc
mixin _$PlayerSnapshot {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool? get isCurrentTurn => throw _privateConstructorUsedError;
  bool? get won => throw _privateConstructorUsedError;
  int? get wonSets => throw _privateConstructorUsedError;
  int? get wonLegsCurrentSet => throw _privateConstructorUsedError;
  int? get pointsLeft => throw _privateConstructorUsedError;
  KtList<String>? get finishRecommendation =>
      throw _privateConstructorUsedError;
  int? get lastPoints => throw _privateConstructorUsedError;
  int? get dartsThrownCurrentLeg => throw _privateConstructorUsedError;
  Stats? get stats => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerSnapshotCopyWith<PlayerSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerSnapshotCopyWith<$Res> {
  factory $PlayerSnapshotCopyWith(
          PlayerSnapshot value, $Res Function(PlayerSnapshot) then) =
      _$PlayerSnapshotCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      bool? isCurrentTurn,
      bool? won,
      int? wonSets,
      int? wonLegsCurrentSet,
      int? pointsLeft,
      KtList<String>? finishRecommendation,
      int? lastPoints,
      int? dartsThrownCurrentLeg,
      Stats? stats,
      String userId});

  $StatsCopyWith<$Res>? get stats;
}

/// @nodoc
class _$PlayerSnapshotCopyWithImpl<$Res>
    implements $PlayerSnapshotCopyWith<$Res> {
  _$PlayerSnapshotCopyWithImpl(this._value, this._then);

  final PlayerSnapshot _value;
  // ignore: unused_field
  final $Res Function(PlayerSnapshot) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isCurrentTurn = freezed,
    Object? won = freezed,
    Object? wonSets = freezed,
    Object? wonLegsCurrentSet = freezed,
    Object? pointsLeft = freezed,
    Object? finishRecommendation = freezed,
    Object? lastPoints = freezed,
    Object? dartsThrownCurrentLeg = freezed,
    Object? stats = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isCurrentTurn: isCurrentTurn == freezed
          ? _value.isCurrentTurn
          : isCurrentTurn // ignore: cast_nullable_to_non_nullable
              as bool?,
      won: won == freezed
          ? _value.won
          : won // ignore: cast_nullable_to_non_nullable
              as bool?,
      wonSets: wonSets == freezed
          ? _value.wonSets
          : wonSets // ignore: cast_nullable_to_non_nullable
              as int?,
      wonLegsCurrentSet: wonLegsCurrentSet == freezed
          ? _value.wonLegsCurrentSet
          : wonLegsCurrentSet // ignore: cast_nullable_to_non_nullable
              as int?,
      pointsLeft: pointsLeft == freezed
          ? _value.pointsLeft
          : pointsLeft // ignore: cast_nullable_to_non_nullable
              as int?,
      finishRecommendation: finishRecommendation == freezed
          ? _value.finishRecommendation
          : finishRecommendation // ignore: cast_nullable_to_non_nullable
              as KtList<String>?,
      lastPoints: lastPoints == freezed
          ? _value.lastPoints
          : lastPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      dartsThrownCurrentLeg: dartsThrownCurrentLeg == freezed
          ? _value.dartsThrownCurrentLeg
          : dartsThrownCurrentLeg // ignore: cast_nullable_to_non_nullable
              as int?,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as Stats?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $StatsCopyWith<$Res>? get stats {
    if (_value.stats == null) {
      return null;
    }

    return $StatsCopyWith<$Res>(_value.stats!, (value) {
      return _then(_value.copyWith(stats: value));
    });
  }
}

/// @nodoc
abstract class _$PlayerSnapshotCopyWith<$Res>
    implements $PlayerSnapshotCopyWith<$Res> {
  factory _$PlayerSnapshotCopyWith(
          _PlayerSnapshot value, $Res Function(_PlayerSnapshot) then) =
      __$PlayerSnapshotCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      bool? isCurrentTurn,
      bool? won,
      int? wonSets,
      int? wonLegsCurrentSet,
      int? pointsLeft,
      KtList<String>? finishRecommendation,
      int? lastPoints,
      int? dartsThrownCurrentLeg,
      Stats? stats,
      String userId});

  @override
  $StatsCopyWith<$Res>? get stats;
}

/// @nodoc
class __$PlayerSnapshotCopyWithImpl<$Res>
    extends _$PlayerSnapshotCopyWithImpl<$Res>
    implements _$PlayerSnapshotCopyWith<$Res> {
  __$PlayerSnapshotCopyWithImpl(
      _PlayerSnapshot _value, $Res Function(_PlayerSnapshot) _then)
      : super(_value, (v) => _then(v as _PlayerSnapshot));

  @override
  _PlayerSnapshot get _value => super._value as _PlayerSnapshot;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isCurrentTurn = freezed,
    Object? won = freezed,
    Object? wonSets = freezed,
    Object? wonLegsCurrentSet = freezed,
    Object? pointsLeft = freezed,
    Object? finishRecommendation = freezed,
    Object? lastPoints = freezed,
    Object? dartsThrownCurrentLeg = freezed,
    Object? stats = freezed,
    Object? userId = freezed,
  }) {
    return _then(_PlayerSnapshot(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isCurrentTurn: isCurrentTurn == freezed
          ? _value.isCurrentTurn
          : isCurrentTurn // ignore: cast_nullable_to_non_nullable
              as bool?,
      won: won == freezed
          ? _value.won
          : won // ignore: cast_nullable_to_non_nullable
              as bool?,
      wonSets: wonSets == freezed
          ? _value.wonSets
          : wonSets // ignore: cast_nullable_to_non_nullable
              as int?,
      wonLegsCurrentSet: wonLegsCurrentSet == freezed
          ? _value.wonLegsCurrentSet
          : wonLegsCurrentSet // ignore: cast_nullable_to_non_nullable
              as int?,
      pointsLeft: pointsLeft == freezed
          ? _value.pointsLeft
          : pointsLeft // ignore: cast_nullable_to_non_nullable
              as int?,
      finishRecommendation: finishRecommendation == freezed
          ? _value.finishRecommendation
          : finishRecommendation // ignore: cast_nullable_to_non_nullable
              as KtList<String>?,
      lastPoints: lastPoints == freezed
          ? _value.lastPoints
          : lastPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      dartsThrownCurrentLeg: dartsThrownCurrentLeg == freezed
          ? _value.dartsThrownCurrentLeg
          : dartsThrownCurrentLeg // ignore: cast_nullable_to_non_nullable
              as int?,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as Stats?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PlayerSnapshot implements _PlayerSnapshot {
  const _$_PlayerSnapshot(
      {required this.id,
      required this.name,
      this.isCurrentTurn,
      this.won,
      this.wonSets,
      this.wonLegsCurrentSet,
      this.pointsLeft,
      this.finishRecommendation,
      this.lastPoints,
      this.dartsThrownCurrentLeg,
      this.stats,
      required this.userId});

  @override
  final String id;
  @override
  final String name;
  @override
  final bool? isCurrentTurn;
  @override
  final bool? won;
  @override
  final int? wonSets;
  @override
  final int? wonLegsCurrentSet;
  @override
  final int? pointsLeft;
  @override
  final KtList<String>? finishRecommendation;
  @override
  final int? lastPoints;
  @override
  final int? dartsThrownCurrentLeg;
  @override
  final Stats? stats;
  @override
  final String userId;

  @override
  String toString() {
    return 'PlayerSnapshot(id: $id, name: $name, isCurrentTurn: $isCurrentTurn, won: $won, wonSets: $wonSets, wonLegsCurrentSet: $wonLegsCurrentSet, pointsLeft: $pointsLeft, finishRecommendation: $finishRecommendation, lastPoints: $lastPoints, dartsThrownCurrentLeg: $dartsThrownCurrentLeg, stats: $stats, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlayerSnapshot &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.isCurrentTurn, isCurrentTurn) &&
            const DeepCollectionEquality().equals(other.won, won) &&
            const DeepCollectionEquality().equals(other.wonSets, wonSets) &&
            const DeepCollectionEquality()
                .equals(other.wonLegsCurrentSet, wonLegsCurrentSet) &&
            const DeepCollectionEquality()
                .equals(other.pointsLeft, pointsLeft) &&
            const DeepCollectionEquality()
                .equals(other.finishRecommendation, finishRecommendation) &&
            const DeepCollectionEquality()
                .equals(other.lastPoints, lastPoints) &&
            const DeepCollectionEquality()
                .equals(other.dartsThrownCurrentLeg, dartsThrownCurrentLeg) &&
            const DeepCollectionEquality().equals(other.stats, stats) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(isCurrentTurn),
      const DeepCollectionEquality().hash(won),
      const DeepCollectionEquality().hash(wonSets),
      const DeepCollectionEquality().hash(wonLegsCurrentSet),
      const DeepCollectionEquality().hash(pointsLeft),
      const DeepCollectionEquality().hash(finishRecommendation),
      const DeepCollectionEquality().hash(lastPoints),
      const DeepCollectionEquality().hash(dartsThrownCurrentLeg),
      const DeepCollectionEquality().hash(stats),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$PlayerSnapshotCopyWith<_PlayerSnapshot> get copyWith =>
      __$PlayerSnapshotCopyWithImpl<_PlayerSnapshot>(this, _$identity);
}

abstract class _PlayerSnapshot implements PlayerSnapshot {
  const factory _PlayerSnapshot(
      {required String id,
      required String name,
      bool? isCurrentTurn,
      bool? won,
      int? wonSets,
      int? wonLegsCurrentSet,
      int? pointsLeft,
      KtList<String>? finishRecommendation,
      int? lastPoints,
      int? dartsThrownCurrentLeg,
      Stats? stats,
      required String userId}) = _$_PlayerSnapshot;

  @override
  String get id;
  @override
  String get name;
  @override
  bool? get isCurrentTurn;
  @override
  bool? get won;
  @override
  int? get wonSets;
  @override
  int? get wonLegsCurrentSet;
  @override
  int? get pointsLeft;
  @override
  KtList<String>? get finishRecommendation;
  @override
  int? get lastPoints;
  @override
  int? get dartsThrownCurrentLeg;
  @override
  Stats? get stats;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$PlayerSnapshotCopyWith<_PlayerSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}
