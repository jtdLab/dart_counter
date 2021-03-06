// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'offline_player_snapshot_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OfflinePlayerSnapshotDtoTearOff {
  const _$OfflinePlayerSnapshotDtoTearOff();

  _OfflinePlayerSnapshotDto call(
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
      PlayerStatsDto? stats}) {
    return _OfflinePlayerSnapshotDto(
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
const $OfflinePlayerSnapshotDto = _$OfflinePlayerSnapshotDtoTearOff();

/// @nodoc
mixin _$OfflinePlayerSnapshotDto {
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

  @JsonKey(ignore: true)
  $OfflinePlayerSnapshotDtoCopyWith<OfflinePlayerSnapshotDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflinePlayerSnapshotDtoCopyWith<$Res> {
  factory $OfflinePlayerSnapshotDtoCopyWith(OfflinePlayerSnapshotDto value,
          $Res Function(OfflinePlayerSnapshotDto) then) =
      _$OfflinePlayerSnapshotDtoCopyWithImpl<$Res>;
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
      PlayerStatsDto? stats});

  $PlayerStatsDtoCopyWith<$Res>? get stats;
}

/// @nodoc
class _$OfflinePlayerSnapshotDtoCopyWithImpl<$Res>
    implements $OfflinePlayerSnapshotDtoCopyWith<$Res> {
  _$OfflinePlayerSnapshotDtoCopyWithImpl(this._value, this._then);

  final OfflinePlayerSnapshotDto _value;
  // ignore: unused_field
  final $Res Function(OfflinePlayerSnapshotDto) _then;

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
abstract class _$OfflinePlayerSnapshotDtoCopyWith<$Res>
    implements $OfflinePlayerSnapshotDtoCopyWith<$Res> {
  factory _$OfflinePlayerSnapshotDtoCopyWith(_OfflinePlayerSnapshotDto value,
          $Res Function(_OfflinePlayerSnapshotDto) then) =
      __$OfflinePlayerSnapshotDtoCopyWithImpl<$Res>;
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
      PlayerStatsDto? stats});

  @override
  $PlayerStatsDtoCopyWith<$Res>? get stats;
}

/// @nodoc
class __$OfflinePlayerSnapshotDtoCopyWithImpl<$Res>
    extends _$OfflinePlayerSnapshotDtoCopyWithImpl<$Res>
    implements _$OfflinePlayerSnapshotDtoCopyWith<$Res> {
  __$OfflinePlayerSnapshotDtoCopyWithImpl(_OfflinePlayerSnapshotDto _value,
      $Res Function(_OfflinePlayerSnapshotDto) _then)
      : super(_value, (v) => _then(v as _OfflinePlayerSnapshotDto));

  @override
  _OfflinePlayerSnapshotDto get _value =>
      super._value as _OfflinePlayerSnapshotDto;

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
    return _then(_OfflinePlayerSnapshotDto(
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
    ));
  }
}

/// @nodoc

@Implements<AbstractPlayerSnapshotDto>()
class _$_OfflinePlayerSnapshotDto extends _OfflinePlayerSnapshotDto {
  const _$_OfflinePlayerSnapshotDto(
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
      this.stats})
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
  String toString() {
    return 'OfflinePlayerSnapshotDto(id: $id, name: $name, isCurrentTurn: $isCurrentTurn, won: $won, wonSets: $wonSets, wonLegsCurrentSet: $wonLegsCurrentSet, pointsLeft: $pointsLeft, finishRecommendation: $finishRecommendation, lastPoints: $lastPoints, dartsThrownCurrentLeg: $dartsThrownCurrentLeg, stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OfflinePlayerSnapshotDto &&
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
            const DeepCollectionEquality().equals(other.stats, stats));
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
      const DeepCollectionEquality().hash(stats));

  @JsonKey(ignore: true)
  @override
  _$OfflinePlayerSnapshotDtoCopyWith<_OfflinePlayerSnapshotDto> get copyWith =>
      __$OfflinePlayerSnapshotDtoCopyWithImpl<_OfflinePlayerSnapshotDto>(
          this, _$identity);
}

abstract class _OfflinePlayerSnapshotDto extends OfflinePlayerSnapshotDto
    implements AbstractPlayerSnapshotDto {
  const factory _OfflinePlayerSnapshotDto(
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
      PlayerStatsDto? stats}) = _$_OfflinePlayerSnapshotDto;
  const _OfflinePlayerSnapshotDto._() : super._();

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
  @JsonKey(ignore: true)
  _$OfflinePlayerSnapshotDtoCopyWith<_OfflinePlayerSnapshotDto> get copyWith =>
      throw _privateConstructorUsedError;
}
