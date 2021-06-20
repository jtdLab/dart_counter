// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'player_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayerDto _$PlayerDtoFromJson(Map<String, dynamic> json) {
  return _PlayerDto.fromJson(json);
}

/// @nodoc
class _$PlayerDtoTearOff {
  const _$PlayerDtoTearOff();

  _PlayerDto call(
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
      List<SetDto>? sets}) {
    return _PlayerDto(
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
      sets: sets,
    );
  }

  PlayerDto fromJson(Map<String, Object> json) {
    return PlayerDto.fromJson(json);
  }
}

/// @nodoc
const $PlayerDto = _$PlayerDtoTearOff();

/// @nodoc
mixin _$PlayerDto {
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
  List<SetDto>? get sets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerDtoCopyWith<PlayerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerDtoCopyWith<$Res> {
  factory $PlayerDtoCopyWith(PlayerDto value, $Res Function(PlayerDto) then) =
      _$PlayerDtoCopyWithImpl<$Res>;
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
      List<SetDto>? sets});

  $StatsDtoCopyWith<$Res>? get stats;
}

/// @nodoc
class _$PlayerDtoCopyWithImpl<$Res> implements $PlayerDtoCopyWith<$Res> {
  _$PlayerDtoCopyWithImpl(this._value, this._then);

  final PlayerDto _value;
  // ignore: unused_field
  final $Res Function(PlayerDto) _then;

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
    Object? sets = freezed,
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
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<SetDto>?,
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
abstract class _$PlayerDtoCopyWith<$Res> implements $PlayerDtoCopyWith<$Res> {
  factory _$PlayerDtoCopyWith(
          _PlayerDto value, $Res Function(_PlayerDto) then) =
      __$PlayerDtoCopyWithImpl<$Res>;
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
      List<SetDto>? sets});

  @override
  $StatsDtoCopyWith<$Res>? get stats;
}

/// @nodoc
class __$PlayerDtoCopyWithImpl<$Res> extends _$PlayerDtoCopyWithImpl<$Res>
    implements _$PlayerDtoCopyWith<$Res> {
  __$PlayerDtoCopyWithImpl(_PlayerDto _value, $Res Function(_PlayerDto) _then)
      : super(_value, (v) => _then(v as _PlayerDto));

  @override
  _PlayerDto get _value => super._value as _PlayerDto;

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
    Object? sets = freezed,
  }) {
    return _then(_PlayerDto(
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
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<SetDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlayerDto extends _PlayerDto {
  const _$_PlayerDto(
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
      this.sets})
      : super._();

  factory _$_PlayerDto.fromJson(Map<String, dynamic> json) =>
      _$_$_PlayerDtoFromJson(json);

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
  final List<SetDto>? sets;

  @override
  String toString() {
    return 'PlayerDto(id: $id, name: $name, isCurrentTurn: $isCurrentTurn, won: $won, wonSets: $wonSets, wonLegsCurrentSet: $wonLegsCurrentSet, pointsLeft: $pointsLeft, finishRecommendation: $finishRecommendation, lastPoints: $lastPoints, dartsThrownCurrentLeg: $dartsThrownCurrentLeg, stats: $stats, sets: $sets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayerDto &&
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
            (identical(other.sets, sets) ||
                const DeepCollectionEquality().equals(other.sets, sets)));
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
      const DeepCollectionEquality().hash(sets);

  @JsonKey(ignore: true)
  @override
  _$PlayerDtoCopyWith<_PlayerDto> get copyWith =>
      __$PlayerDtoCopyWithImpl<_PlayerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlayerDtoToJson(this);
  }
}

abstract class _PlayerDto extends PlayerDto {
  const factory _PlayerDto(
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
      List<SetDto>? sets}) = _$_PlayerDto;
  const _PlayerDto._() : super._();

  factory _PlayerDto.fromJson(Map<String, dynamic> json) =
      _$_PlayerDto.fromJson;

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
  List<SetDto>? get sets => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlayerDtoCopyWith<_PlayerDto> get copyWith =>
      throw _privateConstructorUsedError;
}
