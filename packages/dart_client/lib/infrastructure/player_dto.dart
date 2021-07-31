import 'package:dart_client/domain/player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'set_dto.dart';
import 'stats_dto.dart';

part 'player_dto.freezed.dart';
part 'player_dto.g.dart';

@freezed
class PlayerDto with _$PlayerDto {
  const factory PlayerDto({
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
    List<SetDto>? sets,
    required String userId,
  }) = _PlayerDto;

  const PlayerDto._();

  factory PlayerDto.fromDomain(Player player) {
    return PlayerDto(
      id: player.id,
      name: player.name,
      isCurrentTurn: player.isCurrentTurn,
      won: player.won,
      wonSets: player.wonSets,
      wonLegsCurrentSet: player.wonLegsCurrentSet,
      pointsLeft: player.pointsLeft,
      finishRecommendation: player.finishRecommendation?.asList(),
      lastPoints: player.lastPoints,
      dartsThrownCurrentLeg: player.dartsThrownCurrentLeg,
      stats: player.stats == null ? null : StatsDto.fromDomain(player.stats!),
      sets: player.sets == null
          ? null
          : player.sets!.map((set) => SetDto.fromDomain(set)).asList(),
      userId: player.userId,
    );
  }

  Player toDomain() {
    return Player(
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
      sets: sets == null
          ? null
          : KtList.from(
              sets!.map((setDto) => setDto.toDomain()),
            ),
      userId: userId,
    );
  }

  factory PlayerDto.fromJson(Map<String, dynamic> json) =>
      _$PlayerDtoFromJson(json);
}
