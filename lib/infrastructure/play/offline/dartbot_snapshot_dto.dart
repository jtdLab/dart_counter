import 'package:dart_client/dart_client.dart' as dc show PlayerSnapshot;
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/abstract_player_snapshot.dart';
import 'package:dart_counter/domain/game/player_stats.dart';
import 'package:dart_counter/infrastructure/game/player_stats_dto.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'abstract_offline_player_snapshot.dart';

part 'dartbot_snapshot_dto.freezed.dart';

@freezed
class DartBotSnapshotDto
    with _$DartBotSnapshotDto
    implements AbstractOfflinePlayerSnapshotDto {
  @Implements<AbstractOfflinePlayerSnapshotDto>()
  const factory DartBotSnapshotDto({
    required String id,
    required String name,
    bool? isCurrentTurn,
    bool? won,
    int? wonSets,
    int? wonLegsCurrentSet,
    int? pointsLeft,
    List<String>? finishRecommendation,
    int? lastPoints,
    int? dartsThrownCurrentLeg,
    PlayerStatsDto? stats,
    required int targetAverage,
  }) = _DartBotSnapshotDto;

  const DartBotSnapshotDto._();

  factory DartBotSnapshotDto.fromExternal(ex.DartBot dartBot) {
    return DartBotSnapshotDto(
      id: dartBot.id,
      name: 'Dartbot', // TODO
      isCurrentTurn: dartBot.isCurrentTurn,
      won: dartBot.won,
      wonSets: dartBot.wonSets,
      wonLegsCurrentSet: dartBot.wonLegsCurrentSet,
      pointsLeft: dartBot.pointsLeft,
      finishRecommendation: dartBot.finishRecommendation,
      lastPoints: dartBot.lastPoints,
      dartsThrownCurrentLeg: dartBot.dartsThrownCurrentLeg,
      stats: PlayerStatsDto(
        average: dartBot.average ?? 0,
        checkoutPercentage: dartBot.checkoutPercentage ?? 0,
        firstNineAverage: dartBot.firstNineAverage ?? 0,
        bestLegDartsThrown: dartBot.bestLegDartsThrown,
        bestLegAverage: dartBot.bestLegAverage,
        worstLegDartsThrown: dartBot.worstLegDartsThrown,
        worstLegAverage: dartBot.worstLegAverage,
        averageDartsPerLeg: dartBot.averageDartsPerLeg,
        firstDartAverage: dartBot.firstDartAverage,
        secondDartAverage: dartBot.secondDartAverage,
        thirdDartAverage: dartBot.thirdDartAverage,
        highestFinish: dartBot.highestFinish,
        fourtyPlus: dartBot.fourtyPlus ?? 0,
        sixtyPlus: dartBot.sixtyPlus ?? 0,
        eightyPlus: dartBot.eightyPlus ?? 0,
        hundredPlus: dartBot.hundredPlus ?? 0,
        hundredTwentyPlus: dartBot.hundredTwentyPlus ?? 0,
        hundredFourtyPlus: dartBot.hundredFourtyPlus ?? 0,
        hundredSixtyPlus: dartBot.hundredSixtyPlus ?? 0,
        hundredEighty: dartBot.hundredEighty ?? 0,
      ),
      targetAverage: dartBot.targetAverage,
    );
  }

  DartBotSnapshot toDomain() {
    return DartBotSnapshot(
      id: UniqueId.fromUniqueString(this.id),
      name: name,
      isCurrentTurn: isCurrentTurn ?? false,
      won: won ?? false,
      wonSets: wonSets,
      wonLegsCurrentSet: wonLegsCurrentSet ?? 0,
      pointsLeft: pointsLeft ?? 0,
      finishRecommendation: finishRecommendation == null
          ? null
          : KtList.from(finishRecommendation!),
      lastPoints: lastPoints,
      dartsThrownCurrentLeg: dartsThrownCurrentLeg ?? 0,
      stats: stats?.toDomain() ?? const PlayerStats(),
      targetAverage: targetAverage,
    );
  }
}
