import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/abstract_player.dart';
import 'package:dart_counter/infrastructure/game/leg_dto.dart';
import 'package:dart_counter/infrastructure/game/set_dto.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

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
    @LegsOrSetsConverter()
        required Either<List<LegDto>, List<SetDto>> legsOrSets,
  }) = _OnlinePlayerDto;

  const OnlinePlayerDto._();

  OnlinePlayer toDomain() {
    return OnlinePlayer(
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
      won: false,
    );
  }

/** // TODO
 *   PlayerStatsDto _stats() {
    throw UnimplementedError();
  }
 */

  factory OnlinePlayerDto.fromJson(Map<String, dynamic> json) =>
      _$OnlinePlayerDtoFromJson(json);
}
