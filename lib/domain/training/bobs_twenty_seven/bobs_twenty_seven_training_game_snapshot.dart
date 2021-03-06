import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/training/abstract_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_player_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/mode.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'bobs_twenty_seven_training_game_snapshot.freezed.dart';

@freezed
class BobsTwentySevenGameSnapshot
    with _$BobsTwentySevenGameSnapshot
    implements AbstractTrainingGameSnapshot {
  // coverage:ignore-start
  @Implements<AbstractTrainingGameSnapshot>()
  const factory BobsTwentySevenGameSnapshot({
    required Status status,
    required Mode mode,
    required KtList<BobsTwentySevenPlayerSnapshot> players,
    required BobsTwentySevenPlayerSnapshot owner,
  }) = _BobsTwentySevenGameSnapshot;

  const BobsTwentySevenGameSnapshot._();

  factory BobsTwentySevenGameSnapshot.dummy() {
    final players = faker.randomGenerator
        .amount((i) => BobsTwentySevenPlayerSnapshot.dummy(), 4);

    return BobsTwentySevenGameSnapshot(
      status: faker.randomGenerator.element(Status.values),
      mode: faker.randomGenerator.element(Mode.values),
      players: players.toImmutableList(),
      owner: players[0],
    );
  }
  // coverage:ignore-end

  // TODO docs
  @override
  BobsTwentySevenPlayerSnapshot currentTurn() {
    if (status == Status.pending ||
        status == Status.canceled ||
        status == Status.finished) {
      throw DomainError.gameNotRunning();
    }

    return players.first((player) => player.isCurrentTurn);
  }
}
