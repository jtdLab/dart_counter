import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/player.dart';
import 'package:dart_counter/domain/play/stats.dart';
import 'package:dart_counter/infrastructure/play/set_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

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
  }) = _PlayerDto;

  const PlayerDto._();

  factory PlayerDto.fromDomain(Player player) {
    return PlayerDto(
      id: player.id.getOrCrash(),
      name: player.name,
      isCurrentTurn: player.isCurrentTurn,
      won: player.won,
      wonSets: player.wonSets,
      wonLegsCurrentSet: player.wonLegsCurrentSet,
      pointsLeft: player.pointsLeft,
      finishRecommendation: player.finishRecommendation?.asList(),
      lastPoints: player.lastPoints,
      dartsThrownCurrentLeg: player.dartsThrownCurrentLeg,
      stats: StatsDto.fromDomain(player.stats),
      sets: player.sets.map((set) => SetDto.fromDomain(set)).asList(),
    );
  }

  Player toDomain() {
    return Player(
      id: UniqueId.fromUniqueString(id),
      name: name,
      isCurrentTurn: isCurrentTurn ?? false,
      won: won ?? false,
      wonSets: wonSets,
      wonLegsCurrentSet: wonLegsCurrentSet ?? 0,
      pointsLeft: pointsLeft ?? 0,
      finishRecommendation: finishRecommendation != null
          ? KtList.from(finishRecommendation!)
          : null,
      lastPoints: lastPoints,
      dartsThrownCurrentLeg: dartsThrownCurrentLeg ?? 0,
      stats: stats?.toDomain() ??
          const Stats(
            average: 0.00,
            checkoutPercentage: 0.00,
            firstNineAverage: 0.00,
            fourtyPlus: 0,
            sixtyPlus: 0,
            eightyPlus: 0,
            hundredPlus: 0,
            hundredTwentyPlus: 0,
            hundredFourtyPlus: 0,
            hundredSixtyPlus: 0,
            hundredEighty: 0,
          ),
      sets: sets != null
          ? KtList.from(
              sets!.map((setDto) => setDto.toDomain()),
            )
          : const KtList.empty(),
      isDartBot: false,
    );
  }

  factory PlayerDto.fromJson(Map<String, dynamic> json) =>
      _$PlayerDtoFromJson(json);
}
