import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/infrastructure/game/leg_dto.dart';
import 'package:dart_counter/infrastructure/game/throw_dto.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

void main() {
  const points = 60;
  const dartsThrown = 3;
  const dartsOnDouble = 0;

  const startingPoints = 501;

  const throwDomain = Throw(
    points: points,
    dartsThrown: dartsThrown,
    dartsOnDouble: dartsOnDouble,
  );

  final throwExternal = ex.Throw(
    points: points,
  );

  final external = ex.Leg.fromData(
    startingPoints: startingPoints,
    throws: [throwExternal, throwExternal],
  );

  const throwDto = ThrowDto(
    points: points,
    dartsThrown: dartsThrown,
    dartsOnDouble: dartsOnDouble,
  );

  const dto = LegDto(
    throws: [throwDto, throwDto],
  );

  const throwJson = {
    'points': points,
    'dartsThrown': dartsThrown,
    'dartsOnDouble': dartsOnDouble,
    'darts': null,
  };

  const json = {
    'throws': [throwJson, throwJson],
  };

  test('constructor', () {
    // Assert
    expect(dto.throws, [throwDto, throwDto]);
  });

  test('toDomain', () {
    // Act
    final domain = dto.toDomain(startingPoints: startingPoints);

    // Assert
    expect(domain.won, false);
    expect(domain.throws, KtList.from([throwDomain, throwDomain]));
    expect(domain.stats.average, 60);
    expect(domain.stats.checkoutPercentage, null);
    expect(domain.stats.firstNineAverage, 60);
    expect(domain.stats.firstDartAverage, null);
    expect(domain.stats.secondDartAverage, null);
    expect(domain.stats.thirdDartAverage, null);
    expect(domain.stats.fourtyPlus, 0);
    expect(domain.stats.sixtyPlus, 2);
    expect(domain.stats.eightyPlus, 0);
    expect(domain.stats.hundredPlus, 0);
    expect(domain.stats.hundredTwentyPlus, 0);
    expect(domain.stats.hundredFourtyPlus, 0);
    expect(domain.stats.hundredSixtyPlus, 0);
    expect(domain.stats.hundredEighty, 0);
  });

  test('fromExternal', () {
    // Act
    final dto = LegDto.fromExternal(external);

    // Assert
    expect(dto.throws, [throwDto, throwDto]);
  });

  test('toExternal', () {
    // Act
    final external = dto.toExternal(startingPoints: startingPoints);

    // Assert
    expect(external.won, false);
    expect(external.throws, [throwExternal, throwExternal]);
    expect(external.average, 60);
    expect(external.checkoutPercentage, null);
    expect(external.firstNineAverage, 60);
    expect(external.firstDartAverage, null);
    expect(external.secondDartAverage, null);
    expect(external.thirdDartAverage, null);
    expect(external.fourtyPlus, 0);
    expect(external.sixtyPlus, 2);
    expect(external.eightyPlus, 0);
    expect(external.hundredPlus, 0);
    expect(external.hundredTwentyPlus, 0);
    expect(external.hundredFourtyPlus, 0);
    expect(external.hundredSixtyPlus, 0);
    expect(external.hundredEighty, 0);
  });

  test('fromJson', () {
    // Act
    final dto = LegDto.fromJson(json);

    // Assert
    expect(dto.throws, [throwDto, throwDto]);
  });

  test('toJson', () {
    // Act
    final json = dto.toJson();

    // Assert
    expect(json['throws'], [throwJson, throwJson]);
  });
}
