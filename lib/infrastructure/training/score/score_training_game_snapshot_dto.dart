import 'package:dart_counter/domain/training/score/score_training_game_snapshot.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/infrastructure/training/score/score_training_player_snapshot_dto.dart';
import 'package:dart_game/score_training_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'score_training_game_snapshot_dto.freezed.dart';

@freezed
class ScoreTrainingGameSnapshotDto with _$ScoreTrainingGameSnapshotDto {
  const factory ScoreTrainingGameSnapshotDto({
    required String status,
    required int numberOfTakes,
    required KtList<ScoreTrainingPlayerSnapshotDto> players,
    required ScoreTrainingPlayerSnapshotDto owner,
  }) = _ScoreTrainingGameSnapshotDto;

  const ScoreTrainingGameSnapshotDto._();

  ScoreTrainingGameSnapshot toDomain() {
    return ScoreTrainingGameSnapshot(
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

  factory ScoreTrainingGameSnapshotDto.fromExternal(ex.Game game) {
    return ScoreTrainingGameSnapshotDto(
      status: game.status == ex.Status.pending
          ? 'pending'
          : game.status == ex.Status.running
              ? 'running'
              : game.status == ex.Status.canceled
                  ? 'canceled'
                  : 'finished',
      numberOfTakes: game.numberOfTakes,
      players: game.players
          .map((player) => ScoreTrainingPlayerSnapshotDto.fromExternal(player))
          .toImmutableList(),
      owner: ScoreTrainingPlayerSnapshotDto.fromExternal(game.owner),
    );
  }
}
