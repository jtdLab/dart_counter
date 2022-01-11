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
  @Implements<AbstractTrainingGameSnapshot>()
  const factory ScoreTrainingGameSnapshot({
    required Status status,
    required int numberOfTakes,
    required KtList<ScoreTrainingPlayerSnapshot> players,
    required ScoreTrainingPlayerSnapshot owner,
  }) = _ScoreTrainingGameSnapshot;

  @override
  ScoreTrainingPlayerSnapshot currentTurn() {
    // TODO her eand other throw not running game if status is pending/fininshed
    return players.first((player) => player.isCurrentTurn);
  }

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
}
