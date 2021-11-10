import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/abstract_game.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/infrastructure/game/converters.dart';
import 'package:dart_counter/infrastructure/game/abstract_player_dto.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:uuid/uuid.dart';

import '../abstract_game_dto.dart';

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

  factory OfflineGameDto.fromExternal(ex.Game game) {
    return OfflineGameDto(
      id: const Uuid().v1(),
      createdAt: DateTime.now().millisecondsSinceEpoch,
      status: game.status == ex.Status.pending
          ? 'pending'
          : game.status == ex.Status.running
              ? 'running'
              : game.status == ex.Status.canceled
                  ? 'canceled'
                  : 'finished',
      mode: game.mode == ex.Mode.firstTo ? 'firstTo' : 'bestOf',
      size: game.size,
      type: game.type == ex.Type.legs ? 'legs' : 'sets',
      startingPoints: game.startingPoints,
      players: game.players.map(
        (player) {
          if (player is ex.DartBot) {
            return DartBotDto.fromExternal(player);
          } else {
            return OfflinePlayerDto.fromExternal(player);
          }
        },
      ).toList(),
    );
  }

  OfflineGame toDomain() {
    return OfflineGame(
      id: UniqueId.fromUniqueString(id),
      createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt),
      status: status == 'pending'
          ? Status.pending
          : status == 'running'
              ? Status.running
              : status == 'canceled'
                  ? Status.canceled
                  : Status.finished,
      mode: mode == 'firstTo' ? Mode.firstTo : Mode.bestOf,
      size: size,
      type: type == 'legs' ? Type.legs : Type.sets,
      startingPoints: startingPoints,
      players: KtList.from(
        players.map(
          (player) {
            if (player is OfflinePlayerDto) {
              return player.toDomain();
            } else if (player is DartBotDto) {
              return player.toDomain();
            } else {
              throw Error();
            }
          },
        ),
      ),
    );
  }

  factory OfflineGameDto.fromFirestore(DocumentSnapshot doc) {
    final json = (doc.data() ?? {}) as Map<String, dynamic>;

    json.addAll({
      'id': doc.id,
    });

    return OfflineGameDto.fromJson(json);
  }

  factory OfflineGameDto.fromJson(Map<String, dynamic> json) =>
      _$OfflineGameDtoFromJson(json);
}
