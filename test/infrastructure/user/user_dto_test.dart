import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/domain/user/profile.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/infrastructure/user/career_stats_dto.dart';
import 'package:dart_counter/infrastructure/user/profile_dto.dart';
import 'package:dart_counter/infrastructure/user/user_dto.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

void main() {
  final id = UniqueId.fromUniqueString('dummyId');
  const idString = 'dummyId';
  const idToken = 'dummyIdToken';
  final email = EmailAddress('a@b.com');
  const emailString = 'a@b.com';

  final friendIds = KtList.from([
    UniqueId.fromUniqueString('dummyId1'),
    UniqueId.fromUniqueString('dummyId2'),
  ]);
  final friendIdsStrings = ['dummyId1', 'dummyId2'];

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

  final domain = User(
    id: id,
    idToken: idToken,
    email: email,
    profile: profileDomain,
    friendIds: friendIds,
    careerStatsOffline: careerStatsDomain,
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

  final dto = UserDto(
    id: idString,
    idToken: idToken,
    email: emailString,
    profile: profileDto,
    friendIds: friendIdsStrings,
    careerStatsOffline: careerStatsDto,
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
    'idToken': idToken,
    'email': emailString,
    'profile': profileJson,
    'friendIds': friendIdsStrings,
    'careerStatsOffline': careerStatsJson,
  };

  test('constructor', () {
    // Assert
    expect(dto.id, idString);
    expect(dto.idToken, idToken);
    expect(dto.email, emailString);
    expect(dto.profile, profileDto);
    expect(dto.friendIds, friendIdsStrings);
    expect(dto.careerStatsOffline, careerStatsDto);
  });

  test('fromDomain', () {
    // Act
    final dto = UserDto.fromDomain(domain);

    // Assert
    expect(dto.id, idString);
    expect(dto.idToken, idToken);
    expect(dto.email, emailString);
    expect(dto.profile, profileDto);
    expect(dto.friendIds, friendIdsStrings);
    expect(dto.careerStatsOffline, careerStatsDto);
  });

  test('toDomain', () {
    // Act
    final domain = dto.toDomain();

    // Assert
    expect(domain.id, id);
    expect(domain.idToken, idToken);
    expect(domain.email, email);
    expect(domain.profile, profileDomain);
    expect(domain.friendIds, friendIds);
    expect(domain.careerStatsOffline, careerStatsDomain);
  });

  test('fromJson', () {
    // Act
    final dto = UserDto.fromJson(json);

    // Assert
    expect(dto.id, idString);
    expect(dto.idToken, idToken);
    expect(dto.email, emailString);
    expect(dto.profile, profileDto);
    expect(dto.friendIds, friendIdsStrings);
    expect(dto.careerStatsOffline, careerStatsDto);
  });

  test('toJson', () {
    // Act
    final json = dto.toJson();

    // Assert
    expect(json['id'], idString);
    expect(json['idToken'], idToken);
    expect(json['email'], emailString);
    expect(json['profile'], profileJson);
    expect(json['friendIds'], friendIdsStrings);
    expect(json['careerStatsOffline'], careerStatsJson);
  });
}
