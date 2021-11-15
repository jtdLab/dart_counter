import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'abstract_offline_player_snapshot.dart';
import '../abstract_game_snapshot_dto.dart';

part 'offline_game_snapshot_dto.freezed.dart';

@freezed
class OfflineGameSnapshotDto
    with _$OfflineGameSnapshotDto
    implements AbstractGameSnapshotDto {
  @Implements<AbstractGameSnapshotDto>()
  const factory OfflineGameSnapshotDto({
    required String status,
    required String mode,
    required int size,
    required String type,
    required int startingPoints,
    required List<AbstractOfflinePlayerSnapshotDto> players,
  }) = _OfflineGameSnapshotDto;

  const OfflineGameSnapshotDto._();

  factory OfflineGameSnapshotDto.fromExternal(ex.Game game) {
    return OfflineGameSnapshotDto(
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
      players: game.players.map<AbstractOfflinePlayerSnapshotDto>(
        (player) {
          if (player is ex.DartBot) {
            return DartBotSnapshotDto.fromExternal(player);
          } else {
            return OfflinePlayerSnapshotDto.fromExternal(player);
          }
        },
      ).toList(),
    );
  }

  OfflineGameSnapshot toDomain() {
    return OfflineGameSnapshot(
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
            if (player is OfflinePlayerSnapshotDto) {
              return player.toDomain();
            } else if (player is DartBotSnapshotDto) {
              return player.toDomain();
            } else {
              throw Error(); // TODO
            }
          },
        ),
      ),
    );
  }
}
