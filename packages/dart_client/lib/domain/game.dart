import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'player.dart';

part 'game.freezed.dart';

enum Status {
  @JsonValue('pending')
  pending,
  @JsonValue('running')
  running,
  @JsonValue('canceled')
  canceled,
  @JsonValue('finished')
  finished,
}

enum Mode {
  @JsonValue('firstTo')
  firstTo,
  @JsonValue('bestOf')
  bestOf,
}

enum Type {
  @JsonValue('legs')
  legs,
  @JsonValue('sets')
  sets,
}

@freezed
class Game with _$Game {
  const factory Game({
    required String id,
    required DateTime createdAt,
    required Status status,
    required Mode mode,
    required int size,
    required Type type,
    required int startingPoints,
    required KtList<Player> players,
  }) = _Game;

  const Game._();

  String description() =>
      '${mode == Mode.firstTo ? 'First to'.toUpperCase() : 'Best of'.toUpperCase()}${' $size '}${type == Type.legs ? 'Legs'.toUpperCase() : 'Sets'.toUpperCase()}';

  Player? currentTurn() {
    try {
      return players.first((player) => player.isCurrentTurn ?? false);
    } on NoSuchElementException catch (_) {
      return null;
    }
  }
}
