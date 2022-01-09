import 'package:dart_client/domain/player_snapshot.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import 'stats_dto.dart';

part 'player_snapshot_dto.freezed.dart';
part 'player_snapshot_dto.g.dart';

@freezed
class PlayerSnapshotDto with _$PlayerSnapshotDto {
  const factory PlayerSnapshotDto({
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
    StatsDto? stats,
    required String userId,
  }) = _PlayerSnapshotDto;

  const PlayerSnapshotDto._();

  factory PlayerSnapshotDto.fromDomain(PlayerSnapshot playerSnapshot) {
    return PlayerSnapshotDto(
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
          : StatsDto.fromDomain(playerSnapshot.stats!),
      userId: playerSnapshot.userId,
    );
  }

  PlayerSnapshot toDomain() {
    return PlayerSnapshot(
      id: id,
      name: name,
      isCurrentTurn: isCurrentTurn,
      won: won,
      wonSets: wonSets,
      wonLegsCurrentSet: wonLegsCurrentSet,
      pointsLeft: pointsLeft,
      finishRecommendation: finishRecommendation == null
          ? null
          : KtList.from(finishRecommendation!),
      lastPoints: lastPoints,
      dartsThrownCurrentLeg: dartsThrownCurrentLeg,
      stats: stats?.toDomain(),
      userId: userId,
    );
  }

  factory PlayerSnapshotDto.fromJson(Map<String, dynamic> json) =>
      _$PlayerSnapshotDtoFromJson(json);
}
