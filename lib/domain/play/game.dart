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
    required UniqueId? id,
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

    return players.any((player) => player.isDartBot!); // TODO
  }

  factory Game.dummy() {
    final faker = Faker();
    return Game(
      id: UniqueId.fromUniqueString(faker.randomGenerator.string(28, min: 28)),
      status: Status.pending,
      mode: Mode.firstTo,
      size: 3,
      type: Type.legs,
      startingPoints: 501,
      players: KtList.from([Player.dummy()]),
    );
  }
  // TODO add props current turn , description
}
