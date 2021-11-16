import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/player_stats.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'abstract_offline_player_snapshot.dart';

part 'dartbot_snapshot.freezed.dart';

@freezed
class DartBotSnapshot
    with _$DartBotSnapshot
    implements AbstractOfflinePlayerSnapshot {
  @Implements<AbstractOfflinePlayerSnapshot>()
  const factory DartBotSnapshot({
    required UniqueId id,
    String? name,
    required bool isCurrentTurn,
    required bool won,
    int? wonSets,
    required int wonLegsCurrentSet,
    required int pointsLeft,
    KtList<String>? finishRecommendation,
    int? lastPoints,
    required int dartsThrownCurrentLeg,
    required PlayerStats stats,
    required int targetAverage,
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
        targetAverage: 100,
      );
}
