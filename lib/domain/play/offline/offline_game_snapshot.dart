import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../abstract_game_snapshot.dart';
import '../abstract_player_snapshot.dart';

part 'offline_game_snapshot.freezed.dart';

@freezed
class OfflineGameSnapshot with _$OfflineGameSnapshot implements AbstractGameSnapshot {
  @Implements<AbstractGameSnapshot>()
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
