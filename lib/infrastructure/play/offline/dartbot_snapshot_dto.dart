import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/player_stats.dart';
import 'package:dart_counter/domain/play/abstract_player_snapshot.dart';
import 'package:dart_counter/infrastructure/game/player_stats_dto.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../abstract_player_snapshot_dto.dart';

part 'dartbot_snapshot_dto.freezed.dart';

@freezed
class DartBotSnapshotDto
    with _$DartBotSnapshotDto
    implements AbstractPlayerSnapshotDto {
  @Implements<AbstractPlayerSnapshotDto>()
  const factory DartBotSnapshotDto({
    required String id,
    String? name,
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

  factory DartBotSnapshotDto.fromExternal(ex.DartBot dartBot) {
    return DartBotSnapshotDto(
      id: dartBot.id,
      isCurrentTurn: dartBot.isCurrentTurn,
      won: dartBot.won,
      wonSets: dartBot.wonSets,
      wonLegsCurrentSet: dartBot.wonLegsCurrentSet,
      pointsLeft: dartBot.pointsLeft,
      finishRecommendation: dartBot.finishRecommendation,
      lastPoints: dartBot.lastPoints,
      dartsThrownCurrentLeg: dartBot.dartsThrownCurrentLeg,
      stats: dartBot.lastPoints != null
          ? PlayerStatsDto(
              average: dartBot.average,
              checkoutPercentage: dartBot.checkoutPercentage,
              firstNineAverage: dartBot.firstNineAverage,
              bestLegDartsThrown: dartBot.bestLegDartsThrown,
              bestLegAverage: dartBot.bestLegAverage,
              worstLegDartsThrown: dartBot.worstLegDartsThrown,
              worstLegAverage: dartBot.worstLegAverage,
              averageDartsPerLeg: dartBot.averageDartsPerLeg,
              firstDartAverage: dartBot.firstDartAverage,
              secondDartAverage: dartBot.secondDartAverage,
              thirdDartAverage: dartBot.thirdDartAverage,
              highestFinish: dartBot.highestFinish,
              fourtyPlus: dartBot.fourtyPlus,
              sixtyPlus: dartBot.sixtyPlus,
              eightyPlus: dartBot.eightyPlus,
              hundredPlus: dartBot.hundredPlus,
              hundredTwentyPlus: dartBot.hundredTwentyPlus,
              hundredFourtyPlus: dartBot.hundredFourtyPlus,
              hundredSixtyPlus: dartBot.hundredSixtyPlus,
              hundredEighty: dartBot.hundredEighty,
            )
          : null,
      targetAverage: dartBot.targetAverage,
    );
  }
}
