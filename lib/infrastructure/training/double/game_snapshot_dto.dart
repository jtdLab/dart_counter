
import 'package:dart_counter/domain/training/double/game_snapshot.dart';
import 'package:dart_counter/infrastructure/training/double/player_snapshot_dto.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:dart_game/double_training_game.dart' as ex;

part 'game_snapshot_dto.freezed.dart';

@freezed
class GameSnapshotDto with _$GameSnapshotDto {
  const factory GameSnapshotDto({
    required String status,
    required String mode,
    required KtList<PlayerSnapshotDto> players,
  }) = _GameSnapshotDto;

   const GameSnapshotDto._();

  factory GameSnapshotDto.fromDomain(GameSnapshot gameSnapshot) {
    return GameSnapshotDto(
      status: gameSnapshot.status == Status.pending
          ? 'pending'
          : gameSnapshot.status == Status.running
              ? 'running'
              : gameSnapshot.status == Status.canceled
                  ? 'canceled'
                  : 'finished',
      mode: gameSnapshot.mode == Mode.ascending ? 'ascending' : 'descending',
      players: gameSnapshot.players
          .map((player) => PlayerSnapshotDto.fromDomain(player)),
    );
  }

// TODO
  /**
   * factory GameSnapshotDto.fromExternal(ex.Game game) {
    return GameSnapshotDto(
      status: game.status == ex.Status.pending
          ? 'pending'
          : game.status == ex.Status.running
              ? 'running'
              : game.status == ex.Status.canceled
                  ? 'canceled'
                  : 'finished',
      mode: game.mode == ex.Mode.ascending ? 'ascending' : 'descending',
      players: game.players
          .map((player) => PlayerSnapshotDto.fromExternal(player))
          .toImmutableList(),
    );
  }
   */

  GameSnapshot toDomain() {
    return GameSnapshot(
      status: status == 'pending'
          ? Status.pending
          : status == 'running'
              ? Status.running
              : status == 'canceled'
                  ? Status.canceled
                  : Status.finished,
      mode: mode == 'ascending' ? Mode.ascending : Mode.descending,
      players: players.map((player) => player.toDomain()),
    );
  }
}
