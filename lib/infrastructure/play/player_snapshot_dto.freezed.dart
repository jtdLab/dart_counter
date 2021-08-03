// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'player_snapshot_dto.dart';

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
      required String name,
      bool? isCurrentTurn,
      bool? won,
      int? wonSets,
      int? wonLegsCurrentSet,
      int? pointsLeft,
      List<String>? finishRecommendation,
      int? lastPoints,
      int? dartsThrownCurrentLeg,
      StatsDto? stats}) {
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
  String get name => throw _privateConstructorUsedError;
  bool? get isCurrentTurn => throw _privateConstructorUsedError;
  bool? get won => throw _privateConstructorUsedError;
  int? get wonSets => throw _privateConstructorUsedError;
  int? get wonLegsCurrentSet => throw _privateConstructorUsedError;
  int? get pointsLeft => throw _privateConstructorUsedError;
  List<String>? get finishRecommendation => throw _privateConstructorUsedError;
  int? get lastPoints => throw _privateConstructorUsedError;
  int? get dartsThrownCurrentLeg => throw _privateConstructorUsedError;
  StatsDto? get stats => throw _privateConstructorUsedError;

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
      String name,
      bool? isCurrentTurn,
      bool? won,
      int? wonSets,
      int? wonLegsCurrentSet,
      int? pointsLeft,
      List<String>? finishRecommendation,
      int? lastPoints,
      int? dartsThrownCurrentLeg,
      StatsDto? stats});

  $StatsDtoCopyWith<$Res>? get stats;
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
              as StatsDto?,
    ));
  }

  @override
  $StatsDtoCopyWith<$Res>? get stats {
    if (_value.stats == null) {
      return null;
    }

    return $StatsDtoCopyWith<$Res>(_value.stats!, (value) {
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
      String name,
      bool? isCurrentTurn,
      bool? won,
      int? wonSets,
      int? wonLegsCurrentSet,
      int? pointsLeft,
      List<String>? finishRecommendation,
      int? lastPoints,
      int? dartsThrownCurrentLeg,
      StatsDto? stats});

  @override
  $StatsDtoCopyWith<$Res>? get stats;
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
              as StatsDto?,
    ));
  }
}

/// @nodoc

@Implements(AbstractOfflinePlayerSnapshotDto)
class _$_OfflinePlayerSnapshotDto extends _OfflinePlayerSnapshotDto {
  const _$_OfflinePlayerSnapshotDto(
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
      this.stats})
      : super._();

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
  final List<String>? finishRecommendation;
  @override
  final int? lastPoints;
  @override
  final int? dartsThrownCurrentLeg;
  @override
  final StatsDto? stats;

  @override
  String toString() {
    return 'OfflinePlayerSnapshotDto(id: $id, name: $name, isCurrentTurn: $isCurrentTurn, won: $won, wonSets: $wonSets, wonLegsCurrentSet: $wonLegsCurrentSet, pointsLeft: $pointsLeft, finishRecommendation: $finishRecommendation, lastPoints: $lastPoints, dartsThrownCurrentLeg: $dartsThrownCurrentLeg, stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OfflinePlayerSnapshotDto &&
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
  _$OfflinePlayerSnapshotDtoCopyWith<_OfflinePlayerSnapshotDto> get copyWith =>
      __$OfflinePlayerSnapshotDtoCopyWithImpl<_OfflinePlayerSnapshotDto>(
          this, _$identity);
}

