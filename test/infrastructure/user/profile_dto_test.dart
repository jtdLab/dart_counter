import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/domain/user/profile.dart';
import 'package:dart_counter/domain/user/trend.dart';
import 'package:dart_counter/infrastructure/user/career_stats_dto.dart';
import 'package:dart_counter/infrastructure/user/profile_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const photoUrl = 'http://www.ab.c';
  final name = Username('dummyName');
  const nameString = 'dummyName';

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

  const careerStatsDomain = CareerStats(
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

  final domain = Profile(
    photoUrl: photoUrl,
    name: name,
    careerStatsOnline: careerStatsDomain,
  );

  const careerStatsDto = CareerStatsDto(
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

  const dto = ProfileDto(
    photoUrl: photoUrl,
    name: nameString,
    careerStatsOnline: careerStatsDto,
  );

  const careerStatsJson = {
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

  const json = {
    'photoUrl': photoUrl,
    'name': nameString,
    'careerStatsOnline': careerStatsJson,
  };

  test('constructor', () {
    // Assert
    expect(dto.photoUrl, photoUrl);
    expect(dto.name, nameString);
    expect(dto.careerStatsOnline, careerStatsDto);
  });

  test('fromDomain', () {
    // Act
    final dto = ProfileDto.fromDomain(domain);

    // Assert
    expect(dto.photoUrl, photoUrl);
    expect(dto.name, nameString);
    expect(dto.careerStatsOnline, careerStatsDto);
  });

  test('toDomain', () {
    // Act
    final domain = dto.toDomain();

    // Assert
    expect(domain.photoUrl, photoUrl);
    expect(domain.name, name);
    expect(domain.careerStatsOnline, careerStatsDomain);
  });

  test('fromJson', () {
    // Act
    final dto = ProfileDto.fromJson(json);

    // Assert
    expect(dto.photoUrl, photoUrl);
    expect(dto.name, nameString);
    expect(dto.careerStatsOnline, careerStatsDto);
  });

  test('toJson', () {
    // Act
    final json = dto.toJson();

    // Assert
    expect(json['photoUrl'], photoUrl);
    expect(json['name'], nameString);
    expect(json['careerStatsOnline'], careerStatsJson);
  });
}
