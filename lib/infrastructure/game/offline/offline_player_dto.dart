import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/abstract_player.dart';
import 'package:dart_counter/infrastructure/game/leg_dto.dart';
import 'package:dart_counter/infrastructure/game/set_dto.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../abstract_player_dto.dart';
import '../converters.dart';

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
    @LegsOrSetsConverter()
        required Either<List<LegDto>, List<SetDto>> legsOrSets,
  }) = _OfflinePlayerDto;

  const OfflinePlayerDto._();

  factory OfflinePlayerDto.fromExternal(ex.Player player) {
    return OfflinePlayerDto(
      id: player.id,
      name: player.name ?? 'Player N', // TODO
      legsOrSets: player.legsOrSets!.fold(
        (legs) => left(legs.map((leg) => LegDto.fromExternal(leg)).toList()),
        (sets) => right(sets.map((set) => SetDto.fromExternal(set)).toList()),
      ),
    );
  }

  OfflinePlayer toDomain() {
    return OfflinePlayer(
      id: UniqueId.fromUniqueString(this.id),
      name: name,
      legsOrSets: legsOrSets.fold(
        (legDtos) => left(
          KtList.from(legDtos.map((legDto) => legDto.toDomain())),
        ),
        (setDtos) => right(
          KtList.from(setDtos.map((setDto) => setDto.toDomain())),
        ),
      ),
      //stats: _stats().toDomain(),
    );
  }

  /** // TODO
  *  PlayerStatsDto _stats() {
    // TODO implement
    throw UnimplementedError();
  }
  */

  factory OfflinePlayerDto.fromJson(Map<String, dynamic> json) =>
      _$OfflinePlayerDtoFromJson(json);
}
