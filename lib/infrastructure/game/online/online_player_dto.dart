import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/abstract_player.dart';
import 'package:dart_counter/infrastructure/game/leg_dto.dart';
import 'package:dart_counter/infrastructure/game/set_dto.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../abstract_legs_or_sets_dto.dart';
import '../converters.dart';
import '../abstract_player_dto.dart';

part 'online_player_dto.freezed.dart';
part 'online_player_dto.g.dart';

@freezed
class OnlinePlayerDto with _$OnlinePlayerDto implements AbstractPlayerDto {
  @Implements<AbstractPlayerDto>()
  const factory OnlinePlayerDto({
    required String id,
    required String name,
    @AbstractLegsOrSetsConverter()
        required List<AbstractLegsOrSetsDto> legsOrSets,
  }) = _OnlinePlayerDto;

  const OnlinePlayerDto._();

  OnlinePlayer toDomain({
    required int startingPoints,
    required int legsNeededToWin,
    int? setsNeededToWin,
  }) {
    return OnlinePlayer(
      id: UniqueId.fromUniqueString(this.id),
      name: name,
      legsOrSets: legsOrSets is List<LegDto>
          ? left(
              legsOrSets
                  .map(
                    (leg) => (leg as LegDto)
                        .toDomain(startingPoints: startingPoints),
                  )
                  .toImmutableList(),
            )
          : right(
              legsOrSets
                  .map(
                    (set) => (set as SetDto)
                        .toDomain(startingPoints: startingPoints),
                  )
                  .toImmutableList(),
            ),
      won: false,
    );
  }

  factory OnlinePlayerDto.fromJson(Map<String, dynamic> json) =>
      _$OnlinePlayerDtoFromJson(json);
}
