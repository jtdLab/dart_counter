import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:uuid/uuid.dart';

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

  factory Game.dummy() => Game(
        id: UniqueId.fromUniqueString(const Uuid().v4()),
        status: Status.pending,
        mode: Mode.firstTo,
        size: 3,
        type: Type.legs,
        startingPoints: 501,
        players: KtList.from([Player.dummy()]),
      );

  // TODO add props current turn , description
}
