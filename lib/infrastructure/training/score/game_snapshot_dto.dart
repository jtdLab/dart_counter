import 'package:dart_counter/domain/training/score/game_snapshot.dart';
import 'package:dart_counter/domain/training/status.dart';
import 'package:dart_counter/infrastructure/training/score/player_snapshot_dto.dart';
import 'package:dart_game/score_training_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'game_snapshot_dto.freezed.dart';

@freezed
class GameSnapshotDto with _$GameSnapshotDto {
  const factory GameSnapshotDto({
    required String status,
    required int numberOfTakes,
    required KtList<PlayerSnapshotDto> players,
    required PlayerSnapshotDto owner,
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
      numberOfTakes: gameSnapshot.numberOfTakes,
      players: gameSnapshot.players
          .map((player) => PlayerSnapshotDto.fromDomain(player)),
      owner: PlayerSnapshotDto.fromDomain(gameSnapshot.owner),
    );
  }

  factory GameSnapshotDto.fromExternal(ex.Game game) {
    return GameSnapshotDto(
      status: game.status == ex.Status.pending
          ? 'pending'
          : game.status == ex.Status.running
              ? 'running'
              : game.status == ex.Status.canceled
                  ? 'canceled'
                  : 'finished',
      numberOfTakes: game.numberOfTakes,
      players: game.players
          .map((player) => PlayerSnapshotDto.fromExternal(player))
          .toImmutableList(),
      owner: PlayerSnapshotDto.fromExternal(game.owner),
    );
  }

  GameSnapshot toDomain() {
    return GameSnapshot(
      status: status == 'pending'
          ? Status.pending
          : status == 'running'
              ? Status.running
              : status == 'canceled'
                  ? Status.canceled
                  : Status.finished,
      numberOfTakes: numberOfTakes,
      players: players.map((player) => player.toDomain()),
      owner: owner.toDomain(),
    );
  }
}
