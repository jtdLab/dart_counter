import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'player.dart';

part 'game.freezed.dart';

enum Status { pending, running, canceled, finished }
enum Mode { firstTo, bestOf }
enum Type { legs, sets }

@freezed
class Game with _$Game {
  const factory Game({
    required UniqueId id,
    required DateTime createdAt,
    required bool online, // TODO keep this flag or new game type OnlineGame??
    required Status status,
    required Mode mode,
    required int size,
    required Type type,
    required int startingPoints,
    required KtList<Player> players,
  }) = _Game;

  const Game._();

  bool hasDartBot() {
    if (players.size < 2) {
      return false;
    }

    return players.any((player) => player is DartBot);
  }

  String description() =>
      '${mode == Mode.firstTo ? 'First to'.toUpperCase() : 'Best of'.toUpperCase()}${' $size '}${type == Type.legs ? 'Legs'.toUpperCase() : 'Sets'.toUpperCase()}';

  Player currentTurn() {
    return players.first((player) => player.isCurrentTurn);
  }

  factory Game.dummy() => Game(
        id: UniqueId.fromUniqueString(
          faker.randomGenerator.string(28, min: 28),
        ),
        createdAt: DateTime.now(),
        online: false,
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
          OfflinePlayer.dummy() as Player,
        ]),
      );
}
