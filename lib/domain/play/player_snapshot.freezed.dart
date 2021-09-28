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
class _$OfflinePlayerSnapshotTearOff {
  const _$OfflinePlayerSnapshotTearOff();

  _OfflinePlayerSnapshot call(
      {required UniqueId id,
      required String name,
      bool isCurrentTurn = false,
      bool won = false,
      int? wonSets,
      int wonLegsCurrentSet = 0,
      int pointsLeft = 0,
      KtList<String>? finishRecommendation,
      int? lastPoints,
      int dartsThrownCurrentLeg = 0,
      PlayerStats stats = const PlayerStats()}) {
    return _OfflinePlayerSnapshot(
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
    );
  }
}

/// @nodoc
const $OfflinePlayerSnapshot = _$OfflinePlayerSnapshotTearOff();

/// @nodoc
mixin _$OfflinePlayerSnapshot {
  UniqueId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
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
  $OfflinePlayerSnapshotCopyWith<OfflinePlayerSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflinePlayerSnapshotCopyWith<$Res> {
  factory $OfflinePlayerSnapshotCopyWith(OfflinePlayerSnapshot value,
          $Res Function(OfflinePlayerSnapshot) then) =
      _$OfflinePlayerSnapshotCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      String name,
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
class _$OfflinePlayerSnapshotCopyWithImpl<$Res>
    implements $OfflinePlayerSnapshotCopyWith<$Res> {
  _$OfflinePlayerSnapshotCopyWithImpl(this._value, this._then);

  final OfflinePlayerSnapshot _value;
  // ignore: unused_field
  final $Res Function(OfflinePlayerSnapshot) _then;

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
abstract class _$OfflinePlayerSnapshotCopyWith<$Res>
    implements $OfflinePlayerSnapshotCopyWith<$Res> {
  factory _$OfflinePlayerSnapshotCopyWith(_OfflinePlayerSnapshot value,
          $Res Function(_OfflinePlayerSnapshot) then) =
      __$OfflinePlayerSnapshotCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      String name,
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
class __$OfflinePlayerSnapshotCopyWithImpl<$Res>
    extends _$OfflinePlayerSnapshotCopyWithImpl<$Res>
    implements _$OfflinePlayerSnapshotCopyWith<$Res> {
  __$OfflinePlayerSnapshotCopyWithImpl(_OfflinePlayerSnapshot _value,
      $Res Function(_OfflinePlayerSnapshot) _then)
      : super(_value, (v) => _then(v as _OfflinePlayerSnapshot));

  @override
  _OfflinePlayerSnapshot get _value => super._value as _OfflinePlayerSnapshot;

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
  }) {
    return _then(_OfflinePlayerSnapshot(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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

@Implements(AbstractOfflinePlayerSnapshot)
class _$_OfflinePlayerSnapshot implements _OfflinePlayerSnapshot {
  const _$_OfflinePlayerSnapshot(
      {required this.id,
      required this.name,
      this.isCurrentTurn = false,
      this.won = false,
      this.wonSets,
      this.wonLegsCurrentSet = 0,
      this.pointsLeft = 0,
      this.finishRecommendation,
      this.lastPoints,
      this.dartsThrownCurrentLeg = 0,
      this.stats = const PlayerStats()});

  @override
  final UniqueId id;
  @override
  final String name;
  @JsonKey(defaultValue: false)
  @override
  final bool isCurrentTurn;
  @JsonKey(defaultValue: false)
  @override
  final bool won;
  @override
  final int? wonSets;
  @JsonKey(defaultValue: 0)
  @override
  final int wonLegsCurrentSet;
  @JsonKey(defaultValue: 0)
  @override
  final int pointsLeft;
  @override
  final KtList<String>? finishRecommendation;
  @override
  final int? lastPoints;
  @JsonKey(defaultValue: 0)
  @override
  final int dartsThrownCurrentLeg;
  @JsonKey(defaultValue: const PlayerStats())
  @override
  final PlayerStats stats;

  @override
  String toString() {
    return 'OfflinePlayerSnapshot(id: $id, name: $name, isCurrentTurn: $isCurrentTurn, won: $won, wonSets: $wonSets, wonLegsCurrentSet: $wonLegsCurrentSet, pointsLeft: $pointsLeft, finishRecommendation: $finishRecommendation, lastPoints: $lastPoints, dartsThrownCurrentLeg: $dartsThrownCurrentLeg, stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OfflinePlayerSnapshot &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.isCurrentTurn, isCurrentTurn) ||
                const DeepCollectionEquality()
                    .equals(other.isCurrentTurn, isCurrentTurn)) &&
            (identical(other.won, won) ||
                const DeepCollectionEquality().equals(other.won, won)) &&
            (identical(other.wonSets, wonSets) ||
                const DeepCollectionEquality()
                    .equals(other.wonSets, wonSets)) &&
            (identical(other.wonLegsCurrentSet, wonLegsCurrentSet) ||
                const DeepCollectionEquality()
                    .equals(other.wonLegsCurrentSet, wonLegsCurrentSet)) &&
            (identical(other.pointsLeft, pointsLeft) ||
                const DeepCollectionEquality()
                    .equals(other.pointsLeft, pointsLeft)) &&
            (identical(other.finishRecommendation, finishRecommendation) ||
                const DeepCollectionEquality().equals(
                    other.finishRecommendation, finishRecommendation)) &&
            (identical(other.lastPoints, lastPoints) ||
                const DeepCollectionEquality()
                    .equals(other.lastPoints, lastPoints)) &&
            (identical(other.dartsThrownCurrentLeg, dartsThrownCurrentLeg) ||
                const DeepCollectionEquality().equals(
                    other.dartsThrownCurrentLeg, dartsThrownCurrentLeg)) &&
            (identical(other.stats, stats) ||
                const DeepCollectionEquality().equals(other.stats, stats)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(isCurrentTurn) ^
      const DeepCollectionEquality().hash(won) ^
      const DeepCollectionEquality().hash(wonSets) ^
      const DeepCollectionEquality().hash(wonLegsCurrentSet) ^
      const DeepCollectionEquality().hash(pointsLeft) ^
      const DeepCollectionEquality().hash(finishRecommendation) ^
      const DeepCollectionEquality().hash(lastPoints) ^
      const DeepCollectionEquality().hash(dartsThrownCurrentLeg) ^
      const DeepCollectionEquality().hash(stats);

  @JsonKey(ignore: true)
  @override
  _$OfflinePlayerSnapshotCopyWith<_OfflinePlayerSnapshot> get copyWith =>
      __$OfflinePlayerSnapshotCopyWithImpl<_OfflinePlayerSnapshot>(
          this, _$identity);
}

abstract class _OfflinePlayerSnapshot
    implements OfflinePlayerSnapshot, AbstractOfflinePlayerSnapshot {
  const factory _OfflinePlayerSnapshot(
      {required UniqueId id,
      required String name,
      bool isCurrentTurn,
      bool won,
      int? wonSets,
      int wonLegsCurrentSet,
      int pointsLeft,
      KtList<String>? finishRecommendation,
      int? lastPoints,
      int dartsThrownCurrentLeg,
      PlayerStats stats}) = _$_OfflinePlayerSnapshot;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  bool get isCurrentTurn => throw _privateConstructorUsedError;
  @override
  bool get won => throw _privateConstructorUsedError;
  @override
  int? get wonSets => throw _privateConstructorUsedError;
  @override
  int get wonLegsCurrentSet => throw _privateConstructorUsedError;
  @override
  int get pointsLeft => throw _privateConstructorUsedError;
  @override
  KtList<String>? get finishRecommendation =>
      throw _privateConstructorUsedError;
  @override
  int? get lastPoints => throw _privateConstructorUsedError;
  @override
  int get dartsThrownCurrentLeg => throw _privateConstructorUsedError;
  @override
  PlayerStats get stats => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OfflinePlayerSnapshotCopyWith<_OfflinePlayerSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DartBotSnapshotTearOff {
  const _$DartBotSnapshotTearOff();

  _DartBotSnapshot call(
      {required UniqueId id,
      required String name,
      bool isCurrentTurn = false,
      bool won = false,
      int? wonSets,
      int wonLegsCurrentSet = 0,
      int pointsLeft = 0,
      KtList<String>? finishRecommendation,
      int? lastPoints,
      int dartsThrownCurrentLeg = 0,
      PlayerStats stats = const PlayerStats(),
      int targetAverage = 1}) {
    return _DartBotSnapshot(
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
      targetAverage: targetAverage,
    );
  }
}

/// @nodoc
const $DartBotSnapshot = _$DartBotSnapshotTearOff();

/// @nodoc
mixin _$DartBotSnapshot {
  UniqueId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
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
  int get targetAverage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DartBotSnapshotCopyWith<DartBotSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DartBotSnapshotCopyWith<$Res> {
  factory $DartBotSnapshotCopyWith(
          DartBotSnapshot value, $Res Function(DartBotSnapshot) then) =
      _$DartBotSnapshotCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      String name,
      bool isCurrentTurn,
      bool won,
      int? wonSets,
      int wonLegsCurrentSet,
      int pointsLeft,
      KtList<String>? finishRecommendation,
      int? lastPoints,
      int dartsThrownCurrentLeg,
      PlayerStats stats,
      int targetAverage});

  $PlayerStatsCopyWith<$Res> get stats;
}

/// @nodoc
class _$DartBotSnapshotCopyWithImpl<$Res>
    implements $DartBotSnapshotCopyWith<$Res> {
  _$DartBotSnapshotCopyWithImpl(this._value, this._then);

  final DartBotSnapshot _value;
  // ignore: unused_field
  final $Res Function(DartBotSnapshot) _then;

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
    Object? targetAverage = freezed,
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
      targetAverage: targetAverage == freezed
          ? _value.targetAverage
          : targetAverage // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$DartBotSnapshotCopyWith<$Res>
    implements $DartBotSnapshotCopyWith<$Res> {
  factory _$DartBotSnapshotCopyWith(
          _DartBotSnapshot value, $Res Function(_DartBotSnapshot) then) =
      __$DartBotSnapshotCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      String name,
      bool isCurrentTurn,
      bool won,
      int? wonSets,
      int wonLegsCurrentSet,
      int pointsLeft,
      KtList<String>? finishRecommendation,
      int? lastPoints,
      int dartsThrownCurrentLeg,
      PlayerStats stats,
      int targetAverage});

  @override
  $PlayerStatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$DartBotSnapshotCopyWithImpl<$Res>
    extends _$DartBotSnapshotCopyWithImpl<$Res>
    implements _$DartBotSnapshotCopyWith<$Res> {
  __$DartBotSnapshotCopyWithImpl(
      _DartBotSnapshot _value, $Res Function(_DartBotSnapshot) _then)
      : super(_value, (v) => _then(v as _DartBotSnapshot));

  @override
  _DartBotSnapshot get _value => super._value as _DartBotSnapshot;

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
    Object? targetAverage = freezed,
  }) {
    return _then(_DartBotSnapshot(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      targetAverage: targetAverage == freezed
          ? _value.targetAverage
          : targetAverage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@Implements(AbstractOfflinePlayerSnapshot)
class _$_DartBotSnapshot implements _DartBotSnapshot {
  const _$_DartBotSnapshot(
      {required this.id,
      required this.name,
      this.isCurrentTurn = false,
      this.won = false,
      this.wonSets,
      this.wonLegsCurrentSet = 0,
      this.pointsLeft = 0,
      this.finishRecommendation,
      this.lastPoints,
      this.dartsThrownCurrentLeg = 0,
      this.stats = const PlayerStats(),
      this.targetAverage = 1});

  @override
  final UniqueId id;
  @override
  final String name;
  @JsonKey(defaultValue: false)
  @override
  final bool isCurrentTurn;
  @JsonKey(defaultValue: false)
  @override
  final bool won;
  @override
  final int? wonSets;
  @JsonKey(defaultValue: 0)
  @override
  final int wonLegsCurrentSet;
  @JsonKey(defaultValue: 0)
  @override
  final int pointsLeft;
  @override
  final KtList<String>? finishRecommendation;
  @override
  final int? lastPoints;
  @JsonKey(defaultValue: 0)
  @override
  final int dartsThrownCurrentLeg;
  @JsonKey(defaultValue: const PlayerStats())
  @override
  final PlayerStats stats;
  @JsonKey(defaultValue: 1)
  @override
  final int targetAverage;

  @override
  String toString() {
    return 'DartBotSnapshot(id: $id, name: $name, isCurrentTurn: $isCurrentTurn, won: $won, wonSets: $wonSets, wonLegsCurrentSet: $wonLegsCurrentSet, pointsLeft: $pointsLeft, finishRecommendation: $finishRecommendation, lastPoints: $lastPoints, dartsThrownCurrentLeg: $dartsThrownCurrentLeg, stats: $stats, targetAverage: $targetAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DartBotSnapshot &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.isCurrentTurn, isCurrentTurn) ||
                const DeepCollectionEquality()
                    .equals(other.isCurrentTurn, isCurrentTurn)) &&
            (identical(other.won, won) ||
                const DeepCollectionEquality().equals(other.won, won)) &&
            (identical(other.wonSets, wonSets) ||
                const DeepCollectionEquality()
                    .equals(other.wonSets, wonSets)) &&
            (identical(other.wonLegsCurrentSet, wonLegsCurrentSet) ||
                const DeepCollectionEquality()
                    .equals(other.wonLegsCurrentSet, wonLegsCurrentSet)) &&
            (identical(other.pointsLeft, pointsLeft) ||
                const DeepCollectionEquality()
                    .equals(other.pointsLeft, pointsLeft)) &&
            (identical(other.finishRecommendation, finishRecommendation) ||
                const DeepCollectionEquality().equals(
                    other.finishRecommendation, finishRecommendation)) &&
            (identical(other.lastPoints, lastPoints) ||
                const DeepCollectionEquality()
                    .equals(other.lastPoints, lastPoints)) &&
            (identical(other.dartsThrownCurrentLeg, dartsThrownCurrentLeg) ||
                const DeepCollectionEquality().equals(
                    other.dartsThrownCurrentLeg, dartsThrownCurrentLeg)) &&
            (identical(other.stats, stats) ||
                const DeepCollectionEquality().equals(other.stats, stats)) &&
            (identical(other.targetAverage, targetAverage) ||
                const DeepCollectionEquality()
                    .equals(other.targetAverage, targetAverage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(isCurrentTurn) ^
      const DeepCollectionEquality().hash(won) ^
      const DeepCollectionEquality().hash(wonSets) ^
      const DeepCollectionEquality().hash(wonLegsCurrentSet) ^
      const DeepCollectionEquality().hash(pointsLeft) ^
      const DeepCollectionEquality().hash(finishRecommendation) ^
      const DeepCollectionEquality().hash(lastPoints) ^
      const DeepCollectionEquality().hash(dartsThrownCurrentLeg) ^
      const DeepCollectionEquality().hash(stats) ^
      const DeepCollectionEquality().hash(targetAverage);

  @JsonKey(ignore: true)
  @override
  _$DartBotSnapshotCopyWith<_DartBotSnapshot> get copyWith =>
      __$DartBotSnapshotCopyWithImpl<_DartBotSnapshot>(this, _$identity);
}

abstract class _DartBotSnapshot
    implements DartBotSnapshot, AbstractOfflinePlayerSnapshot {
  const factory _DartBotSnapshot(
      {required UniqueId id,
      required String name,
      bool isCurrentTurn,
      bool won,
      int? wonSets,
      int wonLegsCurrentSet,
      int pointsLeft,
      KtList<String>? finishRecommendation,
      int? lastPoints,
      int dartsThrownCurrentLeg,
      PlayerStats stats,
      int targetAverage}) = _$_DartBotSnapshot;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  bool get isCurrentTurn => throw _privateConstructorUsedError;
  @override
  bool get won => throw _privateConstructorUsedError;
  @override
  int? get wonSets => throw _privateConstructorUsedError;
  @override
  int get wonLegsCurrentSet => throw _privateConstructorUsedError;
  @override
  int get pointsLeft => throw _privateConstructorUsedError;
  @override
  KtList<String>? get finishRecommendation =>
      throw _privateConstructorUsedError;
  @override
  int? get lastPoints => throw _privateConstructorUsedError;
  @override
  int get dartsThrownCurrentLeg => throw _privateConstructorUsedError;
  @override
  PlayerStats get stats => throw _privateConstructorUsedError;
  @override
  int get targetAverage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DartBotSnapshotCopyWith<_DartBotSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OnlinePlayerSnapshotTearOff {
  const _$OnlinePlayerSnapshotTearOff();

  _OnlinePlayerSnapshot call(
      {required UniqueId id,
      required String name,
      bool isCurrentTurn = false,
      bool won = false,
      int? wonSets,
      int wonLegsCurrentSet = 0,
      int pointsLeft = 0,
      KtList<String>? finishRecommendation,
      int? lastPoints,
      int dartsThrownCurrentLeg = 0,
      PlayerStats stats = const PlayerStats(),
      required UniqueId userId}) {
    return _OnlinePlayerSnapshot(
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
const $OnlinePlayerSnapshot = _$OnlinePlayerSnapshotTearOff();

/// @nodoc
mixin _$OnlinePlayerSnapshot {
  UniqueId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
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
  UniqueId get userId => throw _privateConstructorUsedError;

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
      bool isCurrentTurn,
      bool won,
      int? wonSets,
      int wonLegsCurrentSet,
      int pointsLeft,
      KtList<String>? finishRecommendation,
      int? lastPoints,
      int dartsThrownCurrentLeg,
      PlayerStats stats,
      UniqueId userId});

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
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
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
      bool isCurrentTurn,
      bool won,
      int? wonSets,
      int wonLegsCurrentSet,
      int pointsLeft,
      KtList<String>? finishRecommendation,
      int? lastPoints,
      int dartsThrownCurrentLeg,
      PlayerStats stats,
      UniqueId userId});

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
    return _then(_OnlinePlayerSnapshot(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

@Implements(AbstractPlayerSnapshot)
class _$_OnlinePlayerSnapshot implements _OnlinePlayerSnapshot {
  const _$_OnlinePlayerSnapshot(
      {required this.id,
      required this.name,
      this.isCurrentTurn = false,
      this.won = false,
      this.wonSets,
      this.wonLegsCurrentSet = 0,
      this.pointsLeft = 0,
      this.finishRecommendation,
      this.lastPoints,
      this.dartsThrownCurrentLeg = 0,
      this.stats = const PlayerStats(),
      required this.userId});

  @override
  final UniqueId id;
  @override
  final String name;
  @JsonKey(defaultValue: false)
  @override
  final bool isCurrentTurn;
  @JsonKey(defaultValue: false)
  @override
  final bool won;
  @override
  final int? wonSets;
  @JsonKey(defaultValue: 0)
  @override
  final int wonLegsCurrentSet;
  @JsonKey(defaultValue: 0)
  @override
  final int pointsLeft;
  @override
  final KtList<String>? finishRecommendation;
  @override
  final int? lastPoints;
  @JsonKey(defaultValue: 0)
  @override
  final int dartsThrownCurrentLeg;
  @JsonKey(defaultValue: const PlayerStats())
  @override
  final PlayerStats stats;
  @override
  final UniqueId userId;

  @override
  String toString() {
    return 'OnlinePlayerSnapshot(id: $id, name: $name, isCurrentTurn: $isCurrentTurn, won: $won, wonSets: $wonSets, wonLegsCurrentSet: $wonLegsCurrentSet, pointsLeft: $pointsLeft, finishRecommendation: $finishRecommendation, lastPoints: $lastPoints, dartsThrownCurrentLeg: $dartsThrownCurrentLeg, stats: $stats, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnlinePlayerSnapshot &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.isCurrentTurn, isCurrentTurn) ||
                const DeepCollectionEquality()
                    .equals(other.isCurrentTurn, isCurrentTurn)) &&
            (identical(other.won, won) ||
                const DeepCollectionEquality().equals(other.won, won)) &&
            (identical(other.wonSets, wonSets) ||
                const DeepCollectionEquality()
                    .equals(other.wonSets, wonSets)) &&
            (identical(other.wonLegsCurrentSet, wonLegsCurrentSet) ||
                const DeepCollectionEquality()
                    .equals(other.wonLegsCurrentSet, wonLegsCurrentSet)) &&
            (identical(other.pointsLeft, pointsLeft) ||
                const DeepCollectionEquality()
                    .equals(other.pointsLeft, pointsLeft)) &&
            (identical(other.finishRecommendation, finishRecommendation) ||
                const DeepCollectionEquality().equals(
                    other.finishRecommendation, finishRecommendation)) &&
            (identical(other.lastPoints, lastPoints) ||
                const DeepCollectionEquality()
                    .equals(other.lastPoints, lastPoints)) &&
            (identical(other.dartsThrownCurrentLeg, dartsThrownCurrentLeg) ||
                const DeepCollectionEquality().equals(
                    other.dartsThrownCurrentLeg, dartsThrownCurrentLeg)) &&
            (identical(other.stats, stats) ||
                const DeepCollectionEquality().equals(other.stats, stats)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(isCurrentTurn) ^
      const DeepCollectionEquality().hash(won) ^
      const DeepCollectionEquality().hash(wonSets) ^
      const DeepCollectionEquality().hash(wonLegsCurrentSet) ^
      const DeepCollectionEquality().hash(pointsLeft) ^
      const DeepCollectionEquality().hash(finishRecommendation) ^
      const DeepCollectionEquality().hash(lastPoints) ^
      const DeepCollectionEquality().hash(dartsThrownCurrentLeg) ^
      const DeepCollectionEquality().hash(stats) ^
      const DeepCollectionEquality().hash(userId);

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
      bool isCurrentTurn,
      bool won,
      int? wonSets,
      int wonLegsCurrentSet,
      int pointsLeft,
      KtList<String>? finishRecommendation,
      int? lastPoints,
      int dartsThrownCurrentLeg,
      PlayerStats stats,
      required UniqueId userId}) = _$_OnlinePlayerSnapshot;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  bool get isCurrentTurn => throw _privateConstructorUsedError;
  @override
  bool get won => throw _privateConstructorUsedError;
  @override
  int? get wonSets => throw _privateConstructorUsedError;
  @override
  int get wonLegsCurrentSet => throw _privateConstructorUsedError;
  @override
  int get pointsLeft => throw _privateConstructorUsedError;
  @override
  KtList<String>? get finishRecommendation =>
      throw _privateConstructorUsedError;
  @override
  int? get lastPoints => throw _privateConstructorUsedError;
  @override
  int get dartsThrownCurrentLeg => throw _privateConstructorUsedError;
  @override
  PlayerStats get stats => throw _privateConstructorUsedError;
  @override
  UniqueId get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OnlinePlayerSnapshotCopyWith<_OnlinePlayerSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}
