import 'package:dart_client/dart_client.dart' as dc show PlayerSnapshot;
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/abstract_player_snapshot.dart';
import 'package:dart_counter/domain/game/player_stats.dart';
import 'package:dart_counter/infrastructure/game/player_stats_dto.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../abstract_player_snapshot_dto.dart';

part 'online_player_snapshot_dto.freezed.dart';

@freezed
class OnlinePlayerSnapshotDto
    with _$OnlinePlayerSnapshotDto
    implements AbstractPlayerSnapshotDto {
  @Implements<AbstractPlayerSnapshotDto>()
  const factory OnlinePlayerSnapshotDto({
    required String id,
    required String name,
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
  }) = _OnlinePlayerSnapshotDto;

  const OnlinePlayerSnapshotDto._();

  factory OnlinePlayerSnapshotDto.fromClient(dc.PlayerSnapshot playerSnapshot) {
    return OnlinePlayerSnapshotDto(
      id: playerSnapshot.id,
      name: playerSnapshot.name,
      isCurrentTurn: playerSnapshot.isCurrentTurn,
      won: playerSnapshot.won,
      wonSets: playerSnapshot.wonSets,
      wonLegsCurrentSet: playerSnapshot.wonLegsCurrentSet,
      pointsLeft: playerSnapshot.pointsLeft,
      finishRecommendation: playerSnapshot.finishRecommendation?.asList(),
      lastPoints: playerSnapshot.lastPoints,
      dartsThrownCurrentLeg: playerSnapshot.dartsThrownCurrentLeg,
      stats: playerSnapshot.stats == null
          ? null
          : PlayerStatsDto.fromClient(playerSnapshot.stats!),
    );
  }

  OnlinePlayerSnapshot toDomain() {
    return OnlinePlayerSnapshot(
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
