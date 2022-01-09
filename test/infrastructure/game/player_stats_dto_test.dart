import 'package:dart_client/domain/stats.dart' as c;
import 'package:dart_counter/infrastructure/game/player_stats_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const average = 88.88;
  const checkoutPercentage = 88.88;
  const firstNineAverage = 88.88;
  const bestLegDartsThrown = 21;
  const bestLegAverage = 100.11;
  const worstLegDartsThrown = 27;
  const worstLegAverage = 55.53;
  const averageDartsPerLeg = 23.5;
  const highestFinish = 121;
  const firstDartAverage = 12.54;
  const secondDartAverage = 15.94;
  const thirdDartAverage = 23.59;
  const fourtyPlus = 1;
  const sixtyPlus = 2;
  const eightyPlus = 3;
  const hundredPlus = 4;
  const hundredTwentyPlus = 5;
  const hundredFourtyPlus = 6;
  const hundredSixtyPlus = 7;
  const hundredEighty = 8;

  const dtoWithoutNulls = PlayerStatsDto(
    average: average,
    checkoutPercentage: checkoutPercentage,
    firstNineAverage: firstNineAverage,
    bestLegDartsThrown: bestLegDartsThrown,
    bestLegAverage: bestLegAverage,
    worstLegDartsThrown: worstLegDartsThrown,
    worstLegAverage: worstLegAverage,
    averageDartsPerLeg: averageDartsPerLeg,
    highestFinish: highestFinish,
    firstDartAverage: firstDartAverage,
    secondDartAverage: secondDartAverage,
    thirdDartAverage: thirdDartAverage,
    fourtyPlus: fourtyPlus,
    sixtyPlus: sixtyPlus,
    eightyPlus: eightyPlus,
    hundredPlus: hundredPlus,
    hundredTwentyPlus: hundredTwentyPlus,
    hundredFourtyPlus: hundredFourtyPlus,
    hundredSixtyPlus: hundredSixtyPlus,
    hundredEighty: hundredEighty,
  );
  const dtoWithNulls = PlayerStatsDto();

  const clientWithoutNulls = c.Stats(
    average: average,
    checkoutPercentage: checkoutPercentage,
    firstNineAverage: firstNineAverage,
    bestLegDartsThrown: bestLegDartsThrown,
    bestLegAverage: bestLegAverage,
    worstLegDartsThrown: worstLegDartsThrown,
    worstLegAverage: worstLegAverage,
    averageDartsPerLeg: averageDartsPerLeg,
    highestFinish: highestFinish,
    firstDartAverage: firstDartAverage,
    secondDartAverage: secondDartAverage,
    thirdDartAverage: thirdDartAverage,
    fourtyPlus: fourtyPlus,
    sixtyPlus: sixtyPlus,
    eightyPlus: eightyPlus,
    hundredPlus: hundredPlus,
    hundredTwentyPlus: hundredTwentyPlus,
    hundredFourtyPlus: hundredFourtyPlus,
    hundredSixtyPlus: hundredSixtyPlus,
    hundredEighty: hundredEighty,
  );
  const clientWithNulls = c.Stats();

  const jsonWithoutNulls = {
    'average': average,
    'checkoutPercentage': checkoutPercentage,
    'firstNineAverage': firstNineAverage,
    'bestLegDartsThrown': bestLegDartsThrown,
    'bestLegAverage': bestLegAverage,
    'worstLegDartsThrown': worstLegDartsThrown,
    'worstLegAverage': worstLegAverage,
    'averageDartsPerLeg': averageDartsPerLeg,
    'highestFinish': highestFinish,
    'firstDartAverage': firstDartAverage,
    'secondDartAverage': secondDartAverage,
    'thirdDartAverage': thirdDartAverage,
    'fourtyPlus': fourtyPlus,
    'sixtyPlus': sixtyPlus,
    'eightyPlus': eightyPlus,
    'hundredPlus': hundredPlus,
    'hundredTwentyPlus': hundredTwentyPlus,
    'hundredFourtyPlus': hundredFourtyPlus,
    'hundredSixtyPlus': hundredSixtyPlus,
    'hundredEighty': hundredEighty,
  };
  const jsonWithNulls = {
    'average': null,
    'checkoutPercentage': null,
    'firstNineAverage': null,
    'bestLegDartsThrown': null,
    'bestLegAverage': null,
    'worstLegDartsThrown': null,
    'worstLegAverage': null,
    'averageDartsPerLeg': null,
    'highestFinish': null,
    'firstDartAverage': null,
    'secondDartAverage': null,
    'thirdDartAverage': null,
    'fourtyPlus': null,
    'sixtyPlus': null,
    'eightyPlus': null,
    'hundredPlus': null,
    'hundredTwentyPlus': null,
    'hundredFourtyPlus': null,
    'hundredSixtyPlus': null,
    'hundredEighty': null,
  };

  group('constructor', () {
    test(
        'GIVEN has no nulls '
        'THEN parse correctly ', () {
      expect(dtoWithoutNulls.average, average);
      expect(dtoWithoutNulls.checkoutPercentage, checkoutPercentage);
      expect(dtoWithoutNulls.firstNineAverage, firstNineAverage);
      expect(dtoWithoutNulls.bestLegDartsThrown, bestLegDartsThrown);
      expect(dtoWithoutNulls.bestLegAverage, bestLegAverage);
      expect(dtoWithoutNulls.worstLegDartsThrown, worstLegDartsThrown);
      expect(dtoWithoutNulls.worstLegAverage, worstLegAverage);
      expect(dtoWithoutNulls.averageDartsPerLeg, averageDartsPerLeg);
      expect(dtoWithoutNulls.highestFinish, highestFinish);
      expect(dtoWithoutNulls.firstDartAverage, firstDartAverage);
      expect(dtoWithoutNulls.secondDartAverage, secondDartAverage);
      expect(dtoWithoutNulls.thirdDartAverage, thirdDartAverage);
      expect(dtoWithoutNulls.fourtyPlus, fourtyPlus);
      expect(dtoWithoutNulls.sixtyPlus, sixtyPlus);
      expect(dtoWithoutNulls.eightyPlus, eightyPlus);
      expect(dtoWithoutNulls.hundredPlus, hundredPlus);
      expect(dtoWithoutNulls.hundredTwentyPlus, hundredTwentyPlus);
      expect(dtoWithoutNulls.hundredFourtyPlus, hundredFourtyPlus);
      expect(dtoWithoutNulls.hundredSixtyPlus, hundredSixtyPlus);
      expect(dtoWithoutNulls.hundredEighty, hundredEighty);
    });

    test(
        'GIVEN has nulls '
        'THEN parse correctly ', () {
      expect(dtoWithNulls.average, null);
      expect(dtoWithNulls.checkoutPercentage, null);
      expect(dtoWithNulls.firstNineAverage, null);
      expect(dtoWithNulls.bestLegDartsThrown, null);
      expect(dtoWithNulls.bestLegAverage, null);
      expect(dtoWithNulls.worstLegDartsThrown, null);
      expect(dtoWithNulls.worstLegAverage, null);
      expect(dtoWithNulls.averageDartsPerLeg, null);
      expect(dtoWithNulls.highestFinish, null);
      expect(dtoWithNulls.firstDartAverage, null);
      expect(dtoWithNulls.secondDartAverage, null);
      expect(dtoWithNulls.thirdDartAverage, null);
      expect(dtoWithNulls.fourtyPlus, null);
      expect(dtoWithNulls.sixtyPlus, null);
      expect(dtoWithNulls.eightyPlus, null);
      expect(dtoWithNulls.hundredPlus, null);
      expect(dtoWithNulls.hundredTwentyPlus, null);
      expect(dtoWithNulls.hundredFourtyPlus, null);
      expect(dtoWithNulls.hundredSixtyPlus, null);
      expect(dtoWithNulls.hundredEighty, null);
    });
  });

  group('toDomain', () {
    test(
        'GIVEN has no nulls '
        'THEN parse correctly ', () {
      final domainWithoutNulls = dtoWithoutNulls.toDomain();

      expect(domainWithoutNulls.average, average);
      expect(domainWithoutNulls.checkoutPercentage, checkoutPercentage);
      expect(domainWithoutNulls.firstNineAverage, firstNineAverage);
      expect(domainWithoutNulls.bestLegDartsThrown, bestLegDartsThrown);
      expect(domainWithoutNulls.bestLegAverage, bestLegAverage);
      expect(domainWithoutNulls.worstLegDartsThrown, worstLegDartsThrown);
      expect(domainWithoutNulls.worstLegAverage, worstLegAverage);
      expect(domainWithoutNulls.averageDartsPerLeg, averageDartsPerLeg);
      expect(domainWithoutNulls.highestFinish, highestFinish);
      expect(domainWithoutNulls.firstDartAverage, firstDartAverage);
      expect(domainWithoutNulls.secondDartAverage, secondDartAverage);
      expect(domainWithoutNulls.thirdDartAverage, thirdDartAverage);
      expect(domainWithoutNulls.fourtyPlus, fourtyPlus);
      expect(domainWithoutNulls.sixtyPlus, sixtyPlus);
      expect(domainWithoutNulls.eightyPlus, eightyPlus);
      expect(domainWithoutNulls.hundredPlus, hundredPlus);
      expect(domainWithoutNulls.hundredTwentyPlus, hundredTwentyPlus);
      expect(domainWithoutNulls.hundredFourtyPlus, hundredFourtyPlus);
      expect(domainWithoutNulls.hundredSixtyPlus, hundredSixtyPlus);
      expect(domainWithoutNulls.hundredEighty, hundredEighty);
    });

    test(
        'GIVEN has nulls '
        'THEN parse correctly ', () {
      final domainWithNulls = dtoWithNulls.toDomain();

      expect(domainWithNulls.average, null);
      expect(domainWithNulls.checkoutPercentage, null);
      expect(domainWithNulls.firstNineAverage, null);
      expect(domainWithNulls.bestLegDartsThrown, null);
      expect(domainWithNulls.bestLegAverage, null);
      expect(domainWithNulls.worstLegDartsThrown, null);
      expect(domainWithNulls.worstLegAverage, null);
      expect(domainWithNulls.averageDartsPerLeg, null);
      expect(domainWithNulls.highestFinish, null);
      expect(domainWithNulls.firstDartAverage, null);
      expect(domainWithNulls.secondDartAverage, null);
      expect(domainWithNulls.thirdDartAverage, null);
      expect(domainWithNulls.fourtyPlus, null);
      expect(domainWithNulls.sixtyPlus, null);
      expect(domainWithNulls.eightyPlus, null);
      expect(domainWithNulls.hundredPlus, null);
      expect(domainWithNulls.hundredTwentyPlus, null);
      expect(domainWithNulls.hundredFourtyPlus, null);
      expect(domainWithNulls.hundredSixtyPlus, null);
      expect(domainWithNulls.hundredEighty, null);
    });
  });

  group('fromClient', () {
    test(
        'GIVEN has no nulls '
        'THEN parse correctly ', () {
      final dtoWithoutNulls = PlayerStatsDto.fromClient(clientWithoutNulls);

      expect(dtoWithoutNulls.average, average);
      expect(dtoWithoutNulls.checkoutPercentage, checkoutPercentage);
      expect(dtoWithoutNulls.firstNineAverage, firstNineAverage);
      expect(dtoWithoutNulls.bestLegDartsThrown, bestLegDartsThrown);
      expect(dtoWithoutNulls.bestLegAverage, bestLegAverage);
      expect(dtoWithoutNulls.worstLegDartsThrown, worstLegDartsThrown);
      expect(dtoWithoutNulls.worstLegAverage, worstLegAverage);
      expect(dtoWithoutNulls.averageDartsPerLeg, averageDartsPerLeg);
      expect(dtoWithoutNulls.highestFinish, highestFinish);
      expect(dtoWithoutNulls.firstDartAverage, firstDartAverage);
      expect(dtoWithoutNulls.secondDartAverage, secondDartAverage);
      expect(dtoWithoutNulls.thirdDartAverage, thirdDartAverage);
      expect(dtoWithoutNulls.fourtyPlus, fourtyPlus);
      expect(dtoWithoutNulls.sixtyPlus, sixtyPlus);
      expect(dtoWithoutNulls.eightyPlus, eightyPlus);
      expect(dtoWithoutNulls.hundredPlus, hundredPlus);
      expect(dtoWithoutNulls.hundredTwentyPlus, hundredTwentyPlus);
      expect(dtoWithoutNulls.hundredFourtyPlus, hundredFourtyPlus);
      expect(dtoWithoutNulls.hundredSixtyPlus, hundredSixtyPlus);
      expect(dtoWithoutNulls.hundredEighty, hundredEighty);
    });

    test(
        'GIVEN has nulls '
        'THEN parse correctly ', () {
      final dtoWithNulls = PlayerStatsDto.fromClient(clientWithNulls);

      expect(dtoWithNulls.average, null);
      expect(dtoWithNulls.checkoutPercentage, null);
      expect(dtoWithNulls.firstNineAverage, null);
      expect(dtoWithNulls.bestLegDartsThrown, null);
      expect(dtoWithNulls.bestLegAverage, null);
      expect(dtoWithNulls.worstLegDartsThrown, null);
      expect(dtoWithNulls.worstLegAverage, null);
      expect(dtoWithNulls.averageDartsPerLeg, null);
      expect(dtoWithNulls.highestFinish, null);
      expect(dtoWithNulls.firstDartAverage, null);
      expect(dtoWithNulls.secondDartAverage, null);
      expect(dtoWithNulls.thirdDartAverage, null);
      expect(dtoWithNulls.fourtyPlus, null);
      expect(dtoWithNulls.sixtyPlus, null);
      expect(dtoWithNulls.eightyPlus, null);
      expect(dtoWithNulls.hundredPlus, null);
      expect(dtoWithNulls.hundredTwentyPlus, null);
      expect(dtoWithNulls.hundredFourtyPlus, null);
      expect(dtoWithNulls.hundredSixtyPlus, null);
      expect(dtoWithNulls.hundredEighty, null);
    });
  });

  group('fromJson', () {
    test(
        'GIVEN has no nulls '
        'THEN parse correctly ', () {
      final dtoWithoutNulls = PlayerStatsDto.fromJson(jsonWithoutNulls);

      expect(dtoWithoutNulls.average, average);
      expect(dtoWithoutNulls.checkoutPercentage, checkoutPercentage);
      expect(dtoWithoutNulls.firstNineAverage, firstNineAverage);
      expect(dtoWithoutNulls.bestLegDartsThrown, bestLegDartsThrown);
      expect(dtoWithoutNulls.bestLegAverage, bestLegAverage);
      expect(dtoWithoutNulls.worstLegDartsThrown, worstLegDartsThrown);
      expect(dtoWithoutNulls.worstLegAverage, worstLegAverage);
      expect(dtoWithoutNulls.averageDartsPerLeg, averageDartsPerLeg);
      expect(dtoWithoutNulls.highestFinish, highestFinish);
      expect(dtoWithoutNulls.firstDartAverage, firstDartAverage);
      expect(dtoWithoutNulls.secondDartAverage, secondDartAverage);
      expect(dtoWithoutNulls.thirdDartAverage, thirdDartAverage);
      expect(dtoWithoutNulls.fourtyPlus, fourtyPlus);
      expect(dtoWithoutNulls.sixtyPlus, sixtyPlus);
      expect(dtoWithoutNulls.eightyPlus, eightyPlus);
      expect(dtoWithoutNulls.hundredPlus, hundredPlus);
      expect(dtoWithoutNulls.hundredTwentyPlus, hundredTwentyPlus);
      expect(dtoWithoutNulls.hundredFourtyPlus, hundredFourtyPlus);
      expect(dtoWithoutNulls.hundredSixtyPlus, hundredSixtyPlus);
      expect(dtoWithoutNulls.hundredEighty, hundredEighty);
    });

    test(
        'GIVEN has nulls '
        'THEN parse correctly ', () {
      final dtoWithNulls = PlayerStatsDto.fromJson(jsonWithNulls);

      expect(dtoWithNulls.average, null);
      expect(dtoWithNulls.checkoutPercentage, null);
      expect(dtoWithNulls.firstNineAverage, null);
      expect(dtoWithNulls.bestLegDartsThrown, null);
      expect(dtoWithNulls.bestLegAverage, null);
      expect(dtoWithNulls.worstLegDartsThrown, null);
      expect(dtoWithNulls.worstLegAverage, null);
      expect(dtoWithNulls.averageDartsPerLeg, null);
      expect(dtoWithNulls.highestFinish, null);
      expect(dtoWithNulls.firstDartAverage, null);
      expect(dtoWithNulls.secondDartAverage, null);
      expect(dtoWithNulls.thirdDartAverage, null);
      expect(dtoWithNulls.fourtyPlus, null);
      expect(dtoWithNulls.sixtyPlus, null);
      expect(dtoWithNulls.eightyPlus, null);
      expect(dtoWithNulls.hundredPlus, null);
      expect(dtoWithNulls.hundredTwentyPlus, null);
      expect(dtoWithNulls.hundredFourtyPlus, null);
      expect(dtoWithNulls.hundredSixtyPlus, null);
      expect(dtoWithNulls.hundredEighty, null);
    });
  });

  group('toJson', () {
    test(
        'GIVEN has no nulls '
        'THEN parse correctly ', () {
      final jsonWithoutNulls = dtoWithoutNulls.toJson();

      expect(jsonWithoutNulls['average'], average);
      expect(jsonWithoutNulls['checkoutPercentage'], checkoutPercentage);
      expect(jsonWithoutNulls['firstNineAverage'], firstNineAverage);
      expect(jsonWithoutNulls['bestLegDartsThrown'], bestLegDartsThrown);
      expect(jsonWithoutNulls['bestLegAverage'], bestLegAverage);
      expect(jsonWithoutNulls['worstLegDartsThrown'], worstLegDartsThrown);
      expect(jsonWithoutNulls['worstLegAverage'], worstLegAverage);
      expect(jsonWithoutNulls['averageDartsPerLeg'], averageDartsPerLeg);
      expect(jsonWithoutNulls['highestFinish'], highestFinish);
      expect(jsonWithoutNulls['firstDartAverage'], firstDartAverage);
      expect(jsonWithoutNulls['secondDartAverage'], secondDartAverage);
      expect(jsonWithoutNulls['thirdDartAverage'], thirdDartAverage);
      expect(jsonWithoutNulls['fourtyPlus'], fourtyPlus);
      expect(jsonWithoutNulls['sixtyPlus'], sixtyPlus);
      expect(jsonWithoutNulls['eightyPlus'], eightyPlus);
      expect(jsonWithoutNulls['hundredPlus'], hundredPlus);
      expect(jsonWithoutNulls['hundredTwentyPlus'], hundredTwentyPlus);
      expect(jsonWithoutNulls['hundredFourtyPlus'], hundredFourtyPlus);
      expect(jsonWithoutNulls['hundredSixtyPlus'], hundredSixtyPlus);
      expect(jsonWithoutNulls['hundredEighty'], hundredEighty);
    });

    test(
        'GIVEN has nulls '
        'THEN parse correctly ', () {
      final jsonWithNulls = dtoWithNulls.toJson();

      expect(jsonWithNulls['average'], null);
      expect(jsonWithNulls['checkoutPercentage'], null);
      expect(jsonWithNulls['firstNineAverage'], null);
      expect(jsonWithNulls['bestLegDartsThrown'], null);
      expect(jsonWithNulls['bestLegAverage'], null);
      expect(jsonWithNulls['worstLegDartsThrown'], null);
      expect(jsonWithNulls['worstLegAverage'], null);
      expect(jsonWithNulls['averageDartsPerLeg'], null);
      expect(jsonWithNulls['highestFinish'], null);
      expect(jsonWithNulls['firstDartAverage'], null);
      expect(jsonWithNulls['secondDartAverage'], null);
      expect(jsonWithNulls['thirdDartAverage'], null);
      expect(jsonWithNulls['fourtyPlus'], null);
      expect(jsonWithNulls['sixtyPlus'], null);
      expect(jsonWithNulls['eightyPlus'], null);
      expect(jsonWithNulls['hundredPlus'], null);
      expect(jsonWithNulls['hundredTwentyPlus'], null);
      expect(jsonWithNulls['hundredFourtyPlus'], null);
      expect(jsonWithNulls['hundredSixtyPlus'], null);
      expect(jsonWithNulls['hundredEighty'], null);
    });
  });
}
