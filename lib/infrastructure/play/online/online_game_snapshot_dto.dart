import 'package:dart_client/dart_client.dart' as c;
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/infrastructure/game/mode_x.dart';
import 'package:dart_counter/infrastructure/game/status_x.dart';
import 'package:dart_counter/infrastructure/game/type_x.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../abstract_game_snapshot_dto.dart';
import '../abstract_player_snapshot_dto.dart';

part 'online_game_snapshot_dto.freezed.dart';

@freezed
class OnlineGameSnapshotDto
    with _$OnlineGameSnapshotDto
    implements AbstractGameSnapshotDto {
  @Implements<AbstractGameSnapshotDto>()
  const factory OnlineGameSnapshotDto({
    required String status,
    required String mode,
    required int size,
    required String type,
    required int startingPoints,
    required List<OnlinePlayerSnapshotDto> players,
  }) = _OnlineGameSnapshotDto;

  const OnlineGameSnapshotDto._();

  OnlineGameSnapshot toDomain() {
    return OnlineGameSnapshot(
      status: StatusX.parse(status),
      mode: ModeX.parse(mode),
      size: size,
      type: TypeX.parse(type),
      startingPoints: startingPoints,
      players: KtList.from(
        players.map(
          (player) => player.toDomain(),
        ),
      ),
    );
  }

  factory OnlineGameSnapshotDto.fromClient(c.GameSnapshot gameSnapshot) {
    return OnlineGameSnapshotDto(
      status: gameSnapshot.status.toShortString(),
      mode: gameSnapshot.mode.toShortString(),
      size: gameSnapshot.size,
      type: gameSnapshot.type.toShortString(),
      startingPoints: gameSnapshot.startingPoints,
      players: gameSnapshot.players
          .map(
            (playerSnapshot) =>
                OnlinePlayerSnapshotDto.fromClient(playerSnapshot),
          )
          .asList(),
    );
  }
}
