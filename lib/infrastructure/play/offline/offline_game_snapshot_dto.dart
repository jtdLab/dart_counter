import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/infrastructure/game/mode_x.dart';
import 'package:dart_counter/infrastructure/game/status_x.dart';
import 'package:dart_counter/infrastructure/game/type_x.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../abstract_game_snapshot_dto.dart';
import 'abstract_offline_player_snapshot.dart';

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

  OfflineGameSnapshot toDomain() {
    return OfflineGameSnapshot(
      status: StatusX.parse(status),
      mode: ModeX.parse(mode),
      size: size,
      type: TypeX.parse(type),
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

  factory OfflineGameSnapshotDto.fromExternal(ex.Game game) {
    return OfflineGameSnapshotDto(
      status: game.status.toShortString(),
      mode: game.mode.toShortString(),
      size: game.size,
      type: game.type.toShortString(),
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
}
