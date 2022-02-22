// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'online_player_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OnlinePlayerSnapshotTearOff {
  const _$OnlinePlayerSnapshotTearOff();

  _OnlinePlayerSnapshot call(
      {required UniqueId id,
      required String name,
      String? photoUrl,
      required bool isCurrentTurn,
      required bool won,
      int? wonSets,
      required int wonLegsCurrentSet,
      required int pointsLeft,
      KtList<String>? finishRecommendation,
      int? lastPoints,
      required int dartsThrownCurrentLeg,
      required PlayerStats stats}) {
    return _OnlinePlayerSnapshot(
      id: id,
      name: name,
      photoUrl: photoUrl,
      isCurrentTurn: isCurrentTurn,
      won: won,
      wonSets: wonSets,
      wonLegsCurrentSet: wonLegsCurrentSet,
      pointsLeft: pointsLeft,
      finishRecommendation: finishRecommendation,
      lastPoints: lastPoints,
      dartsThrownCurrentLeg: dartsThrownCurrentLeg,
      stats: stats,
    );
  }
}

/// @nodoc
const $OnlinePlayerSnapshot = _$OnlinePlayerSnapshotTearOff();

/// @nodoc
mixin _$OnlinePlayerSnapshot {
  UniqueId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  bool get isCurrentTurn => throw _privateConstructorUsedError;
  bool get won => throw _privateConstructorUsedError;
  int? get wonSets => throw _privateConstructorUsedError;
  int get wonLegsCurrentSet => throw _privateConstructorUsedError;
  int get pointsLeft => throw _privateConstructorUsedError;
  KtList<String>? get finishRecommendation =>
      throw _privateConstructorUsedError;
  int? get lastPoints => throw _privateConstructorUsedError;
  int get dartsThrownCurrentLeg => throw _privateConstructorUsedError;
  PlayerStats get stats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnlinePlayerSnapshotCopyWith<OnlinePlayerSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlinePlayerSnapshotCopyWith<$Res> {
  factory $OnlinePlayerSnapshotCopyWith(OnlinePlayerSnapshot value,
          $Res Function(OnlinePlayerSnapshot) then) =
      _$OnlinePlayerSnapshotCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      String name,
      String? photoUrl,
      bool isCurrentTurn,
      bool won,
      int? wonSets,
      int wonLegsCurrentSet,
      int pointsLeft,
      KtList<String>? finishRecommendation,
      int? lastPoints,
      int dartsThrownCurrentLeg,
      PlayerStats stats});

  $PlayerStatsCopyWith<$Res> get stats;
}

/// @nodoc
class _$OnlinePlayerSnapshotCopyWithImpl<$Res>
    implements $OnlinePlayerSnapshotCopyWith<$Res> {
  _$OnlinePlayerSnapshotCopyWithImpl(this._value, this._then);

  final OnlinePlayerSnapshot _value;
  // ignore: unused_field
  final $Res Function(OnlinePlayerSnapshot) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? photoUrl = freezed,
    Object? isCurrentTurn = freezed,
    Object? won = freezed,
    Object? wonSets = freezed,
    Object? wonLegsCurrentSet = freezed,
    Object? pointsLeft = freezed,
    Object? finishRecommendation = freezed,
    Object? lastPoints = freezed,
    Object? dartsThrownCurrentLeg = freezed,
    Object? stats = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isCurrentTurn: isCurrentTurn == freezed
          ? _value.isCurrentTurn
          : isCurrentTurn // ignore: cast_nullable_to_non_nullable
              as bool,
      won: won == freezed
          ? _value.won
          : won // ignore: cast_nullable_to_non_nullable
              as bool,
      wonSets: wonSets == freezed
          ? _value.wonSets
          : wonSets // ignore: cast_nullable_to_non_nullable
              as int?,
      wonLegsCurrentSet: wonLegsCurrentSet == freezed
          ? _value.wonLegsCurrentSet
          : wonLegsCurrentSet // ignore: cast_nullable_to_non_nullable
              as int,
      pointsLeft: pointsLeft == freezed
          ? _value.pointsLeft
          : pointsLeft // ignore: cast_nullable_to_non_nullable
              as int,
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
              as int,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as PlayerStats,
    ));
  }

  @override
  $PlayerStatsCopyWith<$Res> get stats {
    return $PlayerStatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value));
    });
  }
}

