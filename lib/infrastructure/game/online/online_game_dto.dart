import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/abstract_game.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/infrastructure/game/abstract_player_dto.dart';
import 'package:dart_counter/infrastructure/game/mode_x.dart';
import 'package:dart_counter/infrastructure/game/status_x.dart';
import 'package:dart_counter/infrastructure/game/type_x.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../abstract_game_dto.dart';

part 'online_game_dto.freezed.dart';
part 'online_game_dto.g.dart';

@freezed
class OnlineGameDto with _$OnlineGameDto implements AbstractGameDto {
  @Implements<AbstractGameDto>()
  const factory OnlineGameDto({
    required String id,
    required int createdAt,
    required String ownerId,
    required String status,
    required String mode,
    required int size,
    required String type,
    required int startingPoints,
    required List<OnlinePlayerDto> players,
  }) = _OnlineGameDto;

  const OnlineGameDto._();

  OnlineGame toDomain() {
    final legsOrSetsNeededToWin =
        mode == Mode.firstTo.toShortString() ? size : (size / 2).round();

    return OnlineGame(
      id: UniqueId.fromUniqueString(id),
      createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt),
      ownerId: UniqueId.fromUniqueString(ownerId),
      status: StatusX.parse(status),
      mode: ModeX.parse(mode),
      size: size,
      type: TypeX.parse(type),
      startingPoints: startingPoints,
      players: KtList.from(
        players.map(
          (player) => player.toDomain(
            startingPoints: startingPoints,
            legsOrSetsNeededToWin: legsOrSetsNeededToWin,
          ),
        ),
      ),
    );
  }

  ex.Game toExternal({
    required int startingPoints,
    required int legsOrSetsNeededToWin,
  }) {
    final p = players
        .map(
          (player) => player.toExternal(
            startingPoints: startingPoints,
            legsOrSetsNeededToWin: legsOrSetsNeededToWin,
          ),
        )
        .toList();

    return ex.Game.fromData(
      status: ExternalStatusX.parse(status),
      startingPoints: startingPoints,
      mode: ExternalModeX.parse(mode),
      size: size,
      type: ExternalTypeX.parse(type),
      players: p,
      owner: p.firstWhere((player) => player.id == ownerId),
    );
  }

  factory OnlineGameDto.fromJson(Map<String, dynamic> json) =>
      _$OnlineGameDtoFromJson(json);
}
