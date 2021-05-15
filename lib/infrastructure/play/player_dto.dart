import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/player.dart';
import 'package:dart_counter/infrastructure/play/set_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'stats_dto.dart';

part 'player_dto.freezed.dart';
part 'player_dto.g.dart';

@freezed
class PlayerDto with _$PlayerDto {
  const factory PlayerDto({
    String? id,
    String? name,
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
  }) = _PlayerDto;

  const PlayerDto._();

  factory PlayerDto.fromDomain(Player player) {
    return PlayerDto(
      id: player.id?.getOrCrash(),
      name: player.name,
      isCurrentTurn: player.isCurrentTurn,
      won: player.won,
      wonSets: player.wonSets,
      wonLegsCurrentSet: player.wonLegsCurrentSet,
      pointsLeft: player.pointsLeft,
      finishRecommendation: player.finishRecommendation?.asList(),
      lastPoints: player.lastPoints,
      dartsThrownCurrentLeg: player.dartsThrownCurrentLeg,
      stats: player.stats != null ? StatsDto.fromDomain(player.stats!) : null,
      sets: player.sets?.map((set) => SetDto.fromDomain(set)).asList(),
    );
  }

  Player toDomain() {
    return Player(
      id: UniqueId.fromUniqueString(id!),
      name: name,
      isCurrentTurn: isCurrentTurn,
      won: won,
      wonSets: wonSets,
      wonLegsCurrentSet: wonLegsCurrentSet,
      pointsLeft: pointsLeft,
      finishRecommendation: finishRecommendation != null
          ? KtList.from(finishRecommendation!)
          : null,
      lastPoints: lastPoints,
      dartsThrownCurrentLeg: dartsThrownCurrentLeg,
      stats: stats?.toDomain(),
      sets: sets != null
          ? KtList.from(sets!.map((setDto) => setDto.toDomain()))
          : null,
    );
  }

  factory PlayerDto.fromJson(Map<String, dynamic> json) =>
      _$PlayerDtoFromJson(json);
}
