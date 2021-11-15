import 'package:dart_counter/domain/training/double/double_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/mode.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/infrastructure/training/double/double_training_player_snapshot_dto.dart';
import 'package:dart_game/double_training_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'double_training_game_snapshot_dto.freezed.dart';

@freezed
class DoubleTrainingGameSnapshotDto with _$DoubleTrainingGameSnapshotDto {
  const factory DoubleTrainingGameSnapshotDto({
    required String status,
    required String mode,
    required KtList<DoubleTrainingPlayerSnapshotDto> players,
    required DoubleTrainingPlayerSnapshotDto owner,
  }) = _DoubleTrainingGameSnapshotDto;

  const DoubleTrainingGameSnapshotDto._();

  DoubleTrainingGameSnapshot toDomain() {
    return DoubleTrainingGameSnapshot(
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

  factory DoubleTrainingGameSnapshotDto.fromExternal(ex.Game game) {
    return DoubleTrainingGameSnapshotDto(
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
          .map((player) => DoubleTrainingPlayerSnapshotDto.fromExternal(player))
          .toImmutableList(),
      owner: DoubleTrainingPlayerSnapshotDto.fromExternal(game.owner),
    );
  }
}
