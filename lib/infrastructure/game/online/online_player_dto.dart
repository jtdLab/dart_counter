import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/abstract_player.dart';
import 'package:dart_counter/domain/game/player_stats.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/infrastructure/game/leg_dto.dart';
import 'package:dart_counter/infrastructure/game/set_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:dart_game/dart_game.dart' as ex;

import '../abstract_legs_or_sets_dto.dart';
import '../abstract_player_dto.dart';
import '../converters.dart';

part 'online_player_dto.freezed.dart';
part 'online_player_dto.g.dart';

@freezed
class OnlinePlayerDto with _$OnlinePlayerDto implements AbstractPlayerDto {
  @Implements<AbstractPlayerDto>()
  const factory OnlinePlayerDto({
    required String id,
    required String name,
    String? photoUrl,
    @AbstractLegsOrSetsConverter()
        required List<AbstractLegsOrSetsDto> legsOrSets,
  }) = _OnlinePlayerDto;

  const OnlinePlayerDto._();

  OnlinePlayer toDomain({
    required int startingPoints,
    required int legsOrSetsNeededToWin,
  }) {
    final external = toExternal(
      startingPoints: startingPoints,
      legsOrSetsNeededToWin: legsOrSetsNeededToWin,
    );

    final type = legsOrSets.isEmpty
        ? null
        : legsOrSets[0] is LegDto
            ? Type.legs
            : Type.sets;

    if (type == Type.legs) {
      final legs = legsOrSets
          .map(
            (leg) => (leg as LegDto).toDomain(startingPoints: startingPoints),
          )
          .toList();

      return OnlinePlayer(
        id: UniqueId.fromUniqueString(this.id),
        name: name,
        legsOrSets: left(legs.toImmutableList()),
        won: external.won ?? false,
        wonLegsOrSets: external.wonLegsCurrentSet ??
            0,
        stats: PlayerStats(
          average: external.average,
          checkoutPercentage: external.checkoutPercentage,
          firstNineAverage: external.firstNineAverage,
          bestLegDartsThrown: external.bestLegDartsThrown,
          bestLegAverage: external.bestLegAverage,
          worstLegDartsThrown: external.worstLegDartsThrown,
          worstLegAverage: external.worstLegAverage,
          averageDartsPerLeg: external.averageDartsPerLeg,
          highestFinish: external.highestFinish,
          firstDartAverage: external.firstDartAverage,
          secondDartAverage: external.secondDartAverage,
          thirdDartAverage: external.thirdDartAverage,
          fourtyPlus: external.fourtyPlus,
          sixtyPlus: external.sixtyPlus,
          eightyPlus: external.eightyPlus,
          hundredPlus: external.hundredPlus,
          hundredTwentyPlus: external.hundredTwentyPlus,
          hundredFourtyPlus: external.hundredFourtyPlus,
          hundredSixtyPlus: external.hundredSixtyPlus,
          hundredEighty: external.hundredEighty,
        ),
      );
    } else {
      final sets = legsOrSets
          .map(
            (set) => (set as SetDto).toDomain(startingPoints: startingPoints),
          )
          .toList();

      return OnlinePlayer(
        id: UniqueId.fromUniqueString(this.id),
        name: name,
        legsOrSets: right(sets.toImmutableList()),
        won: external.won ?? false,
        wonLegsOrSets: external.wonSets ?? 0,
        stats: PlayerStats(
          average: external.average,
          checkoutPercentage: external.checkoutPercentage,
          firstNineAverage: external.firstNineAverage,
          bestLegDartsThrown: external.bestLegDartsThrown,
          bestLegAverage: external.bestLegAverage,
          worstLegDartsThrown: external.worstLegDartsThrown,
          worstLegAverage: external.worstLegAverage,
          averageDartsPerLeg: external.averageDartsPerLeg,
          highestFinish: external.highestFinish,
          firstDartAverage: external.firstDartAverage,
          secondDartAverage: external.secondDartAverage,
          thirdDartAverage: external.thirdDartAverage,
          fourtyPlus: external.fourtyPlus,
          sixtyPlus: external.sixtyPlus,
          eightyPlus: external.eightyPlus,
          hundredPlus: external.hundredPlus,
          hundredTwentyPlus: external.hundredTwentyPlus,
          hundredFourtyPlus: external.hundredFourtyPlus,
          hundredSixtyPlus: external.hundredSixtyPlus,
          hundredEighty: external.hundredEighty,
        ),
      );
    }
  }

  ex.Player toExternal({
    required int startingPoints,
    required int legsOrSetsNeededToWin,
  }) {
    final type = legsOrSets.isEmpty
        ? null
        : legsOrSets[0] is LegDto
            ? Type.legs
            : Type.sets;

    if (type == Type.legs) {
      final legs = legsOrSets
          .map(
            (leg) => (leg as LegDto).toExternal(startingPoints: startingPoints),
          )
          .toList();

      return ex.Player.fromData(
        id: this.id,
        name: name,
        isCurrentTurn: false,
        legsOrSetsNeededToWin: legsOrSetsNeededToWin,
        legsOrSets: left(legs),
      );
    } else {
      final sets = legsOrSets
          .map(
            (set) => (set as SetDto).toExternal(startingPoints: startingPoints),
          )
          .toList();

      return ex.Player.fromData(
        id: this.id,
        name: name,
        isCurrentTurn: false,
        legsOrSetsNeededToWin: legsOrSetsNeededToWin,
        legsOrSets: right(sets),
      );
    }
  }

  factory OnlinePlayerDto.fromJson(Map<String, dynamic> json) =>
      _$OnlinePlayerDtoFromJson(json);
}
