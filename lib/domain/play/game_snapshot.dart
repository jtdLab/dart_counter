import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'mode.dart';
import 'player_snapshot.dart';
import 'status.dart';
import 'type.dart';

part 'game_snapshot.freezed.dart';

abstract class GameSnapshot {
  Status get status;
  Mode get mode;
  int get size;
  Type get type;
  int get startingPoints;
  KtList<PlayerSnapshot> get players;
}

@freezed
class OfflineGameSnapshot with _$OfflineGameSnapshot {
  const factory OfflineGameSnapshot({
    required Status status,
    required Mode mode,
    required int size,
    required Type type,
    required int startingPoints,
    required KtList<PlayerSnapshot> players,
  }) = _OfflineGameSnapshot;
}

@freezed
class OnlineGameSnapshot with _$OnlineGameSnapshot {
  const factory OnlineGameSnapshot({
    required Status status,
    required Mode mode,
    required int size,
    required Type type,
    required int startingPoints,
    required KtList<OnlinePlayerSnapshot> players,
  }) = _OnlineGameSnapshot;
}
