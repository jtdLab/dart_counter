import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/abstract_player.dart';
import 'package:dart_counter/infrastructure/game/abstract_legs_or_sets_dto.dart';
import 'package:dart_counter/infrastructure/game/leg_dto.dart';
import 'package:dart_counter/infrastructure/game/set_dto.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../converters.dart';
import 'abstract_offline_player_dto.dart';

part 'offline_player_dto.freezed.dart';
part 'offline_player_dto.g.dart';

@freezed
class OfflinePlayerDto
    with _$OfflinePlayerDto
    implements AbstractOfflinePlayerDto {
  @Implements<AbstractOfflinePlayerDto>()
  const factory OfflinePlayerDto({
    required String id,
    required String name,
    @AbstractLegsOrSetsConverter()
        required List<AbstractLegsOrSetsDto> legsOrSets,
  }) = _OfflinePlayerDto;

  const OfflinePlayerDto._();

  OfflinePlayer toDomain({
    required int startingPoints,
    required int legsNeededToWin,
    int? setsNeededToWin,
  }) {
    return OfflinePlayer(
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

  factory OfflinePlayerDto.fromExternal(ex.Player player) {
    return OfflinePlayerDto(
      id: player.id,
      name: player.name ?? 'Player N', // TODO
      legsOrSets: player.legsOrSets!.fold(
        (legs) => legs.map((leg) => LegDto.fromExternal(leg)).toList(),
        (sets) => sets.map((set) => SetDto.fromExternal(set)).toList(),
      ),
    );
  }

  factory OfflinePlayerDto.fromJson(Map<String, dynamic> json) =>
      _$OfflinePlayerDtoFromJson(json);
}
