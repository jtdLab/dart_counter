import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/training/abstract_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/score/score_training_player_snapshot.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'score_training_game_snapshot.freezed.dart';

@freezed
class ScoreTrainingGameSnapshot
    with _$ScoreTrainingGameSnapshot
    implements AbstractTrainingGameSnapshot {
  // coverage:ignore-start
  @Implements<AbstractTrainingGameSnapshot>()
  const factory ScoreTrainingGameSnapshot({
    required Status status,
    required int numberOfTakes,
    required KtList<ScoreTrainingPlayerSnapshot> players,
    required ScoreTrainingPlayerSnapshot owner,
  }) = _ScoreTrainingGameSnapshot;

  const ScoreTrainingGameSnapshot._();

  factory ScoreTrainingGameSnapshot.dummy() {
    final players = faker.randomGenerator
        .amount((i) => ScoreTrainingPlayerSnapshot.dummy(), 4);

    return ScoreTrainingGameSnapshot(
      status: faker.randomGenerator.element(Status.values),
      numberOfTakes: faker.randomGenerator.integer(20),
      players: players.toImmutableList(),
      owner: players[0],
    );
  }
  // coverage:ignore-end

  // TODO docs
  @override
  ScoreTrainingPlayerSnapshot currentTurn() {
    if (status == Status.pending ||
        status == Status.canceled ||
        status == Status.finished) {
      throw DomainError.gameNotRunning();
    }

    return players.first((player) => player.isCurrentTurn);
  }
}
