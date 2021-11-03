import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/training/training_game_snapshot.dart';
import 'package:dart_counter/domain/training/single/player_snapshot.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../mode.dart';
import '../status.dart';

part 'game_snapshot.freezed.dart';

@freezed
class GameSnapshot with _$GameSnapshot implements TrainingGameSnapshot {
  @Implements<TrainingGameSnapshot>()
  const factory GameSnapshot({
    required Status status,
    required Mode mode,
    required KtList<PlayerSnapshot> players,
    required PlayerSnapshot owner,
  }) = _GameSnapshot;

  // TODO needed remove pls
  factory GameSnapshot.initial({
    String? username,
  }) {
    final owner = PlayerSnapshot.initial(username: username);
    return GameSnapshot(
      status: Status.pending,
      mode: Mode.ascending,
      players: KtList.from([owner]),
      owner: owner,
    );
  }

  factory GameSnapshot.dummy() {
    final players = faker.randomGenerator
        .amount((i) => PlayerSnapshot.dummy(), 4)
        .toImmutableList();

    return GameSnapshot(
      status: Status.pending,
      mode: Mode.ascending,
      players: players,
      owner: players.get(0),
    );
  }
}
