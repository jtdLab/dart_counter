import 'package:dart_counter/domain/game/abstract_player.dart';
import 'package:dart_counter/infrastructure/game/leg_dto.dart';
import 'package:dart_counter/infrastructure/game/set_dto.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../converters.dart';
import 'abstract_offline_player_dto.dart';

part 'dartbot_dto.freezed.dart';
part 'dartbot_dto.g.dart';

@freezed
class DartBotDto with _$DartBotDto implements AbstractOfflinePlayerDto {
  @Implements<AbstractOfflinePlayerDto>()
  const factory DartBotDto({
    required String id,
    required String name,
    @LegsOrSetsConverter()
        required Either<List<LegDto>, List<SetDto>> legsOrSets,
  }) = _DartBotDto;

  const DartBotDto._();

  DartBot toDomain({
    required int startingPoints,
    required int legsNeededToWin,
    int? setsNeededToWin,
  }) {
    // TODO implement
    throw UnimplementedError();
  }

  factory DartBotDto.fromExternal(ex.DartBot dartBot) {
    return DartBotDto(
      id: 'dartBot',
      name: 'Dartbot',
      legsOrSets: dartBot.legsOrSets!.fold(
        (legs) => left(legs.map((leg) => LegDto.fromExternal(leg)).toList()),
        (sets) => right(sets.map((set) => SetDto.fromExternal(set)).toList()),
      ),
    );
  }

  /** // TODO
   * PlayerStatsDto _stats() {
    // TODO implement
    throw UnimplementedError();
  }
   */

  factory DartBotDto.fromJson(Map<String, dynamic> json) =>
      _$DartBotDtoFromJson(json);
}
