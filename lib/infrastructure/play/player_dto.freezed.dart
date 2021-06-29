// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'player_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OfflinePlayerDto _$OfflinePlayerDtoFromJson(Map<String, dynamic> json) {
  return _OfflinePlayerDto.fromJson(json);
}

/// @nodoc
class _$OfflinePlayerDtoTearOff {
  const _$OfflinePlayerDtoTearOff();

  _OfflinePlayerDto call(
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
    return _OfflinePlayerDto(
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

  OfflinePlayerDto fromJson(Map<String, Object> json) {
    return OfflinePlayerDto.fromJson(json);
  }
}

/// @nodoc
const $OfflinePlayerDto = _$OfflinePlayerDtoTearOff();

/// @nodoc
mixin _$OfflinePlayerDto {
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
  $OfflinePlayerDtoCopyWith<OfflinePlayerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflinePlayerDtoCopyWith<$Res> {
  factory $OfflinePlayerDtoCopyWith(
          OfflinePlayerDto value, $Res Function(OfflinePlayerDto) then) =
      _$OfflinePlayerDtoCopyWithImpl<$Res>;
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
class _$OfflinePlayerDtoCopyWithImpl<$Res>
    implements $OfflinePlayerDtoCopyWith<$Res> {
  _$OfflinePlayerDtoCopyWithImpl(this._value, this._then);

  final OfflinePlayerDto _value;
  // ignore: unused_field
  final $Res Function(OfflinePlayerDto) _then;

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
abstract class _$OfflinePlayerDtoCopyWith<$Res>
    implements $OfflinePlayerDtoCopyWith<$Res> {
  factory _$OfflinePlayerDtoCopyWith(
          _OfflinePlayerDto value, $Res Function(_OfflinePlayerDto) then) =
      __$OfflinePlayerDtoCopyWithImpl<$Res>;
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
class __$OfflinePlayerDtoCopyWithImpl<$Res>
    extends _$OfflinePlayerDtoCopyWithImpl<$Res>
    implements _$OfflinePlayerDtoCopyWith<$Res> {
  __$OfflinePlayerDtoCopyWithImpl(
      _OfflinePlayerDto _value, $Res Function(_OfflinePlayerDto) _then)
      : super(_value, (v) => _then(v as _OfflinePlayerDto));

  @override
  _OfflinePlayerDto get _value => super._value as _OfflinePlayerDto;

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
    return _then(_OfflinePlayerDto(
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
@Implements(PlayerDto)
class _$_OfflinePlayerDto extends _OfflinePlayerDto {
  const _$_OfflinePlayerDto(
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

  factory _$_OfflinePlayerDto.fromJson(Map<String, dynamic> json) =>
      _$_$_OfflinePlayerDtoFromJson(json);

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
    return 'OfflinePlayerDto(id: $id, name: $name, isCurrentTurn: $isCurrentTurn, won: $won, wonSets: $wonSets, wonLegsCurrentSet: $wonLegsCurrentSet, pointsLeft: $pointsLeft, finishRecommendation: $finishRecommendation, lastPoints: $lastPoints, dartsThrownCurrentLeg: $dartsThrownCurrentLeg, stats: $stats, sets: $sets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OfflinePlayerDto &&
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
  _$OfflinePlayerDtoCopyWith<_OfflinePlayerDto> get copyWith =>
      __$OfflinePlayerDtoCopyWithImpl<_OfflinePlayerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OfflinePlayerDtoToJson(this);
  }
}

abstract class _OfflinePlayerDto extends OfflinePlayerDto implements PlayerDto {
  const factory _OfflinePlayerDto(
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
      List<SetDto>? sets}) = _$_OfflinePlayerDto;
  const _OfflinePlayerDto._() : super._();

  factory _OfflinePlayerDto.fromJson(Map<String, dynamic> json) =
      _$_OfflinePlayerDto.fromJson;

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
  _$OfflinePlayerDtoCopyWith<_OfflinePlayerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

OnlinePlayerDto _$OnlinePlayerDtoFromJson(Map<String, dynamic> json) {
  return _OnlinePlayerDto.fromJson(json);
}

/// @nodoc
class _$OnlinePlayerDtoTearOff {
  const _$OnlinePlayerDtoTearOff();

  _OnlinePlayerDto call(
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
      List<SetDto>? sets,
      required String userId}) {
    return _OnlinePlayerDto(
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
      userId: userId,
    );
  }

  OnlinePlayerDto fromJson(Map<String, Object> json) {
    return OnlinePlayerDto.fromJson(json);
  }
}

/// @nodoc
const $OnlinePlayerDto = _$OnlinePlayerDtoTearOff();

/// @nodoc
mixin _$OnlinePlayerDto {
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
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnlinePlayerDtoCopyWith<OnlinePlayerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlinePlayerDtoCopyWith<$Res> {
  factory $OnlinePlayerDtoCopyWith(
          OnlinePlayerDto value, $Res Function(OnlinePlayerDto) then) =
      _$OnlinePlayerDtoCopyWithImpl<$Res>;
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
      List<SetDto>? sets,
      String userId});

  $StatsDtoCopyWith<$Res>? get stats;
}

/// @nodoc
class _$OnlinePlayerDtoCopyWithImpl<$Res>
    implements $OnlinePlayerDtoCopyWith<$Res> {
  _$OnlinePlayerDtoCopyWithImpl(this._value, this._then);

  final OnlinePlayerDto _value;
  // ignore: unused_field
  final $Res Function(OnlinePlayerDto) _then;

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
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<SetDto>?,
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
abstract class _$OnlinePlayerDtoCopyWith<$Res>
    implements $OnlinePlayerDtoCopyWith<$Res> {
  factory _$OnlinePlayerDtoCopyWith(
          _OnlinePlayerDto value, $Res Function(_OnlinePlayerDto) then) =
      __$OnlinePlayerDtoCopyWithImpl<$Res>;
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
      List<SetDto>? sets,
      String userId});

  @override
  $StatsDtoCopyWith<$Res>? get stats;
}

/// @nodoc
class __$OnlinePlayerDtoCopyWithImpl<$Res>
    extends _$OnlinePlayerDtoCopyWithImpl<$Res>
    implements _$OnlinePlayerDtoCopyWith<$Res> {
  __$OnlinePlayerDtoCopyWithImpl(
      _OnlinePlayerDto _value, $Res Function(_OnlinePlayerDto) _then)
      : super(_value, (v) => _then(v as _OnlinePlayerDto));

  @override
  _OnlinePlayerDto get _value => super._value as _OnlinePlayerDto;

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
    Object? userId = freezed,
  }) {
    return _then(_OnlinePlayerDto(
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
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(PlayerDto)
class _$_OnlinePlayerDto extends _OnlinePlayerDto {
  const _$_OnlinePlayerDto(
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
      this.sets,
      required this.userId})
      : super._();

  factory _$_OnlinePlayerDto.fromJson(Map<String, dynamic> json) =>
      _$_$_OnlinePlayerDtoFromJson(json);

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
  final String userId;

  @override
  String toString() {
    return 'OnlinePlayerDto(id: $id, name: $name, isCurrentTurn: $isCurrentTurn, won: $won, wonSets: $wonSets, wonLegsCurrentSet: $wonLegsCurrentSet, pointsLeft: $pointsLeft, finishRecommendation: $finishRecommendation, lastPoints: $lastPoints, dartsThrownCurrentLeg: $dartsThrownCurrentLeg, stats: $stats, sets: $sets, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnlinePlayerDto &&
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
                const DeepCollectionEquality().equals(other.sets, sets)) &&
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
      const DeepCollectionEquality().hash(sets) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$OnlinePlayerDtoCopyWith<_OnlinePlayerDto> get copyWith =>
      __$OnlinePlayerDtoCopyWithImpl<_OnlinePlayerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OnlinePlayerDtoToJson(this);
  }
}

abstract class _OnlinePlayerDto extends OnlinePlayerDto implements PlayerDto {
  const factory _OnlinePlayerDto(
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
      List<SetDto>? sets,
      required String userId}) = _$_OnlinePlayerDto;
  const _OnlinePlayerDto._() : super._();

  factory _OnlinePlayerDto.fromJson(Map<String, dynamic> json) =
      _$_OnlinePlayerDto.fromJson;

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
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OnlinePlayerDtoCopyWith<_OnlinePlayerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

DartBotDto _$DartBotDtoFromJson(Map<String, dynamic> json) {
  return _DartBotDto.fromJson(json);
}

/// @nodoc
class _$DartBotDtoTearOff {
  const _$DartBotDtoTearOff();

  _DartBotDto call(
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
      List<SetDto>? sets,
      required int targetAverage}) {
    return _DartBotDto(
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
      targetAverage: targetAverage,
    );
  }

  DartBotDto fromJson(Map<String, Object> json) {
    return DartBotDto.fromJson(json);
  }
}

/// @nodoc
const $DartBotDto = _$DartBotDtoTearOff();

/// @nodoc
mixin _$DartBotDto {
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
  int get targetAverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DartBotDtoCopyWith<DartBotDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DartBotDtoCopyWith<$Res> {
  factory $DartBotDtoCopyWith(
          DartBotDto value, $Res Function(DartBotDto) then) =
      _$DartBotDtoCopyWithImpl<$Res>;
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
      List<SetDto>? sets,
      int targetAverage});

  $StatsDtoCopyWith<$Res>? get stats;
}

/// @nodoc
class _$DartBotDtoCopyWithImpl<$Res> implements $DartBotDtoCopyWith<$Res> {
  _$DartBotDtoCopyWithImpl(this._value, this._then);

  final DartBotDto _value;
  // ignore: unused_field
  final $Res Function(DartBotDto) _then;

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
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<SetDto>?,
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
abstract class _$DartBotDtoCopyWith<$Res> implements $DartBotDtoCopyWith<$Res> {
  factory _$DartBotDtoCopyWith(
          _DartBotDto value, $Res Function(_DartBotDto) then) =
      __$DartBotDtoCopyWithImpl<$Res>;
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
      List<SetDto>? sets,
      int targetAverage});

  @override
  $StatsDtoCopyWith<$Res>? get stats;
}

/// @nodoc
class __$DartBotDtoCopyWithImpl<$Res> extends _$DartBotDtoCopyWithImpl<$Res>
    implements _$DartBotDtoCopyWith<$Res> {
  __$DartBotDtoCopyWithImpl(
      _DartBotDto _value, $Res Function(_DartBotDto) _then)
      : super(_value, (v) => _then(v as _DartBotDto));

  @override
  _DartBotDto get _value => super._value as _DartBotDto;

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
    Object? targetAverage = freezed,
  }) {
    return _then(_DartBotDto(
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
      targetAverage: targetAverage == freezed
          ? _value.targetAverage
          : targetAverage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(PlayerDto)
class _$_DartBotDto extends _DartBotDto {
  const _$_DartBotDto(
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
      this.sets,
      required this.targetAverage})
      : super._();

  factory _$_DartBotDto.fromJson(Map<String, dynamic> json) =>
      _$_$_DartBotDtoFromJson(json);

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
  final int targetAverage;

  @override
  String toString() {
    return 'DartBotDto(id: $id, name: $name, isCurrentTurn: $isCurrentTurn, won: $won, wonSets: $wonSets, wonLegsCurrentSet: $wonLegsCurrentSet, pointsLeft: $pointsLeft, finishRecommendation: $finishRecommendation, lastPoints: $lastPoints, dartsThrownCurrentLeg: $dartsThrownCurrentLeg, stats: $stats, sets: $sets, targetAverage: $targetAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DartBotDto &&
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
                const DeepCollectionEquality().equals(other.sets, sets)) &&
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
      const DeepCollectionEquality().hash(sets) ^
      const DeepCollectionEquality().hash(targetAverage);

  @JsonKey(ignore: true)
  @override
  _$DartBotDtoCopyWith<_DartBotDto> get copyWith =>
      __$DartBotDtoCopyWithImpl<_DartBotDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DartBotDtoToJson(this);
  }
}

abstract class _DartBotDto extends DartBotDto implements PlayerDto {
  const factory _DartBotDto(
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
      List<SetDto>? sets,
      required int targetAverage}) = _$_DartBotDto;
  const _DartBotDto._() : super._();

  factory _DartBotDto.fromJson(Map<String, dynamic> json) =
      _$_DartBotDto.fromJson;

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
  int get targetAverage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DartBotDtoCopyWith<_DartBotDto> get copyWith =>
      throw _privateConstructorUsedError;
}
