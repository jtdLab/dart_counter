import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/set.dart';
import 'package:dart_counter/domain/play/stats.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'player.freezed.dart';

abstract class AbstractPlayer {
  UniqueId get id;
  String get name;
  KtList<Set> get sets;

  bool get won;
  int? get wonSets;
  int get wonLegsCurrentSet;
  int get pointsLeft;
  KtList<String>? get finishRecommendation;
  int? get lastPoints;
  int get dartsThrownCurrentLeg;
  Stats get stats;
}

abstract class AbstractOfflinePlayer extends AbstractPlayer {}

@freezed
class OfflinePlayer with _$OfflinePlayer implements AbstractOfflinePlayer {
  @Implements(AbstractOfflinePlayer)
  const factory OfflinePlayer({
    required UniqueId id,
    required String name,
    required KtList<Set> sets,
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
        sets: KtList.from(
          faker.randomGenerator.amount((i) => Set.dummy(), 9),
        ),
        won: false,
        wonLegsCurrentSet: 0,
        pointsLeft: 261,
        lastPoints: 120,
        dartsThrownCurrentLeg: 6,
        stats: Stats.dummy(),
      );
}

@freezed
class DartBot with _$DartBot implements AbstractOfflinePlayer {
  @Implements(AbstractOfflinePlayer)
  const factory DartBot({
    required UniqueId id,
    required String name,
    required KtList<Set> sets,
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
  }) = _DartBot;

  factory DartBot.dummy() => DartBot(
        id: UniqueId.fromUniqueString('dartBot'),
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
        sets: KtList.from(
          faker.randomGenerator.amount((i) => Set.dummy(), 9),
        ),
        won: false,
        wonLegsCurrentSet: 0,
        pointsLeft: 261,
        lastPoints: 120,
        dartsThrownCurrentLeg: 6,
        stats: Stats.dummy(),
      );
}

@freezed
class OnlinePlayer with _$OnlinePlayer implements AbstractPlayer {
  @Implements(AbstractPlayer)
  const factory OnlinePlayer({
    required UniqueId id,
    required String name,
    required KtList<Set> sets,
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
        sets: KtList.from(
          faker.randomGenerator.amount((i) => Set.dummy(), 9),
        ),
        won: false,
        wonLegsCurrentSet: 0,
        pointsLeft: 261,
        lastPoints: 120,
        dartsThrownCurrentLeg: 6,
        stats: Stats.dummy(),
      );
}
