import 'package:dart_counter/domain/training/score/score_training_game_snapshot.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/infrastructure/game/status_x.dart';
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
    required List<ScoreTrainingPlayerSnapshotDto> players,
    required ScoreTrainingPlayerSnapshotDto owner,
  }) = _ScoreTrainingGameSnapshotDto;

  const ScoreTrainingGameSnapshotDto._();

  ScoreTrainingGameSnapshot toDomain() {
    return ScoreTrainingGameSnapshot(
      status: StatusX.parse(status),
      numberOfTakes: numberOfTakes,
      players: players.map((player) => player.toDomain()).toImmutableList(),
      owner: owner.toDomain(),
    );
  }

  factory ScoreTrainingGameSnapshotDto.fromExternal(ex.Game game) {
    return ScoreTrainingGameSnapshotDto(
      status: game.status.toShortString(),
      numberOfTakes: game.numberOfTakes,
      players: game.players
          .map((player) => ScoreTrainingPlayerSnapshotDto.fromExternal(player))
          .toList(),
      owner: ScoreTrainingPlayerSnapshotDto.fromExternal(game.owner),
    );
  }
}
