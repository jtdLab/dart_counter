import 'package:dart_client/dart_client.dart' as c;
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
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
          (player) => player.toDomain(),
        ),
      ),
    );
  }

  factory OnlineGameSnapshotDto.fromClient(c.GameSnapshot gameSnapshot) {
    return OnlineGameSnapshotDto(
      status: gameSnapshot.status == c.Status.pending
          ? 'pending'
          : gameSnapshot.status == c.Status.running
              ? 'running'
              : gameSnapshot.status == c.Status.canceled
                  ? 'canceled'
                  : 'finished',
      mode: gameSnapshot.mode == c.Mode.firstTo ? 'firstTo' : 'bestOf',
      size: gameSnapshot.size,
      type: gameSnapshot.type == c.Type.legs ? 'legs' : 'sets',
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
