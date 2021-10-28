import 'abstract_player.dart';
import 'status.dart';
import 'throw.dart';

/// Base class for a game which provides some standard fields and methods to start with.
///
/// T is the corresponding player of the game.
abstract class AbstractGame<T extends AbstractPlayer> {
  final int maxPlayers = 4;

  Status status;
  final List<T> players;
  final T owner;

  /// Creates a game with given [ownerName].
  AbstractGame({
    required this.owner,
  })  : status = Status.pending,
        players = [owner];

  AbstractGame.fromData({
    required this.status,
    required this.players,
    required this.owner,
  }) {
    if (!players.contains(owner)) {
      throw ArgumentError.value(owner, 'Owner is not part of the players.');
    }
  }

  /// Starts this game and initializes the [players].
  ///
  /// Returns `true` if started.
  bool start();

  /// Performs [t] on this game.
  ///
  /// Returns `true` if [t] was valid and throw was performed successfully.
  bool performThrow({
    required Throw t,
  });

  /// Undoes the last throw of this game.
  ///
  /// Returns `true` if undone.
  bool undoThrow();

  /// Adds a player with [name] to this game if pending and not full.
  ///
  /// If no [name] provided the player gets a generic name `'player n'`.
  /// This means the first player with no provided name gets the name `'player 1'`
  /// the second gets the name `'player 2'`.
  ///
  /// Returns `true` if added.
  bool addPlayer({
    required T player,
  }) {
    if (status == Status.pending) {
      if (players.length < maxPlayers) {
        players.add(player);

        return true;
      }
    }

    return false;
  }

  /// Removes a player at [index] from a this game if pending and enough players remain.
  ///
  /// Returns `true` if removed.
  bool removePlayer({
    required int index,
  }) {
    if (status == Status.pending) {
      if (index == players.indexOf(owner)) {
        return false;
      }
      if (players.length > 1) {
        players.removeAt(index);

        return true;
      }
    }

    return false;
  }

  /// Changes position of player at [oldIndex] to [newIndex] of this game if pending.
  ///
  /// Returns `true` if reordered.
  bool reorderPlayer({
    required int oldIndex,
    required int newIndex,
  }) {
    if (oldIndex == newIndex) {
      return false;
    }

    if (oldIndex < 0) {
      return false;
    }

    if (newIndex < 0) {
      return false;
    }

    if (oldIndex > players.length - 1) {
      return false;
    }

    if (newIndex > players.length - 1) {
      return false;
    }

    if (status == Status.pending) {
      T player = players.removeAt(oldIndex);
      players.insert(newIndex, player);

      return true;
    }

    return false;
  }

  bool cancel() {
    if (status == Status.pending || status == Status.running) {
      status == Status.canceled;
      return true;
    }

    return false;
  }
}
