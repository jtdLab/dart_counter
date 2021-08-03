import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/set.dart';
import 'package:dart_counter/domain/play/stats.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'player.freezed.dart';

abstract class Player {
  UniqueId get id;
  String get name;
  bool get isCurrentTurn;
  bool get won;
  int? get wonSets;
  int get wonLegsCurrentSet;
  int get pointsLeft;
  KtList<String>? get finishRecommendation;
  int? get lastPoints;
  int get dartsThrownCurrentLeg;
  Stats get stats;
  KtList<Set> get sets;
}

@freezed
class OfflinePlayer with _$OfflinePlayer implements Player {
  @Implements(Player)
  const factory OfflinePlayer({
    required UniqueId id,
    required String name,
    @Default(false)
        bool isCurrentTurn,
    @Default(false)
        bool won,
    int? wonSets,
    @Default(0)
        int wonLegsCurrentSet,
    @Default(0)
        int pointsLeft,
    KtList<String>? finishRecommendation,
    int? lastPoints,
    @Default(0)
        int dartsThrownCurrentLeg,
    @Default(
      Stats(),
    )
        Stats stats,
    required KtList<Set> sets,
  }) = _OfflinePlayer;

  factory OfflinePlayer.dummy() => OfflinePlayer(
        id: UniqueId.fromUniqueString(
          faker.randomGenerator.string(28, min: 28),
        ),
        name: faker.randomGenerator.element([
          'David88',
          'mrjosch',
          'SebiAbi69',
          'HoeHoe',
          'Soldier48',
          'Needs',
          'egesit',
          'AnisAbi',
        ]),
        isCurrentTurn: true,
        won: false,
        wonLegsCurrentSet: 0,
        pointsLeft: 261,
        lastPoints: 120,
        dartsThrownCurrentLeg: 6,
        stats: Stats.dummy(),
        sets: KtList.from(
          faker.randomGenerator.amount((i) => Set.dummy(), 9),
        ),
      );
}

@freezed
class OnlinePlayer with _$OnlinePlayer implements Player {
  @Implements(Player)
  const factory OnlinePlayer({
    required UniqueId id,
    required String name,
    @Default(false)
        bool isCurrentTurn,
    @Default(false)
        bool won,
    int? wonSets,
    @Default(0)
        int wonLegsCurrentSet,
    @Default(0)
        int pointsLeft,
    KtList<String>? finishRecommendation,
    int? lastPoints,
    @Default(0)
        int dartsThrownCurrentLeg,
    @Default(
      Stats(),
    )
        Stats stats,
    required KtList<Set> sets,
    required UniqueId userId,
  }) = _OnlinePlayer;

  factory OnlinePlayer.dummy() => OnlinePlayer(
        id: UniqueId.fromUniqueString(
          faker.randomGenerator.string(28, min: 28),
        ),
        name: faker.randomGenerator.element([
          'David88',
          'mrjosch',
          'SebiAbi69',
          'HoeHoe',
          'Soldier48',
          'Needs',
          'egesit',
          'AnisAbi',
        ]),
        isCurrentTurn: true,
        won: false,
        wonLegsCurrentSet: 0,
        pointsLeft: 261,
        lastPoints: 120,
        dartsThrownCurrentLeg: 6,
        stats: Stats.dummy(),
        sets: KtList.from(
          faker.randomGenerator.amount((i) => Set.dummy(), 9),
        ),
        userId: UniqueId.fromUniqueString(
          faker.randomGenerator.string(28, min: 28),
        ),
      );
}

@freezed
class DartBot with _$DartBot implements Player {
  @Implements(Player)
  const factory DartBot({
    required UniqueId id,
    required String name,
    @Default(false)
        bool isCurrentTurn,
    @Default(false)
        bool won,
    int? wonSets,
    @Default(0)
        int wonLegsCurrentSet,
    @Default(0)
        int pointsLeft,
    KtList<String>? finishRecommendation,
    int? lastPoints,
    @Default(0)
        int dartsThrownCurrentLeg,
    @Default(
      Stats(),
    )
        Stats stats,
    required KtList<Set> sets,
    @Default(0)
        int targetAverage,
  }) = _DartBot;

  factory DartBot.dummy() => DartBot(
        id: UniqueId.fromUniqueString(
          faker.randomGenerator.string(28, min: 28),
        ),
        name: faker.randomGenerator.element([
          'David88',
          'mrjosch',
          'SebiAbi69',
          'HoeHoe',
          'Soldier48',
          'Needs',
          'egesit',
          'AnisAbi',
        ]),
        isCurrentTurn: true,
        won: false,
        wonLegsCurrentSet: 0,
        pointsLeft: 261,
        lastPoints: 120,
        dartsThrownCurrentLeg: 6,
        stats: Stats.dummy(),
        sets: KtList.from(
          faker.randomGenerator.amount((i) => Set.dummy(), 9),
        ),
      );
}
