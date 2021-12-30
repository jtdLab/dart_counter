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

  @override
  bool hasDartBot() => false;

  @override
  String description() =>
      '${mode == Mode.firstTo ? 'First to'.toUpperCase() : 'Best of'.toUpperCase()}${' $size '}${type == Type.legs ? 'Legs'.toUpperCase() : 'Sets'.toUpperCase()}';

  @override
  OnlinePlayerSnapshot currentTurn() {
    return players.first((player) => player.isCurrentTurn);
  }

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
}
