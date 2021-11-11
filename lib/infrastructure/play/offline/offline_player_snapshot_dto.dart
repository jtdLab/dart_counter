import 'package:dart_client/dart_client.dart' as dc show PlayerSnapshot;
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/abstract_player_snapshot.dart';
import 'package:dart_counter/domain/game/player_stats.dart';
import 'package:dart_counter/infrastructure/game/player_stats_dto.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../abstract_player_snapshot_dto.dart';

part 'offline_player_snapshot_dto.freezed.dart';

@freezed
class OfflinePlayerSnapshotDto
    with _$OfflinePlayerSnapshotDto
    implements AbstractOfflinePlayerSnapshotDto {
  @Implements<AbstractOfflinePlayerSnapshotDto>()
  const factory OfflinePlayerSnapshotDto({
    required String id,
    String? name,
    String? photoUrl,
    bool? isCurrentTurn,
    bool? won,
    int? wonSets,
    int? wonLegsCurrentSet,
    int? pointsLeft,
    List<String>? finishRecommendation,
    int? lastPoints,
    int? dartsThrownCurrentLeg,
    PlayerStatsDto? stats,
  }) = _OfflinePlayerSnapshotDto;

  const OfflinePlayerSnapshotDto._();

  factory OfflinePlayerSnapshotDto.fromExternal(ex.Player player) {
    return OfflinePlayerSnapshotDto(
      id: player.id,
      name: player.name,
      isCurrentTurn: player.isCurrentTurn,
      won: player.won,
      wonSets: player.wonSets,
      wonLegsCurrentSet: player.wonLegsCurrentSet,
      pointsLeft: player.pointsLeft,
      finishRecommendation: player.finishRecommendation,
      lastPoints: player.lastPoints,
      dartsThrownCurrentLeg: player.dartsThrownCurrentLeg,
      stats: PlayerStatsDto(
        average: player.average ?? 0,
        checkoutPercentage: player.checkoutPercentage,
        firstNineAverage: player.firstNineAverage ?? 0,
        bestLegDartsThrown: player.bestLegDartsThrown,
        bestLegAverage: player.bestLegAverage,
        worstLegDartsThrown: player.worstLegDartsThrown,
        worstLegAverage: player.worstLegAverage,
        averageDartsPerLeg: player.averageDartsPerLeg,
        firstDartAverage: player.firstDartAverage,
        secondDartAverage: player.secondDartAverage,
        thirdDartAverage: player.thirdDartAverage,
        highestFinish: player.highestFinish,
        fourtyPlus: player.fourtyPlus ?? 0,
        sixtyPlus: player.sixtyPlus ?? 0,
        eightyPlus: player.eightyPlus ?? 0,
        hundredPlus: player.hundredPlus ?? 0,
        hundredTwentyPlus: player.hundredTwentyPlus ?? 0,
        hundredFourtyPlus: player.hundredFourtyPlus ?? 0,
        hundredSixtyPlus: player.hundredSixtyPlus ?? 0,
        hundredEighty: player.hundredEighty ?? 0,
      ),
    );
  }

  OfflinePlayerSnapshot toDomain() {
    return OfflinePlayerSnapshot(
      id: UniqueId.fromUniqueString(this.id),
      name: name,
      photoUrl: photoUrl,
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
    );
  }
}
