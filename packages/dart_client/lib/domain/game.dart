import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'mode.dart';
import 'player.dart';
import 'status.dart';
import 'type.dart';

part 'game.freezed.dart';

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
}
