import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/stats.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'player_snapshot.freezed.dart';

abstract class AbstractPlayerSnapshot {
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
  PlayerStats get stats;
}

abstract class AbstractOfflinePlayerSnapshot extends AbstractPlayerSnapshot {}

@freezed
class OfflinePlayerSnapshot
    with _$OfflinePlayerSnapshot
    implements AbstractOfflinePlayerSnapshot {
  @Implements(AbstractOfflinePlayerSnapshot)
  const factory OfflinePlayerSnapshot({
    required UniqueId id,
    required String name,
    @Default(false) bool isCurrentTurn,
    @Default(false) bool won,
    int? wonSets,
    @Default(0) int wonLegsCurrentSet,
    @Default(0) int pointsLeft,
    KtList<String>? finishRecommendation,
    int? lastPoints,
    @Default(0) int dartsThrownCurrentLeg,
    @Default(PlayerStats()) PlayerStats stats,
  }) = _OfflinePlayerSnapshot;

  factory OfflinePlayerSnapshot.dummy() => OfflinePlayerSnapshot(
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
        stats: PlayerStats.dummy(),
      );
}

@freezed
class DartBotSnapshot
    with _$DartBotSnapshot
    implements AbstractOfflinePlayerSnapshot {
  @Implements(AbstractOfflinePlayerSnapshot)
  const factory DartBotSnapshot({
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
      PlayerStats(),
    )
        PlayerStats stats,
    @Default(1)
        int targetAverage,
  }) = _DartBotSnapshot;

  factory DartBotSnapshot.dummy() => DartBotSnapshot(
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
        stats: PlayerStats.dummy(),
      );
}

@freezed
class OnlinePlayerSnapshot
    with _$OnlinePlayerSnapshot
    implements AbstractPlayerSnapshot {
  @Implements(AbstractPlayerSnapshot)
  const factory OnlinePlayerSnapshot({
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
      PlayerStats(),
    )
        PlayerStats stats,
    required UniqueId userId,
  }) = _OnlinePlayerSnapshot;

  factory OnlinePlayerSnapshot.dummy() => OnlinePlayerSnapshot(
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
        stats: PlayerStats.dummy(),
        userId: UniqueId.fromUniqueString(
          faker.randomGenerator.string(28, min: 28),
        ),
      );
}
