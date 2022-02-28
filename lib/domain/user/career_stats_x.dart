part of 'career_stats.dart';

// TODO test
extension CareerStatsX on CareerStats {
  // TODO better docs lingu
  /// Merges [this] with [other].
  ///
  /// Calulcates new [CareerStats] where [this] and [careerStats]
  /// are weighted according to the number of games.
  /// The trend of the resulting [CareerStats] is taken from [this] or [careerStats] depending
  /// which one has more games.
  CareerStats merge(
    CareerStats other,
  ) {
    final otherGames = other.games;
    final allGames = games + otherGames;

    if (allGames == 0) {
      return const CareerStats(
        average: 0,
        averageTrend: Trend.none,
        checkoutPercentage: 0,
        checkoutPercentageTrend: Trend.none,
        firstNine: 0,
        firstNineTrend: Trend.none,
        games: 0,
        wins: 0,
        defeats: 0,
      );
    }

    return CareerStats(
      average: (average * games + other.average * otherGames) / allGames,
      averageTrend: games > otherGames ? averageTrend : other.averageTrend,
      checkoutPercentage:
          (checkoutPercentage * games + other.checkoutPercentage * otherGames) /
              allGames,
      checkoutPercentageTrend: games > otherGames
          ? checkoutPercentageTrend
          : other.checkoutPercentageTrend,
      firstNine: (firstNine * games + other.firstNine * otherGames) / allGames,
      firstNineTrend:
          games > otherGames ? firstNineTrend : other.firstNineTrend,
      games: allGames,
      wins: wins + other.wins,
      defeats: defeats + other.defeats,
    );
  }
}
