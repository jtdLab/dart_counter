import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/player_stats.dart';
import 'package:dart_counter/domain/play/offline/abstract_offline_player_snapshot.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'offline_player_snapshot.freezed.dart';

@freezed
class OfflinePlayerSnapshot
    with _$OfflinePlayerSnapshot
    implements AbstractOfflinePlayerSnapshot {
  // coverage:ignore-start
  @Implements<AbstractOfflinePlayerSnapshot>()
  const factory OfflinePlayerSnapshot({
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
  // coverage:ignore-end
}
