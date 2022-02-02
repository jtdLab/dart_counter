import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/offline/abstract_offline_player_snapshot.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'offline_game_snapshot.freezed.dart';

@freezed
class OfflineGameSnapshot
    with _$OfflineGameSnapshot
    implements AbstractGameSnapshot {
  // coverage:ignore-start
  @Implements<AbstractGameSnapshot>()
  const factory OfflineGameSnapshot({
    required Status status,
    required Mode mode,
    required int size,
    required Type type,
    required int startingPoints,
    required KtList<AbstractOfflinePlayerSnapshot> players,
  }) = _OfflineGameSnapshot;

  const OfflineGameSnapshot._();

  factory OfflineGameSnapshot.dummy() {
    return OfflineGameSnapshot(
      status: faker.randomGenerator.element(Status.values),
      mode: faker.randomGenerator.element(Mode.values),
      size: faker.randomGenerator.integer(20, min: 1),
      type: faker.randomGenerator.element(Type.values),
      startingPoints: faker.randomGenerator.element([301, 501, 701]),
      players: List.generate(
        faker.randomGenerator.integer(4, min: 1),
        (index) => OfflinePlayerSnapshot.dummy(),
      ).toImmutableList(),
    );
  }
  // coverage:ignore-end

  // TODO doc
  @override
  bool hasDartBot() {
    return players.any((player) => player is DartBotSnapshot);
  }

  // TODO doc
  @override
  AbstractOfflinePlayerSnapshot currentTurn() {
    if (status == Status.pending ||
        status == Status.canceled ||
        status == Status.finished) {
      throw DomainError.gameNotRunning();
    }

    return players.first((player) => player.isCurrentTurn);
  }

  // TODO doc
  // TODO move to base class
  @override
  String description() =>
      '${mode == Mode.firstTo ? 'First to'.toUpperCase() : 'Best of'.toUpperCase()}${' $size '}${type == Type.legs ? 'Legs'.toUpperCase() : 'Sets'.toUpperCase()}';
}
