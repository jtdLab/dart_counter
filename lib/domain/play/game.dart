import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'mode.dart';
import 'player.dart';
import 'status.dart';
import 'type.dart';

part 'game.freezed.dart';

abstract class Game {
  UniqueId get id;
  DateTime get createdAt;
  Status get status;
  Mode get mode;
  int get size;
  Type get type;
  int get startingPoints;
  KtList<AbstractPlayer> get players;
  String description();
  AbstractPlayer currentTurn();
}

@freezed
class OfflineGame with _$OfflineGame implements Game {
  @Implements(Game)
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

  bool hasDartBot() {
    if (players.size < 2) {
      return false;
    }

    return players.any((player) => player is DartBot);
  }

  @override
  String description() =>
      '${mode == Mode.firstTo ? 'First to'.toUpperCase() : 'Best of'.toUpperCase()}${' $size '}${type == Type.legs ? 'Legs'.toUpperCase() : 'Sets'.toUpperCase()}';

  @override
  AbstractOfflinePlayer currentTurn() {
    return players.first((player) => player.isCurrentTurn);
  }

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
        players: KtList.from([
          OfflinePlayer.dummy(),
        ]),
      );
}

@freezed
class OnlineGame with _$OnlineGame implements Game {
  @Implements(Game)
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

  @override
  OnlinePlayer currentTurn() {
    return players.first((player) => player.isCurrentTurn);
  }

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
        players: KtList.from([
          OnlinePlayer.dummy(),
        ]),
      );
}
