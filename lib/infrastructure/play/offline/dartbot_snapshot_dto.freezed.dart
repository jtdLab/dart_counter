// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dartbot_snapshot_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DartBotSnapshotDtoTearOff {
  const _$DartBotSnapshotDtoTearOff();

  _DartBotSnapshotDto call(
      {required String id,
      String? name,
      bool? isCurrentTurn,
      bool? won,
      int? wonSets,
      int? wonLegsCurrentSet,
      int? pointsLeft,
      List<String>? finishRecommendation,
      int? lastPoints,
      int? dartsThrownCurrentLeg,
      PlayerStatsDto? stats,
      required int targetAverage}) {
    return _DartBotSnapshotDto(
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
const $DartBotSnapshotDto = _$DartBotSnapshotDtoTearOff();

/// @nodoc
mixin _$DartBotSnapshotDto {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  bool? get isCurrentTurn => throw _privateConstructorUsedError;
  bool? get won => throw _privateConstructorUsedError;
  int? get wonSets => throw _privateConstructorUsedError;
  int? get wonLegsCurrentSet => throw _privateConstructorUsedError;
  int? get pointsLeft => throw _privateConstructorUsedError;
  List<String>? get finishRecommendation => throw _privateConstructorUsedError;
  int? get lastPoints => throw _privateConstructorUsedError;
  int? get dartsThrownCurrentLeg => throw _privateConstructorUsedError;
  PlayerStatsDto? get stats => throw _privateConstructorUsedError;
  int get targetAverage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DartBotSnapshotDtoCopyWith<DartBotSnapshotDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DartBotSnapshotDtoCopyWith<$Res> {
  factory $DartBotSnapshotDtoCopyWith(
          DartBotSnapshotDto value, $Res Function(DartBotSnapshotDto) then) =
      _$DartBotSnapshotDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String? name,
      bool? isCurrentTurn,
      bool? won,
      int? wonSets,
      int? wonLegsCurrentSet,
      int? pointsLeft,
      List<String>? finishRecommendation,
      int? lastPoints,
      int? dartsThrownCurrentLeg,
      PlayerStatsDto? stats,
      int targetAverage});

  $PlayerStatsDtoCopyWith<$Res>? get stats;
}

/// @nodoc
class _$DartBotSnapshotDtoCopyWithImpl<$Res>
    implements $DartBotSnapshotDtoCopyWith<$Res> {
  _$DartBotSnapshotDtoCopyWithImpl(this._value, this._then);

  final DartBotSnapshotDto _value;
  // ignore: unused_field
  final $Res Function(DartBotSnapshotDto) _then;

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
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as List<String>?,
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
              as PlayerStatsDto?,
      targetAverage: targetAverage == freezed
          ? _value.targetAverage
          : targetAverage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $PlayerStatsDtoCopyWith<$Res>? get stats {
    if (_value.stats == null) {
      return null;
    }

    return $PlayerStatsDtoCopyWith<$Res>(_value.stats!, (value) {
      return _then(_value.copyWith(stats: value));
    });
  }
}

/// @nodoc
abstract class _$DartBotSnapshotDtoCopyWith<$Res>
    implements $DartBotSnapshotDtoCopyWith<$Res> {
  factory _$DartBotSnapshotDtoCopyWith(
          _DartBotSnapshotDto value, $Res Function(_DartBotSnapshotDto) then) =
      __$DartBotSnapshotDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String? name,
      bool? isCurrentTurn,
      bool? won,
      int? wonSets,
      int? wonLegsCurrentSet,
      int? pointsLeft,
      List<String>? finishRecommendation,
      int? lastPoints,
      int? dartsThrownCurrentLeg,
      PlayerStatsDto? stats,
      int targetAverage});

  @override
  $PlayerStatsDtoCopyWith<$Res>? get stats;
}

