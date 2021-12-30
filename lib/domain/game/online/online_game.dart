import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/abstract_game.dart';
import 'package:dart_counter/domain/game/abstract_player.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'online_game.freezed.dart';

@freezed
class OnlineGame with _$OnlineGame implements AbstractGame {
  @Implements<AbstractGame>()
  const factory OnlineGame({
    required UniqueId id,
    required DateTime createdAt,
    required UniqueId ownerId,
    required Status status,
    required Mode mode,
    required int size,
    required Type type,
    required int startingPoints,
    required KtList<OnlinePlayer> players,
  }) = _OnlineGame;

  const OnlineGame._();

  @override
  String description() =>
      '${mode == Mode.firstTo ? 'First to'.toUpperCase() : 'Best of'.toUpperCase()}${' $size '}${type == Type.legs ? 'Legs'.toUpperCase() : 'Sets'.toUpperCase()}';

  factory OnlineGame.dummy() => OnlineGame(
        id: UniqueId.fromUniqueString(
          faker.randomGenerator.string(28, min: 28),
        ),
        createdAt: DateTime.now().subtract(
          Duration(seconds: faker.randomGenerator.integer(1000000)),
        ),
        ownerId: UniqueId.fromUniqueString(
          faker.randomGenerator.string(28, min: 28),
        ),
        status: Status.pending,
        mode: faker.randomGenerator.element([
          Mode.firstTo,
          Mode.bestOf,
        ]),
        size: faker.randomGenerator.integer(30, min: 1),
        type: faker.randomGenerator.element([
          Type.legs,
          Type.sets,
        ]),
        startingPoints: faker.randomGenerator.element([
          301,
          501,
          701,
        ]),
        players: faker.randomGenerator
            .amount((i) => OnlinePlayer.dummy(), 4)
            .toImmutableList(),
      );
}
