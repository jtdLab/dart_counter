import 'package:dart_counter/domain/training/mode.dart';
import 'package:dart_counter/domain/training/single/single_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/status.dart';
import 'package:dart_counter/infrastructure/training/single/single_training_player_snapshot_dto.dart';
import 'package:dart_game/single_training_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'single_training_game_snapshot_dto.freezed.dart';

@freezed
class SingleTrainingGameSnapshotDto with _$SingleTrainingGameSnapshotDto {
  const factory SingleTrainingGameSnapshotDto({
    required String status,
    required String mode,
    required KtList<SingleTrainingPlayerSnapshotDto> players,
    required SingleTrainingPlayerSnapshotDto owner,
  }) = _SingleTrainingGameSnapshotDto;

  const SingleTrainingGameSnapshotDto._();

  factory SingleTrainingGameSnapshotDto.fromDomain(SingleTrainingGameSnapshot gameSnapshot) {
    final players = gameSnapshot.players
        .map((player) => SingleTrainingPlayerSnapshotDto.fromDomain(player));

    return SingleTrainingGameSnapshotDto(
      status: gameSnapshot.status == Status.pending
          ? 'pending'
          : gameSnapshot.status == Status.running
              ? 'running'
              : gameSnapshot.status == Status.canceled
                  ? 'canceled'
                  : 'finished',
      mode: gameSnapshot.mode == Mode.ascending
          ? 'ascending'
          : gameSnapshot.mode == Mode.descending
              ? 'descending'
              : 'random',
      players: players,
      owner: SingleTrainingPlayerSnapshotDto.fromDomain(gameSnapshot.owner),
    );
  }

  factory SingleTrainingGameSnapshotDto.fromExternal(ex.Game game) {
    return SingleTrainingGameSnapshotDto(
      status: game.status == ex.Status.pending
          ? 'pending'
          : game.status == ex.Status.running
              ? 'running'
              : game.status == ex.Status.canceled
                  ? 'canceled'
                  : 'finished',
      mode: game.mode == ex.Mode.ascending
          ? 'ascending'
          : game.mode == ex.Mode.descending
              ? 'descending'
              : 'random',
      players: game.players
          .map((player) => SingleTrainingPlayerSnapshotDto.fromExternal(player))
          .toImmutableList(),
      owner: SingleTrainingPlayerSnapshotDto.fromExternal(game.owner),
    );
  }

  SingleTrainingGameSnapshot toDomain() {
    return SingleTrainingGameSnapshot(
      status: status == 'pending'
          ? Status.pending
          : status == 'running'
              ? Status.running
              : status == 'canceled'
                  ? Status.canceled
                  : Status.finished,
      mode: mode == 'ascending'
          ? Mode.ascending
          : mode == 'descending'
              ? Mode.descending
              : Mode.random,
      players: players.map((player) => player.toDomain()),
      owner: owner.toDomain(),
    );
  }
}
