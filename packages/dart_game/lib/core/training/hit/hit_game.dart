import 'package:dart_game/core/abstract_game.dart';
import 'package:dart_game/core/abstract_player.dart';

import '../../status.dart';
import 'hit.dart';

abstract class HitGame<T extends AbstractPlayer> extends AbstractGame<T> {
  /// Creates a game with given [ownerName].
  HitGame({
    required T owner,
  }) : super(owner: owner);

  HitGame.fromData({
    required Status status,
    required List<T> players,
    required T owner,
  }) : super.fromData(status: status, players: players, owner: owner);

  /// Performs hits [hit1], [hit2] and [hit3] to the current turn and go to next turn.
  bool performHits(
    Hit hit1,
    Hit hit2,
    Hit hit3,
  );

  /// Undos the last round of the previous turn of this game.
  bool undoHits();
}
