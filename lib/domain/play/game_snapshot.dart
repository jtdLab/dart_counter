import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'mode.dart';
import 'player_snapshot.dart';
import 'status.dart';
import 'type.dart';

part 'game_snapshot.freezed.dart';

// TODO provide methods needed like hasDartBot etc.
abstract class GameSnapshot {
  Status get status;
  Mode get mode;
  int get size;
  Type get type;
  int get startingPoints;
  KtList<AbstractPlayerSnapshot> get players;
  String description();
  AbstractPlayerSnapshot currentTurn();
  bool hasDartBot();
}

@freezed
class OfflineGameSnapshot with _$OfflineGameSnapshot implements GameSnapshot {
  @Implements<GameSnapshot>()
  const factory OfflineGameSnapshot({
    required Status status,
    required Mode mode,
    required int size,
    required Type type,
    required int startingPoints,
    required KtList<AbstractOfflinePlayerSnapshot> players,
  }) = _OfflineGameSnapshot;

  const OfflineGameSnapshot._();

  @override
  bool hasDartBot() {
    if (players.size < 2) {
      return false;
    }

    return players.any((player) => player is DartBotSnapshot);
  }

  @override
  String description() =>
      '${mode == Mode.firstTo ? 'First to'.toUpperCase() : 'Best of'.toUpperCase()}${' $size '}${type == Type.legs ? 'Legs'.toUpperCase() : 'Sets'.toUpperCase()}';

  @override
  AbstractOfflinePlayerSnapshot currentTurn() {
    return players.first((player) => player.isCurrentTurn);
  }
}

@freezed
class OnlineGameSnapshot with _$OnlineGameSnapshot implements GameSnapshot {
  @Implements<GameSnapshot>()
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
}
