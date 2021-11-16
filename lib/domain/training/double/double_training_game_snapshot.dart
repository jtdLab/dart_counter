import 'package:dart_counter/domain/training/double/double_training_player_snapshot.dart';
import 'package:dart_counter/domain/training/abstract_training_game_snapshot.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../mode.dart';
import 'package:dart_counter/domain/game/status.dart';

part 'double_training_game_snapshot.freezed.dart';

@freezed
class DoubleTrainingGameSnapshot
    with _$DoubleTrainingGameSnapshot
    implements AbstractTrainingGameSnapshot {
  @Implements<AbstractTrainingGameSnapshot>()
  const factory DoubleTrainingGameSnapshot({
    required Status status,
    required Mode mode,
    required KtList<DoubleTrainingPlayerSnapshot> players,
    required DoubleTrainingPlayerSnapshot owner,
  }) = _DoubleTrainingGameSnapshot;

  factory DoubleTrainingGameSnapshot.dummy() {
    final players = faker.randomGenerator
        .amount((i) => DoubleTrainingPlayerSnapshot.dummy(), 4);

    return DoubleTrainingGameSnapshot(
      status: faker.randomGenerator.element(Status.values),
      mode: faker.randomGenerator.element(Mode.values),
      players: players.toImmutableList(),
      owner: players[0],
    );
  }
}
