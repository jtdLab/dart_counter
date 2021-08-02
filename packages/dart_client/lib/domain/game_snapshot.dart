import 'package:dart_client/domain/player_snapshot.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'mode.dart';
import 'status.dart';
import 'type.dart';

part 'game_snapshot.freezed.dart';

@freezed
class GameSnapshot with _$GameSnapshot {
  const factory GameSnapshot({
    required Status status,
    required Mode mode,
    required int size,
    required Type type,
    required int startingPoints,
    required KtList<PlayerSnapshot> players,
  }) = _GameSnapshot;
}
