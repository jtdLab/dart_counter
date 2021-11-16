import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/training/abstract_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/single/single_training_player_snapshot.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../mode.dart';

part 'single_training_game_snapshot.freezed.dart';

@freezed
class SingleTrainingGameSnapshot
    with _$SingleTrainingGameSnapshot
    implements AbstractTrainingGameSnapshot {
  @Implements<AbstractTrainingGameSnapshot>()
  const factory SingleTrainingGameSnapshot({
    required Status status,
    required Mode mode,
    required KtList<SingleTrainingPlayerSnapshot> players,
    required SingleTrainingPlayerSnapshot owner,
  }) = _SingleTrainingGameSnapshot;

  // TODO needed remove pls
  factory SingleTrainingGameSnapshot.initial({
    String? username,
  }) {
    final owner = SingleTrainingPlayerSnapshot.initial(username: username);
    return SingleTrainingGameSnapshot(
      status: Status.pending,
      mode: Mode.ascending,
      players: KtList.from([owner]),
      owner: owner,
    );
  }

  factory SingleTrainingGameSnapshot.dummy() {
    final players = faker.randomGenerator
        .amount((i) => SingleTrainingPlayerSnapshot.dummy(), 4);

    return SingleTrainingGameSnapshot(
      status: faker.randomGenerator.element(Status.values),
      mode: faker.randomGenerator.element(Mode.values),
      players: players.toImmutableList(),
      owner: players[0],
    );
  }
}