/// @nodoc
class __$DartBotSnapshotDtoCopyWithImpl<$Res>
    extends _$DartBotSnapshotDtoCopyWithImpl<$Res>
    implements _$DartBotSnapshotDtoCopyWith<$Res> {
  __$DartBotSnapshotDtoCopyWithImpl(
      _DartBotSnapshotDto _value, $Res Function(_DartBotSnapshotDto) _then)
      : super(_value, (v) => _then(v as _DartBotSnapshotDto));

  @override
  _DartBotSnapshotDto get _value => super._value as _DartBotSnapshotDto;

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
    return _then(_DartBotSnapshotDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as List<String>?,
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
              as PlayerStatsDto?,
      targetAverage: targetAverage == freezed
          ? _value.targetAverage
          : targetAverage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@Implements<AbstractPlayerSnapshotDto>()
class _$_DartBotSnapshotDto extends _DartBotSnapshotDto {
  const _$_DartBotSnapshotDto(
      {required this.id,
      this.name,
      this.isCurrentTurn,
      this.won,
      this.wonSets,
      this.wonLegsCurrentSet,
      this.pointsLeft,
      this.finishRecommendation,
      this.lastPoints,
      this.dartsThrownCurrentLeg,
      this.stats,
      required this.targetAverage})
      : super._();

  @override
  final String id;
  @override
  final String? name;
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
  final List<String>? finishRecommendation;
  @override
  final int? lastPoints;
  @override
  final int? dartsThrownCurrentLeg;
  @override
  final PlayerStatsDto? stats;
  @override
  final int targetAverage;

  @override
  String toString() {
    return 'DartBotSnapshotDto(id: $id, name: $name, isCurrentTurn: $isCurrentTurn, won: $won, wonSets: $wonSets, wonLegsCurrentSet: $wonLegsCurrentSet, pointsLeft: $pointsLeft, finishRecommendation: $finishRecommendation, lastPoints: $lastPoints, dartsThrownCurrentLeg: $dartsThrownCurrentLeg, stats: $stats, targetAverage: $targetAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DartBotSnapshotDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isCurrentTurn, isCurrentTurn) ||
                other.isCurrentTurn == isCurrentTurn) &&
            (identical(other.won, won) || other.won == won) &&
            (identical(other.wonSets, wonSets) || other.wonSets == wonSets) &&
            (identical(other.wonLegsCurrentSet, wonLegsCurrentSet) ||
                other.wonLegsCurrentSet == wonLegsCurrentSet) &&
            (identical(other.pointsLeft, pointsLeft) ||
                other.pointsLeft == pointsLeft) &&
            const DeepCollectionEquality()
                .equals(other.finishRecommendation, finishRecommendation) &&
            (identical(other.lastPoints, lastPoints) ||
                other.lastPoints == lastPoints) &&
            (identical(other.dartsThrownCurrentLeg, dartsThrownCurrentLeg) ||
                other.dartsThrownCurrentLeg == dartsThrownCurrentLeg) &&
            (identical(other.stats, stats) || other.stats == stats) &&
            (identical(other.targetAverage, targetAverage) ||
                other.targetAverage == targetAverage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      isCurrentTurn,
      won,
      wonSets,
      wonLegsCurrentSet,
      pointsLeft,
      const DeepCollectionEquality().hash(finishRecommendation),
      lastPoints,
      dartsThrownCurrentLeg,
      stats,
      targetAverage);

  @JsonKey(ignore: true)
  @override
  _$DartBotSnapshotDtoCopyWith<_DartBotSnapshotDto> get copyWith =>
      __$DartBotSnapshotDtoCopyWithImpl<_DartBotSnapshotDto>(this, _$identity);
}

abstract class _DartBotSnapshotDto extends DartBotSnapshotDto
    implements AbstractPlayerSnapshotDto {
  const factory _DartBotSnapshotDto(
      {required String id,
      String? name,
      bool? isCurrentTurn,
      bool? won,
      int? wonSets,
      int? wonLegsCurrentSet,
      int? pointsLeft,
      List<String>? finishRecommendation,
      int? lastPoints,
      int? dartsThrownCurrentLeg,
      PlayerStatsDto? stats,
      required int targetAverage}) = _$_DartBotSnapshotDto;
  const _DartBotSnapshotDto._() : super._();

  @override
  String get id;
  @override
  String? get name;
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
  List<String>? get finishRecommendation;
  @override
  int? get lastPoints;
  @override
  int? get dartsThrownCurrentLeg;
  @override
  PlayerStatsDto? get stats;
  @override
  int get targetAverage;
  @override
  @JsonKey(ignore: true)
  _$DartBotSnapshotDtoCopyWith<_DartBotSnapshotDto> get copyWith =>
      throw _privateConstructorUsedError;
}
