import 'package:dart_counter/domain/training/bobs_twenty_seven/game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/mode.dart';
import 'package:dart_counter/domain/training/status.dart';
import 'package:dart_counter/infrastructure/training/bobs_twenty_seven/player_snapshot_dto.dart';
import 'package:dart_game/bobs_twenty_seven_training_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'game_snapshot_dto.freezed.dart';

@freezed
class GameSnapshotDto with _$GameSnapshotDto {
  const factory GameSnapshotDto({
    required String status,
    required String mode,
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
      mode: gameSnapshot.mode == Mode.easy ? 'easy' : 'hard',
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
      mode: game.mode == ex.Mode.easy ? 'easy' : 'hard',
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
      mode: mode == 'easy' ? Mode.easy : Mode.hard,
      players: players.map((player) => player.toDomain()),
      owner: owner.toDomain(),
    );
  }
}
