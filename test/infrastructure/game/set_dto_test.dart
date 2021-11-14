import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/infrastructure/game/leg_dto.dart';
import 'package:dart_counter/infrastructure/game/set_dto.dart';
import 'package:dart_counter/infrastructure/game/throw_dto.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:flutter_test/flutter_test.dart';

void main() {
  const points = 60;
  const dartsThrown = 3;
  const dartsOnDouble = 0;

  const startingPoints = 501;

  final throwExternal = ex.Throw(
    points: points,
  );

  final legExternal = ex.Leg.fromData(
    startingPoints: startingPoints,
    throws: [throwExternal, throwExternal],
  );

  final setExternal = ex.Set.fromData(
    startingPoints: startingPoints,
    legs: [legExternal, legExternal],
  );

  const throwDto = ThrowDto(
    points: points,
    dartsThrown: dartsThrown,
    dartsOnDouble: dartsOnDouble,
  );

  const legDto = LegDto(
    throws: [throwDto, throwDto],
  );

  const setDto = SetDto(legs: [legDto, legDto]);

  const throwJson = {
    'points': points,
    'dartsThrown': dartsThrown,
    'dartsOnDouble': dartsOnDouble,
    'darts': null,
  };

  const legJson = {
    'throws': [throwJson, throwJson],
  };

  const json = {
    'legs': [legJson, legJson],
  };

  test('constructor', () {
    // Assert
    expect(setDto.legs, [legDto, legDto]);
  });

  test('toDomain', () {
    // Act
    final domain = setDto.toDomain(startingPoints: startingPoints);

    // Assert
    expect(domain.won, false);
    expect(domain.legs.size, 2);
    expect(domain.stats.average, 60);
    expect(domain.stats.checkoutPercentage, null);
    expect(domain.stats.firstNineAverage, 60);
    expect(domain.stats.bestLegDartsThrown, null);
    expect(domain.stats.bestLegAverage, null);
    expect(domain.stats.worstLegDartsThrown, null);
    expect(domain.stats.worstLegAverage, null);
    expect(domain.stats.averageDartsPerLeg, null);
    expect(domain.stats.highestFinish, null);
    expect(domain.stats.firstDartAverage, null);
    expect(domain.stats.secondDartAverage, null);
    expect(domain.stats.thirdDartAverage, null);
    expect(domain.stats.fourtyPlus, 0);
    expect(domain.stats.sixtyPlus, 4);
    expect(domain.stats.eightyPlus, 0);
    expect(domain.stats.hundredPlus, 0);
    expect(domain.stats.hundredTwentyPlus, 0);
    expect(domain.stats.hundredFourtyPlus, 0);
    expect(domain.stats.hundredSixtyPlus, 0);
    expect(domain.stats.hundredEighty, 0);
  });

  test('fromExternal', () {
    // Act
    final dto = SetDto.fromExternal(setExternal);

    // Assert
    expect(dto.legs, [legDto, legDto]);
  });

  test('toExternal', () {
    // Act
    final external = setDto.toExternal(startingPoints: startingPoints);

    // Assert
    expect(external.won, false);
    expect(external.legs.length, 2);
    expect(external.average, 60);
    expect(external.checkoutPercentage, null);
    expect(external.firstNineAverage, 60);
    expect(external.highestFinish, null);
    expect(external.firstDartAverage, null);
    expect(external.secondDartAverage, null);
    expect(external.thirdDartAverage, null);
    expect(external.fourtyPlus, 0);
    expect(external.sixtyPlus, 4);
    expect(external.eightyPlus, 0);
    expect(external.hundredPlus, 0);
    expect(external.hundredTwentyPlus, 0);
    expect(external.hundredFourtyPlus, 0);
    expect(external.hundredSixtyPlus, 0);
    expect(external.hundredEighty, 0);
  });

  test('fromJson', () {
    // Act
    final dto = SetDto.fromJson(json);

    // Assert
    expect(dto.legs, [legDto, legDto]);
  });

  test('toJson', () {
    // Act
    final json = setDto.toJson();

    // Assert
    expect(json['legs'], [legJson, legJson]);
  });
}
