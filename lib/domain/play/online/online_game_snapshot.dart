import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/abstract_player_snapshot.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'online_game_snapshot.freezed.dart';

@freezed
class OnlineGameSnapshot
    with _$OnlineGameSnapshot
    implements AbstractGameSnapshot {
  // coverage:ignore-start
  @Implements<AbstractGameSnapshot>()
  const factory OnlineGameSnapshot({
    required Status status,
    required Mode mode,
    required int size,
    required Type type,
    required int startingPoints,
    required KtList<OnlinePlayerSnapshot> players,
  }) = _OnlineGameSnapshot;

  const OnlineGameSnapshot._();

  factory OnlineGameSnapshot.dummy() {
    return OnlineGameSnapshot(
      status: faker.randomGenerator.element(Status.values),
      mode: faker.randomGenerator.element(Mode.values),
      size: faker.randomGenerator.integer(20, min: 1),
      type: faker.randomGenerator.element(Type.values),
      startingPoints: faker.randomGenerator.element([301, 501, 701]),
      players: List.generate(
        faker.randomGenerator.integer(4, min: 1),
        (index) => OnlinePlayerSnapshot.dummy(),
      ).toImmutableList(),
    );
  }
  // coverage:ignore-end

  // TODO doc
  @override
  bool hasDartBot() => false;

  // TODO doc
  @override
  OnlinePlayerSnapshot currentTurn() {
    if (status == Status.pending ||
        status == Status.canceled ||
        status == Status.finished) {
      throw DomainError.gameNotRunning();
    }

    return players.first((player) => player.isCurrentTurn);
  }

  // TODO move to base class not possible in current freezed ?
  // TODO doc
  @override
  String description() =>
      '${mode == Mode.firstTo ? 'First to'.toUpperCase() : 'Best of'.toUpperCase()}${' $size '}${type == Type.legs ? 'Legs'.toUpperCase() : 'Sets'.toUpperCase()}';
}
