import 'package:dart_client/dart_client.dart' as dc show PlayerSnapshot;
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/player_snapshot.dart';
import 'package:dart_counter/domain/play/stats.dart';
import 'package:dart_counter/infrastructure/play/stats_dto.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_snapshot_dto.freezed.dart';

// TODO why need freezd classes to explicit implement interface e.g "implements AbstractPlayerSnapshotDto" this should be done by freezed already
abstract class AbstractPlayerSnapshotDto {
  String get id;
  String get name;
  bool? get isCurrentTurn;
  bool? get won;
  int? get wonSets;
  int? get wonLegsCurrentSet;
  int? get pointsLeft;
  List<String>? get finishRecommendation;
  int? get lastPoints;
  int? get dartsThrownCurrentLeg;
  PlayerStatsDto? get stats;
}

abstract class AbstractOfflinePlayerSnapshotDto
    extends AbstractPlayerSnapshotDto {}

@freezed
class OfflinePlayerSnapshotDto
    with _$OfflinePlayerSnapshotDto
    implements AbstractOfflinePlayerSnapshotDto {
  @Implements(AbstractOfflinePlayerSnapshotDto)
  const factory OfflinePlayerSnapshotDto({
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
  }) = _OfflinePlayerSnapshotDto;

  const OfflinePlayerSnapshotDto._();

  factory OfflinePlayerSnapshotDto.fromExternal(ex.Player player) {
    return OfflinePlayerSnapshotDto(
      id: player.id,
      name: player.name ?? 'Player N', // TODO
      isCurrentTurn: player.isCurrentTurn,
      won: player.won,
      wonSets: player.wonSets,
      wonLegsCurrentSet: player.wonLegsCurrentSet,
      pointsLeft: player.pointsLeft,
      finishRecommendation: player.finishRecommendation,
      lastPoints: player.lastPoints,
      dartsThrownCurrentLeg: player.dartsThrownCurrentLeg,
      stats: PlayerStatsDto.fromExternal(player.stats),
    );
  }

  OfflinePlayerSnapshot toDomain() {
    return OfflinePlayerSnapshot(
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
    );
  }
}

@freezed
class DartBotSnapshotDto
    with _$DartBotSnapshotDto
    implements AbstractOfflinePlayerSnapshotDto {
  @Implements(AbstractOfflinePlayerSnapshotDto)
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
      name: dartBot.name,
      isCurrentTurn: dartBot.isCurrentTurn,
      won: dartBot.won,
      wonSets: dartBot.wonSets,
      wonLegsCurrentSet: dartBot.wonLegsCurrentSet,
      pointsLeft: dartBot.pointsLeft,
      finishRecommendation: dartBot.finishRecommendation,
      lastPoints: dartBot.lastPoints,
      dartsThrownCurrentLeg: dartBot.dartsThrownCurrentLeg,
      stats: PlayerStatsDto.fromExternal(dartBot.stats),
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

@freezed
class OnlinePlayerSnapshotDto
    with _$OnlinePlayerSnapshotDto
    implements AbstractPlayerSnapshotDto {
  @Implements(AbstractPlayerSnapshotDto)
  const factory OnlinePlayerSnapshotDto({
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
    required String userId,
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
      userId: playerSnapshot.userId,
    );
  }

  OnlinePlayerSnapshot toDomain() {
    return OnlinePlayerSnapshot(
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
      userId: UniqueId.fromUniqueString(userId),
    );
  }
}
