import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/domain/user/profile.dart';
import 'package:dart_counter/infrastructure/friend/friend_dto.dart';
import 'package:dart_counter/infrastructure/user/career_stats_dto.dart';
import 'package:dart_counter/infrastructure/user/profile_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final id = UniqueId.fromUniqueString('dummyId');
  const idString = 'dummyId';

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

  final profileDomain = Profile(
    photoUrl: photoUrl,
    name: name,
    careerStatsOnline: careerStatsDomain,
  );

  final domain = Friend(
    id: id,
    profile: profileDomain,
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

  const profileDto = ProfileDto(
    photoUrl: photoUrl,
    name: nameString,
    careerStatsOnline: careerStatsDto,
  );

  const dto = FriendDto(
    id: idString,
    profile: profileDto,
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

  const profileJson = {
    'photoUrl': photoUrl,
    'name': nameString,
    'careerStatsOnline': careerStatsJson,
  };

  final json = {
    'id': idString,
    'profile': profileJson,
  };

  test('#Constructor#', () {
    // Assert
    expect(dto.id, idString);
    expect(dto.profile, profileDto);
  });

  test('#fromDomain#', () {
    // Act
    final dto = FriendDto.fromDomain(domain);

    // Assert
    expect(dto.id, idString);
    expect(dto.profile, profileDto);
  });

  test('#toDomain#', () {
    // Act
    final domain = dto.toDomain();

    // Assert
    expect(domain.id, id);
    expect(domain.profile, profileDomain);
  });

  test('#fromJson#', () {
    // Act
    final dto = FriendDto.fromJson(json);

    // Assert
    expect(dto.id, idString);
    expect(dto.profile, profileDto);
  });

  test('#toJson#', () {
    // Act
    final json = dto.toJson();

    // Assert
    expect(json['id'], idString);
    expect(json['profile'], profileJson);
  });
}
