import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import '../abstract_game.dart';
import '../mode.dart';
import '../abstract_player.dart';
import '../status.dart';
import '../type.dart';

part 'offline_game.freezed.dart';

@freezed
class OfflineGame with _$OfflineGame implements AbstractGame {
  @Implements<AbstractGame>()
  const factory OfflineGame({
    required UniqueId id,
    required DateTime createdAt,
    required Status status,
    required Mode mode,
    required int size,
    required Type type,
    required int startingPoints,
    required KtList<AbstractOfflinePlayer> players,
  }) = _OfflineGame;

  const OfflineGame._();

  @override
  String description() =>
      '${mode == Mode.firstTo ? 'First to'.toUpperCase() : 'Best of'.toUpperCase()}${' $size '}${type == Type.legs ? 'Legs'.toUpperCase() : 'Sets'.toUpperCase()}';

  factory OfflineGame.dummy() => OfflineGame(
        id: UniqueId.fromUniqueString(
          faker.randomGenerator.string(28, min: 28),
        ),
        createdAt: DateTime.now().subtract(
          Duration(seconds: faker.randomGenerator.integer(1000000)),
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
            .amount((i) => OfflinePlayer.dummy(), 4)
            .toImmutableList(),
      );
}
