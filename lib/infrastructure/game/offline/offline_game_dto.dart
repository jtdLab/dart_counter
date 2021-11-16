import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/abstract_game.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/infrastructure/game/abstract_player_dto.dart';
import 'package:dart_counter/infrastructure/game/converters.dart';
import 'package:dart_counter/infrastructure/game/mode_x.dart';
import 'package:dart_counter/infrastructure/game/status_x.dart';
import 'package:dart_counter/infrastructure/game/type_x.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:uuid/uuid.dart';

import '../abstract_game_dto.dart';
import 'abstract_offline_player_dto.dart';

part 'offline_game_dto.freezed.dart';
part 'offline_game_dto.g.dart';

@freezed
class OfflineGameDto with _$OfflineGameDto implements AbstractGameDto {
  @Implements<AbstractGameDto>()
  const factory OfflineGameDto({
    required String id,
    required int createdAt,
    required String status,
    required String mode,
    required int size,
    required String type,
    required int startingPoints,
    @AbstractOfflinePlayerDtoConverter()
        required List<AbstractOfflinePlayerDto> players,
  }) = _OfflineGameDto;

  const OfflineGameDto._();

  OfflineGame toDomain() {
    final legsOrSetsNeededToWin =
        mode == Mode.firstTo.toShortString() ? size : (size / 2).round();

    return OfflineGame(
      id: UniqueId.fromUniqueString(id),
      createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt),
      status: StatusX.parse(status),
      mode: ModeX.parse(mode),
      size: size,
      type: TypeX.parse(type),
      startingPoints: startingPoints,
      players: KtList.from(
        players.map(
          (player) {
            if (player is OfflinePlayerDto) {
              return player.toDomain(
                startingPoints: startingPoints,
                legsOrSetsNeededToWin: legsOrSetsNeededToWin,
              );
            } else if (player is DartBotDto) {
              return player.toDomain(
                startingPoints: startingPoints,
                legsOrSetsNeededToWin: legsOrSetsNeededToWin,
              );
            } else {
              throw Error();
            }
          },
        ),
      ),
    );
  }

  factory OfflineGameDto.fromJson(Map<String, dynamic> json) =>
      _$OfflineGameDtoFromJson(json);
}