/// @nodoc
abstract class _$OnlinePlayerSnapshotCopyWith<$Res>
    implements $OnlinePlayerSnapshotCopyWith<$Res> {
  factory _$OnlinePlayerSnapshotCopyWith(_OnlinePlayerSnapshot value,
          $Res Function(_OnlinePlayerSnapshot) then) =
      __$OnlinePlayerSnapshotCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      String name,
      String? photoUrl,
      bool isCurrentTurn,
      bool won,
      int? wonSets,
      int wonLegsCurrentSet,
      int pointsLeft,
      KtList<String>? finishRecommendation,
      int? lastPoints,
      int dartsThrownCurrentLeg,
      PlayerStats stats});

  @override
  $PlayerStatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$OnlinePlayerSnapshotCopyWithImpl<$Res>
    extends _$OnlinePlayerSnapshotCopyWithImpl<$Res>
    implements _$OnlinePlayerSnapshotCopyWith<$Res> {
  __$OnlinePlayerSnapshotCopyWithImpl(
      _OnlinePlayerSnapshot _value, $Res Function(_OnlinePlayerSnapshot) _then)
      : super(_value, (v) => _then(v as _OnlinePlayerSnapshot));

  @override
  _OnlinePlayerSnapshot get _value => super._value as _OnlinePlayerSnapshot;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? photoUrl = freezed,
    Object? isCurrentTurn = freezed,
    Object? won = freezed,
    Object? wonSets = freezed,
    Object? wonLegsCurrentSet = freezed,
    Object? pointsLeft = freezed,
    Object? finishRecommendation = freezed,
    Object? lastPoints = freezed,
    Object? dartsThrownCurrentLeg = freezed,
    Object? stats = freezed,
  }) {
    return _then(_OnlinePlayerSnapshot(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isCurrentTurn: isCurrentTurn == freezed
          ? _value.isCurrentTurn
          : isCurrentTurn // ignore: cast_nullable_to_non_nullable
              as bool,
      won: won == freezed
          ? _value.won
          : won // ignore: cast_nullable_to_non_nullable
              as bool,
      wonSets: wonSets == freezed
          ? _value.wonSets
          : wonSets // ignore: cast_nullable_to_non_nullable
              as int?,
      wonLegsCurrentSet: wonLegsCurrentSet == freezed
          ? _value.wonLegsCurrentSet
          : wonLegsCurrentSet // ignore: cast_nullable_to_non_nullable
              as int,
      pointsLeft: pointsLeft == freezed
          ? _value.pointsLeft
          : pointsLeft // ignore: cast_nullable_to_non_nullable
              as int,
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
              as int,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as PlayerStats,
    ));
  }
}

/// @nodoc

@Implements<AbstractPlayerSnapshot>()
class _$_OnlinePlayerSnapshot implements _OnlinePlayerSnapshot {
  const _$_OnlinePlayerSnapshot(
      {required this.id,
      required this.name,
      this.photoUrl,
      required this.isCurrentTurn,
      required this.won,
      this.wonSets,
      required this.wonLegsCurrentSet,
      required this.pointsLeft,
      this.finishRecommendation,
      this.lastPoints,
      required this.dartsThrownCurrentLeg,
      required this.stats});

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final String? photoUrl;
  @override
  final bool isCurrentTurn;
  @override
  final bool won;
  @override
  final int? wonSets;
  @override
  final int wonLegsCurrentSet;
  @override
  final int pointsLeft;
  @override
  final KtList<String>? finishRecommendation;
  @override
  final int? lastPoints;
  @override
  final int dartsThrownCurrentLeg;
  @override
  final PlayerStats stats;

  @override
  String toString() {
    return 'OnlinePlayerSnapshot(id: $id, name: $name, photoUrl: $photoUrl, isCurrentTurn: $isCurrentTurn, won: $won, wonSets: $wonSets, wonLegsCurrentSet: $wonLegsCurrentSet, pointsLeft: $pointsLeft, finishRecommendation: $finishRecommendation, lastPoints: $lastPoints, dartsThrownCurrentLeg: $dartsThrownCurrentLeg, stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnlinePlayerSnapshot &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.photoUrl, photoUrl) &&
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
            const DeepCollectionEquality().equals(other.stats, stats));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(photoUrl),
      const DeepCollectionEquality().hash(isCurrentTurn),
      const DeepCollectionEquality().hash(won),
      const DeepCollectionEquality().hash(wonSets),
      const DeepCollectionEquality().hash(wonLegsCurrentSet),
      const DeepCollectionEquality().hash(pointsLeft),
      const DeepCollectionEquality().hash(finishRecommendation),
      const DeepCollectionEquality().hash(lastPoints),
      const DeepCollectionEquality().hash(dartsThrownCurrentLeg),
      const DeepCollectionEquality().hash(stats));

  @JsonKey(ignore: true)
  @override
  _$OnlinePlayerSnapshotCopyWith<_OnlinePlayerSnapshot> get copyWith =>
      __$OnlinePlayerSnapshotCopyWithImpl<_OnlinePlayerSnapshot>(
          this, _$identity);
}

abstract class _OnlinePlayerSnapshot
    implements OnlinePlayerSnapshot, AbstractPlayerSnapshot {
  const factory _OnlinePlayerSnapshot(
      {required UniqueId id,
      required String name,
      String? photoUrl,
      required bool isCurrentTurn,
      required bool won,
      int? wonSets,
      required int wonLegsCurrentSet,
      required int pointsLeft,
      KtList<String>? finishRecommendation,
      int? lastPoints,
      required int dartsThrownCurrentLeg,
      required PlayerStats stats}) = _$_OnlinePlayerSnapshot;

  @override
  UniqueId get id;
  @override
  String get name;
  @override
  String? get photoUrl;
  @override
  bool get isCurrentTurn;
  @override
  bool get won;
  @override
  int? get wonSets;
  @override
  int get wonLegsCurrentSet;
  @override
  int get pointsLeft;
  @override
  KtList<String>? get finishRecommendation;
  @override
  int? get lastPoints;
  @override
  int get dartsThrownCurrentLeg;
  @override
  PlayerStats get stats;
  @override
  @JsonKey(ignore: true)
  _$OnlinePlayerSnapshotCopyWith<_OnlinePlayerSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}
