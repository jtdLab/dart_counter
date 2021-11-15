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