abstract class _OfflinePlayerSnapshotDto extends OfflinePlayerSnapshotDto
    implements AbstractOfflinePlayerSnapshotDto {
  const factory _OfflinePlayerSnapshotDto(
      {required String id,
      required String name,
      bool? isCurrentTurn,
      bool? won,
      int? wonSets,
      int? wonLegsCurrentSet,
      int? pointsLeft,
      List<String>? finishRecommendation,
      int? lastPoints,
      int? dartsThrownCurrentLeg,
      StatsDto? stats}) = _$_OfflinePlayerSnapshotDto;
  const _OfflinePlayerSnapshotDto._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  bool? get isCurrentTurn => throw _privateConstructorUsedError;
  @override
  bool? get won => throw _privateConstructorUsedError;
  @override
  int? get wonSets => throw _privateConstructorUsedError;
  @override
  int? get wonLegsCurrentSet => throw _privateConstructorUsedError;
  @override
  int? get pointsLeft => throw _privateConstructorUsedError;
  @override
  List<String>? get finishRecommendation => throw _privateConstructorUsedError;
  @override
  int? get lastPoints => throw _privateConstructorUsedError;
  @override
  int? get dartsThrownCurrentLeg => throw _privateConstructorUsedError;
  @override
  StatsDto? get stats => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OfflinePlayerSnapshotDtoCopyWith<_OfflinePlayerSnapshotDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DartBotSnapshotDtoTearOff {
  const _$DartBotSnapshotDtoTearOff();

  _DartBotSnapshotDto call(
      {required String id,
      required String name,
      bool? isCurrentTurn,
      bool? won,
      int? wonSets,
      int? wonLegsCurrentSet,
      int? pointsLeft,
      List<String>? finishRecommendation,
      int? lastPoints,
      int? dartsThrownCurrentLeg,
      StatsDto? stats,
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
  String get name => throw _privateConstructorUsedError;
  bool? get isCurrentTurn => throw _privateConstructorUsedError;
  bool? get won => throw _privateConstructorUsedError;
  int? get wonSets => throw _privateConstructorUsedError;
  int? get wonLegsCurrentSet => throw _privateConstructorUsedError;
  int? get pointsLeft => throw _privateConstructorUsedError;
  List<String>? get finishRecommendation => throw _privateConstructorUsedError;
  int? get lastPoints => throw _privateConstructorUsedError;
  int? get dartsThrownCurrentLeg => throw _privateConstructorUsedError;
  StatsDto? get stats => throw _privateConstructorUsedError;
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
      String name,
      bool? isCurrentTurn,
      bool? won,
      int? wonSets,
      int? wonLegsCurrentSet,
      int? pointsLeft,
      List<String>? finishRecommendation,
      int? lastPoints,
      int? dartsThrownCurrentLeg,
      StatsDto? stats,
      int targetAverage});

  $StatsDtoCopyWith<$Res>? get stats;
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
              as StatsDto?,
      targetAverage: targetAverage == freezed
          ? _value.targetAverage
          : targetAverage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $StatsDtoCopyWith<$Res>? get stats {
    if (_value.stats == null) {
      return null;
    }

    return $StatsDtoCopyWith<$Res>(_value.stats!, (value) {
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
      String name,
      bool? isCurrentTurn,
      bool? won,
      int? wonSets,
      int? wonLegsCurrentSet,
      int? pointsLeft,
      List<String>? finishRecommendation,
      int? lastPoints,
      int? dartsThrownCurrentLeg,
      StatsDto? stats,
      int targetAverage});

  @override
  $StatsDtoCopyWith<$Res>? get stats;
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
              as StatsDto?,
      targetAverage: targetAverage == freezed
          ? _value.targetAverage
          : targetAverage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@Implements(AbstractOfflinePlayerSnapshotDto)
class _$_DartBotSnapshotDto extends _DartBotSnapshotDto {
  const _$_DartBotSnapshotDto(
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
      required this.targetAverage})
      : super._();

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
  final List<String>? finishRecommendation;
  @override
  final int? lastPoints;
  @override
  final int? dartsThrownCurrentLeg;
  @override
  final StatsDto? stats;
  @override
  final int targetAverage;

  @override
  String toString() {
    return 'DartBotSnapshotDto(id: $id, name: $name, isCurrentTurn: $isCurrentTurn, won: $won, wonSets: $wonSets, wonLegsCurrentSet: $wonLegsCurrentSet, pointsLeft: $pointsLeft, finishRecommendation: $finishRecommendation, lastPoints: $lastPoints, dartsThrownCurrentLeg: $dartsThrownCurrentLeg, stats: $stats, targetAverage: $targetAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DartBotSnapshotDto &&
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
  _$DartBotSnapshotDtoCopyWith<_DartBotSnapshotDto> get copyWith =>
      __$DartBotSnapshotDtoCopyWithImpl<_DartBotSnapshotDto>(this, _$identity);
}

abstract class _DartBotSnapshotDto extends DartBotSnapshotDto
    implements AbstractOfflinePlayerSnapshotDto {
  const factory _DartBotSnapshotDto(
      {required String id,
      required String name,
      bool? isCurrentTurn,
      bool? won,
      int? wonSets,
      int? wonLegsCurrentSet,
      int? pointsLeft,
      List<String>? finishRecommendation,
      int? lastPoints,
      int? dartsThrownCurrentLeg,
      StatsDto? stats,
      required int targetAverage}) = _$_DartBotSnapshotDto;
  const _DartBotSnapshotDto._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  bool? get isCurrentTurn => throw _privateConstructorUsedError;
  @override
  bool? get won => throw _privateConstructorUsedError;
  @override
  int? get wonSets => throw _privateConstructorUsedError;
  @override
  int? get wonLegsCurrentSet => throw _privateConstructorUsedError;
  @override
  int? get pointsLeft => throw _privateConstructorUsedError;
  @override
  List<String>? get finishRecommendation => throw _privateConstructorUsedError;
  @override
  int? get lastPoints => throw _privateConstructorUsedError;
  @override
  int? get dartsThrownCurrentLeg => throw _privateConstructorUsedError;
  @override
  StatsDto? get stats => throw _privateConstructorUsedError;
  @override
  int get targetAverage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DartBotSnapshotDtoCopyWith<_DartBotSnapshotDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OnlinePlayerSnapshotDtoTearOff {
  const _$OnlinePlayerSnapshotDtoTearOff();

  _OnlinePlayerSnapshotDto call(
      {required String id,
      required String name,
      bool? isCurrentTurn,
      bool? won,
      int? wonSets,
      int? wonLegsCurrentSet,
      int? pointsLeft,
      List<String>? finishRecommendation,
      int? lastPoints,
      int? dartsThrownCurrentLeg,
      StatsDto? stats,
      required String userId}) {
    return _OnlinePlayerSnapshotDto(
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
const $OnlinePlayerSnapshotDto = _$OnlinePlayerSnapshotDtoTearOff();

/// @nodoc
mixin _$OnlinePlayerSnapshotDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool? get isCurrentTurn => throw _privateConstructorUsedError;
  bool? get won => throw _privateConstructorUsedError;
  int? get wonSets => throw _privateConstructorUsedError;
  int? get wonLegsCurrentSet => throw _privateConstructorUsedError;
  int? get pointsLeft => throw _privateConstructorUsedError;
  List<String>? get finishRecommendation => throw _privateConstructorUsedError;
  int? get lastPoints => throw _privateConstructorUsedError;
  int? get dartsThrownCurrentLeg => throw _privateConstructorUsedError;
  StatsDto? get stats => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnlinePlayerSnapshotDtoCopyWith<OnlinePlayerSnapshotDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlinePlayerSnapshotDtoCopyWith<$Res> {
  factory $OnlinePlayerSnapshotDtoCopyWith(OnlinePlayerSnapshotDto value,
          $Res Function(OnlinePlayerSnapshotDto) then) =
      _$OnlinePlayerSnapshotDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      bool? isCurrentTurn,
      bool? won,
      int? wonSets,
      int? wonLegsCurrentSet,
      int? pointsLeft,
      List<String>? finishRecommendation,
      int? lastPoints,
      int? dartsThrownCurrentLeg,
      StatsDto? stats,
      String userId});

  $StatsDtoCopyWith<$Res>? get stats;
}

/// @nodoc
class _$OnlinePlayerSnapshotDtoCopyWithImpl<$Res>
    implements $OnlinePlayerSnapshotDtoCopyWith<$Res> {
  _$OnlinePlayerSnapshotDtoCopyWithImpl(this._value, this._then);

  final OnlinePlayerSnapshotDto _value;
  // ignore: unused_field
  final $Res Function(OnlinePlayerSnapshotDto) _then;

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
              as StatsDto?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $StatsDtoCopyWith<$Res>? get stats {
    if (_value.stats == null) {
      return null;
    }

    return $StatsDtoCopyWith<$Res>(_value.stats!, (value) {
      return _then(_value.copyWith(stats: value));
    });
  }
}

/// @nodoc
abstract class _$OnlinePlayerSnapshotDtoCopyWith<$Res>
    implements $OnlinePlayerSnapshotDtoCopyWith<$Res> {
  factory _$OnlinePlayerSnapshotDtoCopyWith(_OnlinePlayerSnapshotDto value,
          $Res Function(_OnlinePlayerSnapshotDto) then) =
      __$OnlinePlayerSnapshotDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      bool? isCurrentTurn,
      bool? won,
      int? wonSets,
      int? wonLegsCurrentSet,
      int? pointsLeft,
      List<String>? finishRecommendation,
      int? lastPoints,
      int? dartsThrownCurrentLeg,
      StatsDto? stats,
      String userId});

  @override
  $StatsDtoCopyWith<$Res>? get stats;
}

/// @nodoc
class __$OnlinePlayerSnapshotDtoCopyWithImpl<$Res>
    extends _$OnlinePlayerSnapshotDtoCopyWithImpl<$Res>
    implements _$OnlinePlayerSnapshotDtoCopyWith<$Res> {
  __$OnlinePlayerSnapshotDtoCopyWithImpl(_OnlinePlayerSnapshotDto _value,
      $Res Function(_OnlinePlayerSnapshotDto) _then)
      : super(_value, (v) => _then(v as _OnlinePlayerSnapshotDto));

  @override
  _OnlinePlayerSnapshotDto get _value =>
      super._value as _OnlinePlayerSnapshotDto;

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
    return _then(_OnlinePlayerSnapshotDto(
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
              as StatsDto?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements(AbstractPlayerSnapshotDto)
class _$_OnlinePlayerSnapshotDto extends _OnlinePlayerSnapshotDto {
  const _$_OnlinePlayerSnapshotDto(
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
      required this.userId})
      : super._();

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
  final List<String>? finishRecommendation;
  @override
  final int? lastPoints;
  @override
  final int? dartsThrownCurrentLeg;
  @override
  final StatsDto? stats;
  @override
  final String userId;

  @override
  String toString() {
    return 'OnlinePlayerSnapshotDto(id: $id, name: $name, isCurrentTurn: $isCurrentTurn, won: $won, wonSets: $wonSets, wonLegsCurrentSet: $wonLegsCurrentSet, pointsLeft: $pointsLeft, finishRecommendation: $finishRecommendation, lastPoints: $lastPoints, dartsThrownCurrentLeg: $dartsThrownCurrentLeg, stats: $stats, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnlinePlayerSnapshotDto &&
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
  _$OnlinePlayerSnapshotDtoCopyWith<_OnlinePlayerSnapshotDto> get copyWith =>
      __$OnlinePlayerSnapshotDtoCopyWithImpl<_OnlinePlayerSnapshotDto>(
          this, _$identity);
}

abstract class _OnlinePlayerSnapshotDto extends OnlinePlayerSnapshotDto
    implements AbstractPlayerSnapshotDto {
  const factory _OnlinePlayerSnapshotDto(
      {required String id,
      required String name,
      bool? isCurrentTurn,
      bool? won,
      int? wonSets,
      int? wonLegsCurrentSet,
      int? pointsLeft,
      List<String>? finishRecommendation,
      int? lastPoints,
      int? dartsThrownCurrentLeg,
      StatsDto? stats,
      required String userId}) = _$_OnlinePlayerSnapshotDto;
  const _OnlinePlayerSnapshotDto._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  bool? get isCurrentTurn => throw _privateConstructorUsedError;
  @override
  bool? get won => throw _privateConstructorUsedError;
  @override
  int? get wonSets => throw _privateConstructorUsedError;
  @override
  int? get wonLegsCurrentSet => throw _privateConstructorUsedError;
  @override
  int? get pointsLeft => throw _privateConstructorUsedError;
  @override
  List<String>? get finishRecommendation => throw _privateConstructorUsedError;
  @override
  int? get lastPoints => throw _privateConstructorUsedError;
  @override
  int? get dartsThrownCurrentLeg => throw _privateConstructorUsedError;
  @override
  StatsDto? get stats => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OnlinePlayerSnapshotDtoCopyWith<_OnlinePlayerSnapshotDto> get copyWith =>
      throw _privateConstructorUsedError;
}
