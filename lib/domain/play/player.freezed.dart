// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlayerTearOff {
  const _$PlayerTearOff();

  _Player call(
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
      Stats stats = const Stats(
          average: 0.0,
          checkoutPercentage: 0.0,
          firstNineAverage: 0.0,
          fourtyPlus: 0,
          sixtyPlus: 0,
          eightyPlus: 0,
          hundredPlus: 0,
          hundredTwentyPlus: 0,
          hundredFourtyPlus: 0,
          hundredSixtyPlus: 0,
          hundredEighty: 0),
      KtList<Set> sets = const KtList.empty(),
      required bool isDartBot,
      UniqueId? userId}) {
    return _Player(
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
      isDartBot: isDartBot,
      userId: userId,
    );
  }
}

/// @nodoc
const $Player = _$PlayerTearOff();

/// @nodoc
mixin _$Player {
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
  Stats get stats => throw _privateConstructorUsedError;
  KtList<Set> get sets => throw _privateConstructorUsedError;
  bool get isDartBot => throw _privateConstructorUsedError;
  UniqueId? get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerCopyWith<Player> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res>;
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
      Stats stats,
      KtList<Set> sets,
      bool isDartBot,
      UniqueId? userId});

  $StatsCopyWith<$Res> get stats;
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res> implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  final Player _value;
  // ignore: unused_field
  final $Res Function(Player) _then;

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
    Object? isDartBot = freezed,
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
              as Stats,
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as KtList<Set>,
      isDartBot: isDartBot == freezed
          ? _value.isDartBot
          : isDartBot // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
    ));
  }

  @override
  $StatsCopyWith<$Res> get stats {
    return $StatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value));
    });
  }
}

/// @nodoc
abstract class _$PlayerCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$PlayerCopyWith(_Player value, $Res Function(_Player) then) =
      __$PlayerCopyWithImpl<$Res>;
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
      Stats stats,
      KtList<Set> sets,
      bool isDartBot,
      UniqueId? userId});

  @override
  $StatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$PlayerCopyWithImpl<$Res> extends _$PlayerCopyWithImpl<$Res>
    implements _$PlayerCopyWith<$Res> {
  __$PlayerCopyWithImpl(_Player _value, $Res Function(_Player) _then)
      : super(_value, (v) => _then(v as _Player));

  @override
  _Player get _value => super._value as _Player;

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
    Object? isDartBot = freezed,
    Object? userId = freezed,
  }) {
    return _then(_Player(
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
              as Stats,
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as KtList<Set>,
      isDartBot: isDartBot == freezed
          ? _value.isDartBot
          : isDartBot // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
    ));
  }
}

/// @nodoc

class _$_Player implements _Player {
  const _$_Player(
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
      this.stats = const Stats(
          average: 0.0,
          checkoutPercentage: 0.0,
          firstNineAverage: 0.0,
          fourtyPlus: 0,
          sixtyPlus: 0,
          eightyPlus: 0,
          hundredPlus: 0,
          hundredTwentyPlus: 0,
          hundredFourtyPlus: 0,
          hundredSixtyPlus: 0,
          hundredEighty: 0),
      this.sets = const KtList.empty(),
      required this.isDartBot,
      this.userId});

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
  @JsonKey(
      defaultValue: const Stats(
          average: 0.0,
          checkoutPercentage: 0.0,
          firstNineAverage: 0.0,
          fourtyPlus: 0,
          sixtyPlus: 0,
          eightyPlus: 0,
          hundredPlus: 0,
          hundredTwentyPlus: 0,
          hundredFourtyPlus: 0,
          hundredSixtyPlus: 0,
          hundredEighty: 0))
  @override
  final Stats stats;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<Set> sets;
  @override
  final bool isDartBot;
  @override
  final UniqueId? userId;

  @override
  String toString() {
    return 'Player(id: $id, name: $name, isCurrentTurn: $isCurrentTurn, won: $won, wonSets: $wonSets, wonLegsCurrentSet: $wonLegsCurrentSet, pointsLeft: $pointsLeft, finishRecommendation: $finishRecommendation, lastPoints: $lastPoints, dartsThrownCurrentLeg: $dartsThrownCurrentLeg, stats: $stats, sets: $sets, isDartBot: $isDartBot, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Player &&
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
            (identical(other.isDartBot, isDartBot) ||
                const DeepCollectionEquality()
                    .equals(other.isDartBot, isDartBot)) &&
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
      const DeepCollectionEquality().hash(isDartBot) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$PlayerCopyWith<_Player> get copyWith =>
      __$PlayerCopyWithImpl<_Player>(this, _$identity);
}

abstract class _Player implements Player {
  const factory _Player(
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
      Stats stats,
      KtList<Set> sets,
      required bool isDartBot,
      UniqueId? userId}) = _$_Player;

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
  Stats get stats => throw _privateConstructorUsedError;
  @override
  KtList<Set> get sets => throw _privateConstructorUsedError;
  @override
  bool get isDartBot => throw _privateConstructorUsedError;
  @override
  UniqueId? get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlayerCopyWith<_Player> get copyWith => throw _privateConstructorUsedError;
}
