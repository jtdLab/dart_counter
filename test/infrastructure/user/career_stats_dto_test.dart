import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/infrastructure/user/career_stats_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const average = 88.0;
  const averageTrend = Trend.down;
  const averageTrendString = 'down';
  const checkoutPercentage = 45.6;
  const checkoutPercentageTrend = Trend.none;
  const checkoutPercentageTrendString = 'none';
  const firstNine = 70.89;
  const firstNineTrend = Trend.up;
  const firstNineTrendString = 'up';
  const games = 100;
  const wins = 67;
  const defeats = 33;

  const domain = CareerStats(
    average: average,
    averageTrend: averageTrend,
    checkoutPercentage: checkoutPercentage,
    checkoutPercentageTrend: checkoutPercentageTrend,
    firstNine: firstNine,
    firstNineTrend: firstNineTrend,
    games: games,
    wins: wins,
    defeats: defeats,
  );

  const dto = CareerStatsDto(
    average: average,
    averageTrend: averageTrendString,
    checkoutPercentage: checkoutPercentage,
    checkoutPercentageTrend: checkoutPercentageTrendString,
    firstNine: firstNine,
    firstNineTrend: firstNineTrendString,
    games: games,
    wins: wins,
    defeats: defeats,
  );

  const json = {
    'average': average,
    'averageTrend': averageTrendString,
    'checkoutPercentage': checkoutPercentage,
    'checkoutPercentageTrend': checkoutPercentageTrendString,
    'firstNine': firstNine,
    'firstNineTrend': firstNineTrendString,
    'games': games,
    'wins': wins,
    'defeats': defeats,
  };

  test('constructor', () {
    // Assert
    expect(dto.average, average);
    expect(dto.averageTrend, averageTrendString);
    expect(dto.checkoutPercentage, checkoutPercentage);
    expect(dto.checkoutPercentageTrend, checkoutPercentageTrendString);
    expect(dto.firstNine, firstNine);
    expect(dto.firstNineTrend, firstNineTrendString);
    expect(dto.games, games);
    expect(dto.wins, wins);
    expect(dto.defeats, defeats);
  });

  test('fromDomain', () {
    // Act
    final dto = CareerStatsDto.fromDomain(domain);

    // Assert
    expect(dto.average, average);
    expect(dto.averageTrend, averageTrendString);
    expect(dto.checkoutPercentage, checkoutPercentage);
    expect(dto.checkoutPercentageTrend, checkoutPercentageTrendString);
    expect(dto.firstNine, firstNine);
    expect(dto.firstNineTrend, firstNineTrendString);
    expect(dto.games, games);
    expect(dto.wins, wins);
    expect(dto.defeats, defeats);
  });

  test('toDomain', () {
    // Act
    final domain = dto.toDomain();

    // Assert
    expect(domain.average, average);
    expect(domain.averageTrend, averageTrend);
    expect(domain.checkoutPercentage, checkoutPercentage);
    expect(domain.checkoutPercentageTrend, checkoutPercentageTrend);
    expect(domain.firstNine, firstNine);
    expect(domain.firstNineTrend, firstNineTrend);
    expect(domain.games, games);
    expect(domain.wins, wins);
    expect(domain.defeats, defeats);
  });

  test('fromJson', () {
    // Act
    final dto = CareerStatsDto.fromJson(json);

    // Assert
    expect(dto.average, average);
    expect(dto.averageTrend, averageTrendString);
    expect(dto.checkoutPercentage, checkoutPercentage);
    expect(dto.checkoutPercentageTrend, checkoutPercentageTrendString);
    expect(dto.firstNine, firstNine);
    expect(dto.firstNineTrend, firstNineTrendString);
    expect(dto.games, games);
    expect(dto.wins, wins);
    expect(dto.defeats, defeats);
  });

  test('toJson', () {
    // Act
    final json = dto.toJson();

    // Assert
    expect(json['average'], average);
    expect(json['averageTrend'], averageTrendString);
    expect(json['checkoutPercentage'], checkoutPercentage);
    expect(json['checkoutPercentageTrend'], checkoutPercentageTrendString);
    expect(json['firstNine'], firstNine);
    expect(json['firstNineTrend'], firstNineTrendString);
    expect(json['games'], games);
    expect(json['wins'], wins);
    expect(json['defeats'], defeats);
  });
}
