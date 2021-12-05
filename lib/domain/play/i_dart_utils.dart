// Utility functions helpful for things like validation of user input a. o. when playing dart games.
abstract class IDartUtils {
  /// Returns `true` if [points] is valid when a player has [pointsLeft].
  bool validatePoints({
    required int pointsLeft,
    required int points,
  });

  bool isFinish({
    required int points,
  });

  /// Returns the min. possible dartsThrown depending on [pointsLeft] and [points].
  int minDartsThrown({
    required int pointsLeft,
    required int points,
  });

  /// Returns the max. possible dartsThrown depending on [pointsLeft] and [points].
  int maxDartsThrown({
    required int pointsLeft,
    required int points,
  });

  /// Returns the min. possible dartsOnDouble depending on [pointsLeft] and [points].
  int minDartsOnDouble({
    required int pointsLeft,
    required int points,
  });

  /// Returns the max. possible dartsOnDouble depending on [pointsLeft] and [points].
  int maxDartsOnDouble({
    required int pointsLeft,
    required int points,
  });
}
