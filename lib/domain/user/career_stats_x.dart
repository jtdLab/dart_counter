part of 'career_stats.dart';

extension CareerStatsX on CareerStats {
  // TODO better docs lingu
  /// Merges [this] with [other].
  ///
  /// Calulcates new [CareerStats] where [this] and [careerStats]
  /// are weighted according to the number of games.
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

    // TODO trend calc
    return CareerStats(
      average: (average * games + other.average * otherGames) / allGames,
      averageTrend: Trend.none,
      checkoutPercentage:
          (checkoutPercentage * games + other.checkoutPercentage * otherGames) /
              allGames,
      checkoutPercentageTrend: Trend.none,
      firstNine: (firstNine * games + other.firstNine * otherGames) / allGames,
      firstNineTrend: Trend.none,
      games: allGames,
      wins: wins + other.wins,
      defeats: defeats + other.defeats,
    );
  }
}
