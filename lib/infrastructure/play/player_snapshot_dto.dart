import 'package:dart_client/dart_client.dart' as dc show PlayerSnapshot;
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/player_snapshot.dart';
import 'package:dart_counter/domain/play/stats.dart';
import 'package:dart_counter/infrastructure/play/stats_dto.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_snapshot_dto.freezed.dart';

abstract class AbstractPlayerSnapshotDto {
  String get id;
  String? get name;
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
