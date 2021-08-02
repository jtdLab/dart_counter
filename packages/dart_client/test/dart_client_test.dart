import 'package:dart_client/dart_client.dart';
import 'package:dart_client/infrastructure/dart_dto.dart';
import 'package:dart_client/infrastructure/game_dto.dart';
import 'package:dart_client/infrastructure/game_snapshot_dto.dart';
import 'package:dart_client/infrastructure/leg_dto.dart';
import 'package:dart_client/infrastructure/player_dto.dart';
import 'package:dart_client/infrastructure/player_snapshot_dto.dart';
import 'package:dart_client/infrastructure/set_dto.dart';
import 'package:dart_client/infrastructure/stats_dto.dart';
import 'package:dart_client/infrastructure/throw_dto.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

void main() {
  group('Dart', () {
    test('(Json -> Dto)', () {
      // Arrange
      final json = {
        'type': 'triple',
        'value': 20,
      };
      // Act
      final dto = DartDto.fromJson(json);
      // Assert
      expect(dto, DartDto(type: 'triple', value: 20));
    });

    test('(Dto -> Json)', () {
      // Arrange
      final dto = DartDto(type: 'triple', value: 3);
      // Act
      final json = dto.toJson();
      // Assert
      final expectedJson = {
        'type': 'triple',
        'value': 3,
      };
      expect(json, expectedJson);
    });

    test('(Dto -> Domain)', () {
      // Arrange
      final dto = DartDto(type: 'single', value: 10);
      // Act
      final domain = dto.toDomain();
      // Assert
      expect(domain, Dart(type: DartType.s, value: 10));
    });

    test('(Domain -> Dto)', () {
      // Arrange
      final domain = Dart(type: DartType.d, value: 13);
      // Act
      final dto = DartDto.fromDomain(domain);
      // Assert
      expect(dto, DartDto(type: 'double', value: 13));
    });
  });

  group('Throw', () {
    test('(Json -> Dto)', () {
      // Arrange
      final json = {
        'points': 80,
        'dartsThrown': 3,
        'dartsOnDouble': 0,
        'darts': [
          {
            'type': 'triple',
            'value': 20,
          },
          {
            'type': 'single',
            'value': 10,
          },
          {
            'type': 'single',
            'value': 10,
          }
        ]
      };
      final jsonNull = {
        'points': 80,
        'dartsThrown': 3,
        'dartsOnDouble': 0,
        'darts': null,
      };
      // Act
      final dto = ThrowDto.fromJson(json);
      final dtoNull = ThrowDto.fromJson(jsonNull);
      // Assert
      final expectedDto = ThrowDto(
        points: 80,
        dartsThrown: 3,
        dartsOnDouble: 0,
        darts: [
          DartDto(type: 'triple', value: 20),
          DartDto(type: 'single', value: 10),
          DartDto(type: 'single', value: 10),
        ],
      );
      final expectedDtoNull =
          ThrowDto(points: 80, dartsThrown: 3, dartsOnDouble: 0);
      expect(dto, expectedDto);
      expect(dtoNull, expectedDtoNull);
    });

    test('(Dto -> Json)', () {
      // Arrange
      final dto = ThrowDto(
        points: 80,
        dartsThrown: 3,
        dartsOnDouble: 0,
        darts: [
          DartDto(type: 'triple', value: 20),
          DartDto(type: 'single', value: 10),
          DartDto(type: 'single', value: 10),
        ],
      );
      final dtoNull = ThrowDto(points: 123, dartsThrown: 3, dartsOnDouble: 0);
      // Act
      final json = dto.toJson();
      final jsonNull = dtoNull.toJson();
      // Assert
      final expectedJson = {
        'points': 80,
        'dartsThrown': 3,
        'dartsOnDouble': 0,
        'darts': [
          {
            'type': 'triple',
            'value': 20,
          },
          {
            'type': 'single',
            'value': 10,
          },
          {
            'type': 'single',
            'value': 10,
          }
        ]
      };
      final expectedJsonNull = {
        'points': 123,
        'dartsThrown': 3,
        'dartsOnDouble': 0,
        'darts': null,
      };
      expect(json, expectedJson);
      expect(jsonNull, expectedJsonNull);
    });

    test('(Dto -> Domain)', () {
      // Arrange
      final dto = ThrowDto(
        points: 123,
        dartsThrown: 3,
        dartsOnDouble: 0,
        darts: [
          DartDto(type: 'triple', value: 20),
          DartDto(type: 'triple', value: 20),
          DartDto(type: 'single', value: 3),
        ],
      );
      final dtoNull = ThrowDto(points: 123, dartsThrown: 3, dartsOnDouble: 0);
      // Act
      final domain = dto.toDomain();
      final domainNull = dtoNull.toDomain();
      // Assert
      final expectedDomain = Throw(
        points: 123,
        dartsThrown: 3,
        dartsOnDouble: 0,
        darts: KtList.from([
          Dart(type: DartType.t, value: 20),
          Dart(type: DartType.t, value: 20),
          Dart(type: DartType.s, value: 3),
        ]),
      );
      final expectedDomainNull =
          Throw(points: 123, dartsThrown: 3, dartsOnDouble: 0);
      expect(domain, expectedDomain);
      expect(domainNull, expectedDomainNull);
    });

    test('(Domain -> Dto)', () {
      // Arrange
      final domain = Throw(
        points: 123,
        dartsThrown: 3,
        dartsOnDouble: 0,
        darts: KtList.from([
          Dart(type: DartType.t, value: 20),
          Dart(type: DartType.t, value: 20),
          Dart(type: DartType.s, value: 3),
        ]),
      );
      final domainNull = Throw(points: 123, dartsThrown: 3, dartsOnDouble: 0);
      // Act
      final dto = ThrowDto.fromDomain(domain);
      final dtoNull = ThrowDto.fromDomain(domainNull);
      // Assert
      final expectedDto = ThrowDto(
        points: 123,
        dartsThrown: 3,
        dartsOnDouble: 0,
        darts: [
          DartDto(type: 'triple', value: 20),
          DartDto(type: 'triple', value: 20),
          DartDto(type: 'single', value: 3),
        ],
      );
      expect(dto, expectedDto);
      expect(dtoNull, ThrowDto(points: 123, dartsThrown: 3, dartsOnDouble: 0));
    });
  });

  group('Leg', () {
    test('(Json -> Dto)', () {
      // Arrange
      final json = {
        'throws': [
          {
            'points': 80,
            'dartsThrown': 3,
            'dartsOnDouble': 0,
            'darts': null,
          }
        ],
      };
      // Act
      final dto = LegDto.fromJson(json);
      // Assert
      final expectedDto = LegDto(
        throws: [
          ThrowDto(points: 80, dartsThrown: 3, dartsOnDouble: 0),
        ],
      );
      expect(dto, expectedDto);
    });

    test('(Dto -> Json)', () {
      // Arrange
      final dto = LegDto(
        throws: [
          ThrowDto(points: 80, dartsThrown: 3, dartsOnDouble: 0),
        ],
      );
      // Act
      final json = dto.toJson();
      // Assert
      final expectedJson = {
        'throws': [
          {
            'points': 80,
            'dartsThrown': 3,
            'dartsOnDouble': 0,
            'darts': null,
          }
        ],
      };
      expect(json, expectedJson);
    });

    test('(Dto -> Domain)', () {
      // Arrange
      final dto = LegDto(
        throws: [
          ThrowDto(points: 80, dartsThrown: 3, dartsOnDouble: 0),
        ],
      );
      // Act
      final domain = dto.toDomain();
      // Assert
      final expectedDomain = Leg(
        throws: KtList.from(
          [
            Throw(points: 80, dartsThrown: 3, dartsOnDouble: 0),
          ],
        ),
      );
      expect(domain, expectedDomain);
    });

    test('(Domain -> Dto)', () {
      // Arrange
      final domain = Leg(
        throws: KtList.from(
          [
            Throw(points: 80, dartsThrown: 3, dartsOnDouble: 0),
          ],
        ),
      );
      // Act
      final dto = LegDto.fromDomain(domain);
      // Assert
      final expectedDto = LegDto(
        throws: [
          ThrowDto(points: 80, dartsThrown: 3, dartsOnDouble: 0),
        ],
      );
      expect(dto, expectedDto);
    });
  });

  group('Set', () {
    test('(Json -> Dto)', () {
      // Arrange
      final json = {
        'legs': [
          {
            'throws': [
              {
                'points': 80,
                'dartsThrown': 3,
                'dartsOnDouble': 0,
                'darts': null,
              }
            ],
          }
        ],
      };
      // Act
      final dto = SetDto.fromJson(json);
      // Assert
      final expectedDto = SetDto(
        legs: [
          LegDto(
            throws: [
              ThrowDto(points: 80, dartsThrown: 3, dartsOnDouble: 0),
            ],
          ),
        ],
      );
      expect(dto, expectedDto);
    });

    test('(Dto -> Json)', () {
      // Arrange
      final dto = SetDto(
        legs: [
          LegDto(
            throws: [
              ThrowDto(points: 80, dartsThrown: 3, dartsOnDouble: 0),
            ],
          ),
        ],
      );
      // Act
      final json = dto.toJson();
      // Assert
      final expectedJson = {
        'legs': [
          {
            'throws': [
              {
                'points': 80,
                'dartsThrown': 3,
                'dartsOnDouble': 0,
                'darts': null,
              }
            ],
          }
        ],
      };
      expect(json, expectedJson);
    });

    test('(Dto -> Domain)', () {
      // Arrange
      final dto = SetDto(
        legs: [
          LegDto(
            throws: [
              ThrowDto(points: 80, dartsThrown: 3, dartsOnDouble: 0),
            ],
          ),
        ],
      );
      // Act
      final domain = dto.toDomain();
      // Assert
      final expectedDomain = Set(
        legs: KtList.from(
          [
            Leg(
              throws: KtList.from(
                [
                  Throw(points: 80, dartsThrown: 3, dartsOnDouble: 0),
                ],
              ),
            ),
          ],
        ),
      );
      expect(domain, expectedDomain);
    });

    test('(Domain -> Dto)', () {
      // Arrange
      final domain = Set(
        legs: KtList.from(
          [
            Leg(
              throws: KtList.from(
                [
                  Throw(points: 80, dartsThrown: 3, dartsOnDouble: 0),
                ],
              ),
            ),
          ],
        ),
      );
      // Act
      final dto = SetDto.fromDomain(domain);
      // Assert
      final expectedDto = SetDto(
        legs: [
          LegDto(
            throws: [
              ThrowDto(points: 80, dartsThrown: 3, dartsOnDouble: 0),
            ],
          ),
        ],
      );
      expect(dto, expectedDto);
    });
  });

  group('Stats', () {
    test('(Json -> Dto)', () {
      // Arrange
      final json = {
        'average': 11.11,
        'checkoutPercentage': 11.11,
        'firstNineAverage': 11.11,
        'bestLegDartsThrown': 11,
        'bestLegAverage': 11.11,
        'worstLegDartsThrown': 11,
        'worstLegAverage': 11.11,
        'averageDartsPerLeg': 11.11,
        'highestFinish': 11,
        'firstDartAverage': 11.11,
        'secondDartAverage': 11.11,
        'thirdDartAverage': 11.11,
        'fourtyPlus': 11,
        'sixtyPlus': 11,
        'eightyPlus': 11,
        'hundredPlus': 11,
        'hundredTwentyPlus': 11,
        'hundredFourtyPlus': 11,
        'hundredSixtyPlus': 11,
        'hundredEighty': 11,
      };
      final jsonNull = {
        'average': 11.11,
        'checkoutPercentage': 11.11,
        'firstNineAverage': 11.11,
        'bestLegDartsThrown': null,
        'bestLegAverage': null,
        'worstLegDartsThrown': null,
        'worstLegAverage': null,
        'averageDartsPerLeg': null,
        'highestFinish': null,
        'firstDartAverage': null,
        'secondDartAverage': null,
        'thirdDartAverage': null,
        'fourtyPlus': 11,
        'sixtyPlus': 11,
        'eightyPlus': 11,
        'hundredPlus': 11,
        'hundredTwentyPlus': 11,
        'hundredFourtyPlus': 11,
        'hundredSixtyPlus': 11,
        'hundredEighty': 11,
      };
      // Act
      final dto = StatsDto.fromJson(json);
      final dtoNull = StatsDto.fromJson(jsonNull);
      // Assert
      final expectedDto = StatsDto(
        average: 11.11,
        checkoutPercentage: 11.11,
        firstNineAverage: 11.11,
        bestLegDartsThrown: 11,
        bestLegAverage: 11.11,
        worstLegDartsThrown: 11,
        worstLegAverage: 11.11,
        averageDartsPerLeg: 11.11,
        highestFinish: 11,
        firstDartAverage: 11.11,
        secondDartAverage: 11.11,
        thirdDartAverage: 11.11,
        fourtyPlus: 11,
        sixtyPlus: 11,
        eightyPlus: 11,
        hundredPlus: 11,
        hundredTwentyPlus: 11,
        hundredFourtyPlus: 11,
        hundredSixtyPlus: 11,
        hundredEighty: 11,
      );
      final expectedDtoNull = StatsDto(
        average: 11.11,
        checkoutPercentage: 11.11,
        firstNineAverage: 11.11,
        bestLegDartsThrown: null,
        bestLegAverage: null,
        worstLegDartsThrown: null,
        worstLegAverage: null,
        averageDartsPerLeg: null,
        highestFinish: null,
        firstDartAverage: null,
        secondDartAverage: null,
        thirdDartAverage: null,
        fourtyPlus: 11,
        sixtyPlus: 11,
        eightyPlus: 11,
        hundredPlus: 11,
        hundredTwentyPlus: 11,
        hundredFourtyPlus: 11,
        hundredSixtyPlus: 11,
        hundredEighty: 11,
      );
      expect(dto, expectedDto);
      expect(dtoNull, expectedDtoNull);
    });

    test('(Dto -> Json)', () {
      // Arrange
      final dto = StatsDto(
        average: 11.11,
        checkoutPercentage: 11.11,
        firstNineAverage: 11.11,
        bestLegDartsThrown: 11,
        bestLegAverage: 11.11,
        worstLegDartsThrown: 11,
        worstLegAverage: 11.11,
        averageDartsPerLeg: 11.11,
        highestFinish: 11,
        firstDartAverage: 11.11,
        secondDartAverage: 11.11,
        thirdDartAverage: 11.11,
        fourtyPlus: 11,
        sixtyPlus: 11,
        eightyPlus: 11,
        hundredPlus: 11,
        hundredTwentyPlus: 11,
        hundredFourtyPlus: 11,
        hundredSixtyPlus: 11,
        hundredEighty: 11,
      );
      final dtoNull = StatsDto(
        average: 11.11,
        checkoutPercentage: 11.11,
        firstNineAverage: 11.11,
        bestLegDartsThrown: null,
        bestLegAverage: null,
        worstLegDartsThrown: null,
        worstLegAverage: null,
        averageDartsPerLeg: null,
        highestFinish: null,
        firstDartAverage: null,
        secondDartAverage: null,
        thirdDartAverage: null,
        fourtyPlus: 11,
        sixtyPlus: 11,
        eightyPlus: 11,
        hundredPlus: 11,
        hundredTwentyPlus: 11,
        hundredFourtyPlus: 11,
        hundredSixtyPlus: 11,
        hundredEighty: 11,
      );
      // Act
      final json = dto.toJson();
      final jsonNull = dtoNull.toJson();
      // Assert
      final expectedJson = {
        'average': 11.11,
        'checkoutPercentage': 11.11,
        'firstNineAverage': 11.11,
        'bestLegDartsThrown': 11,
        'bestLegAverage': 11.11,
        'worstLegDartsThrown': 11,
        'worstLegAverage': 11.11,
        'averageDartsPerLeg': 11.11,
        'highestFinish': 11,
        'firstDartAverage': 11.11,
        'secondDartAverage': 11.11,
        'thirdDartAverage': 11.11,
        'fourtyPlus': 11,
        'sixtyPlus': 11,
        'eightyPlus': 11,
        'hundredPlus': 11,
        'hundredTwentyPlus': 11,
        'hundredFourtyPlus': 11,
        'hundredSixtyPlus': 11,
        'hundredEighty': 11,
      };
      final expectedJsonNull = {
        'average': 11.11,
        'checkoutPercentage': 11.11,
        'firstNineAverage': 11.11,
        'bestLegDartsThrown': null,
        'bestLegAverage': null,
        'worstLegDartsThrown': null,
        'worstLegAverage': null,
        'averageDartsPerLeg': null,
        'highestFinish': null,
        'firstDartAverage': null,
        'secondDartAverage': null,
        'thirdDartAverage': null,
        'fourtyPlus': 11,
        'sixtyPlus': 11,
        'eightyPlus': 11,
        'hundredPlus': 11,
        'hundredTwentyPlus': 11,
        'hundredFourtyPlus': 11,
        'hundredSixtyPlus': 11,
        'hundredEighty': 11,
      };
      expect(json, expectedJson);
      expect(jsonNull, expectedJsonNull);
    });

    test('(Dto -> Domain)', () {
      // Arrange
      final dto = StatsDto(
        average: 11.11,
        checkoutPercentage: 11.11,
        firstNineAverage: 11.11,
        bestLegDartsThrown: 11,
        bestLegAverage: 11.11,
        worstLegDartsThrown: 11,
        worstLegAverage: 11.11,
        averageDartsPerLeg: 11.11,
        highestFinish: 11,
        firstDartAverage: 11.11,
        secondDartAverage: 11.11,
        thirdDartAverage: 11.11,
        fourtyPlus: 11,
        sixtyPlus: 11,
        eightyPlus: 11,
        hundredPlus: 11,
        hundredTwentyPlus: 11,
        hundredFourtyPlus: 11,
        hundredSixtyPlus: 11,
        hundredEighty: 11,
      );
      final dtoNull = StatsDto(
        average: 11.11,
        checkoutPercentage: 11.11,
        firstNineAverage: 11.11,
        bestLegDartsThrown: null,
        bestLegAverage: null,
        worstLegDartsThrown: null,
        worstLegAverage: null,
        averageDartsPerLeg: null,
        highestFinish: null,
        firstDartAverage: null,
        secondDartAverage: null,
        thirdDartAverage: null,
        fourtyPlus: 11,
        sixtyPlus: 11,
        eightyPlus: 11,
        hundredPlus: 11,
        hundredTwentyPlus: 11,
        hundredFourtyPlus: 11,
        hundredSixtyPlus: 11,
        hundredEighty: 11,
      );
      // Act
      final domain = dto.toDomain();
      final domainNull = dtoNull.toDomain();
      // Assert
      final expectedDomain = Stats(
        average: 11.11,
        checkoutPercentage: 11.11,
        firstNineAverage: 11.11,
        bestLegDartsThrown: 11,
        bestLegAverage: 11.11,
        worstLegDartsThrown: 11,
        worstLegAverage: 11.11,
        averageDartsPerLeg: 11.11,
        highestFinish: 11,
        firstDartAverage: 11.11,
        secondDartAverage: 11.11,
        thirdDartAverage: 11.11,
        fourtyPlus: 11,
        sixtyPlus: 11,
        eightyPlus: 11,
        hundredPlus: 11,
        hundredTwentyPlus: 11,
        hundredFourtyPlus: 11,
        hundredSixtyPlus: 11,
        hundredEighty: 11,
      );
      final expectedDomainNull = Stats(
        average: 11.11,
        checkoutPercentage: 11.11,
        firstNineAverage: 11.11,
        bestLegDartsThrown: null,
        bestLegAverage: null,
        worstLegDartsThrown: null,
        worstLegAverage: null,
        averageDartsPerLeg: null,
        highestFinish: null,
        firstDartAverage: null,
        secondDartAverage: null,
        thirdDartAverage: null,
        fourtyPlus: 11,
        sixtyPlus: 11,
        eightyPlus: 11,
        hundredPlus: 11,
        hundredTwentyPlus: 11,
        hundredFourtyPlus: 11,
        hundredSixtyPlus: 11,
        hundredEighty: 11,
      );
      expect(domain, expectedDomain);
      expect(domainNull, expectedDomainNull);
    });

    test('(Domain -> Dto)', () {
      // Arrange
      final domain = Stats(
        average: 11.11,
        checkoutPercentage: 11.11,
        firstNineAverage: 11.11,
        bestLegDartsThrown: 11,
        bestLegAverage: 11.11,
        worstLegDartsThrown: 11,
        worstLegAverage: 11.11,
        averageDartsPerLeg: 11.11,
        highestFinish: 11,
        firstDartAverage: 11.11,
        secondDartAverage: 11.11,
        thirdDartAverage: 11.11,
        fourtyPlus: 11,
        sixtyPlus: 11,
        eightyPlus: 11,
        hundredPlus: 11,
        hundredTwentyPlus: 11,
        hundredFourtyPlus: 11,
        hundredSixtyPlus: 11,
        hundredEighty: 11,
      );
      final domainNull = Stats(
        average: 11.11,
        checkoutPercentage: 11.11,
        firstNineAverage: 11.11,
        bestLegDartsThrown: null,
        bestLegAverage: null,
        worstLegDartsThrown: null,
        worstLegAverage: null,
        averageDartsPerLeg: null,
        highestFinish: null,
        firstDartAverage: null,
        secondDartAverage: null,
        thirdDartAverage: null,
        fourtyPlus: 11,
        sixtyPlus: 11,
        eightyPlus: 11,
        hundredPlus: 11,
        hundredTwentyPlus: 11,
        hundredFourtyPlus: 11,
        hundredSixtyPlus: 11,
        hundredEighty: 11,
      );
      // Act
      final dto = StatsDto.fromDomain(domain);
      final dtoNull = StatsDto.fromDomain(domainNull);
      // Assert
      final expectedDto = StatsDto(
        average: 11.11,
        checkoutPercentage: 11.11,
        firstNineAverage: 11.11,
        bestLegDartsThrown: 11,
        bestLegAverage: 11.11,
        worstLegDartsThrown: 11,
        worstLegAverage: 11.11,
        averageDartsPerLeg: 11.11,
        highestFinish: 11,
        firstDartAverage: 11.11,
        secondDartAverage: 11.11,
        thirdDartAverage: 11.11,
        fourtyPlus: 11,
        sixtyPlus: 11,
        eightyPlus: 11,
        hundredPlus: 11,
        hundredTwentyPlus: 11,
        hundredFourtyPlus: 11,
        hundredSixtyPlus: 11,
        hundredEighty: 11,
      );
      final expectedDtoNull = StatsDto(
        average: 11.11,
        checkoutPercentage: 11.11,
        firstNineAverage: 11.11,
        bestLegDartsThrown: null,
        bestLegAverage: null,
        worstLegDartsThrown: null,
        worstLegAverage: null,
        averageDartsPerLeg: null,
        highestFinish: null,
        firstDartAverage: null,
        secondDartAverage: null,
        thirdDartAverage: null,
        fourtyPlus: 11,
        sixtyPlus: 11,
        eightyPlus: 11,
        hundredPlus: 11,
        hundredTwentyPlus: 11,
        hundredFourtyPlus: 11,
        hundredSixtyPlus: 11,
        hundredEighty: 11,
      );
      expect(dto, expectedDto);
      expect(dtoNull, expectedDtoNull);
    });
  });

  group('Player', () {
    test('(Json -> Dto)', () {
      // Arrange
      final json = {
        'id': 'dummyId',
        'name': 'dummyName',
        'isCurrentTurn': true,
        'won': false,
        'wonSets': 2,
        'wonLegsCurrentSet': 2,
        'pointsLeft': 2,
        'finishRecommendation': ['T2', 'T2', 'D2'],
        'lastPoints': 2,
        'dartsThrownCurrentLeg': 12,
        'stats': {
          'average': 11.11,
          'checkoutPercentage': 11.11,
          'firstNineAverage': 11.11,
          'bestLegDartsThrown': 11,
          'bestLegAverage': 11.11,
          'worstLegDartsThrown': 11,
          'worstLegAverage': 11.11,
          'averageDartsPerLeg': 11.11,
          'highestFinish': 11,
          'firstDartAverage': 11.11,
          'secondDartAverage': 11.11,
          'thirdDartAverage': 11.11,
          'fourtyPlus': 11,
          'sixtyPlus': 11,
          'eightyPlus': 11,
          'hundredPlus': 11,
          'hundredTwentyPlus': 11,
          'hundredFourtyPlus': 11,
          'hundredSixtyPlus': 11,
          'hundredEighty': 11,
        },
        'sets': [
          {
            'legs': [
              {
                'throws': [
                  {
                    'points': 80,
                    'dartsThrown': 3,
                    'dartsOnDouble': 0,
                    'darts': null,
                  }
                ],
              }
            ],
          },
        ],
        'userId': 'dummyUserId',
      };
      final jsonNull = {
        'id': 'dummyId',
        'name': 'dummyName',
        'isCurrentTurn': null,
        'won': null,
        'wonSets': null,
        'wonLegsCurrentSet': null,
        'pointsLeft': null,
        'finishRecommendation': null,
        'lastPoints': null,
        'dartsThrownCurrentLeg': null,
        'stats': null,
        'sets': null,
        'userId': 'dummyUserId',
      };
      // Act
      final dto = PlayerDto.fromJson(json);
      final dtoNull = PlayerDto.fromJson(jsonNull);
      // Assert
      final expectedDto = PlayerDto(
        id: 'dummyId',
        name: 'dummyName',
        isCurrentTurn: true,
        won: false,
        wonSets: 2,
        wonLegsCurrentSet: 2,
        pointsLeft: 2,
        finishRecommendation: ['T2', 'T2', 'D2'],
        lastPoints: 2,
        dartsThrownCurrentLeg: 12,
        stats: StatsDto(
          average: 11.11,
          checkoutPercentage: 11.11,
          firstNineAverage: 11.11,
          bestLegDartsThrown: 11,
          bestLegAverage: 11.11,
          worstLegDartsThrown: 11,
          worstLegAverage: 11.11,
          averageDartsPerLeg: 11.11,
          highestFinish: 11,
          firstDartAverage: 11.11,
          secondDartAverage: 11.11,
          thirdDartAverage: 11.11,
          fourtyPlus: 11,
          sixtyPlus: 11,
          eightyPlus: 11,
          hundredPlus: 11,
          hundredTwentyPlus: 11,
          hundredFourtyPlus: 11,
          hundredSixtyPlus: 11,
          hundredEighty: 11,
        ),
        sets: [
          SetDto(
            legs: [
              LegDto(
                throws: [
                  ThrowDto(
                    points: 80,
                    dartsThrown: 3,
                    dartsOnDouble: 0,
                  ),
                ],
              ),
            ],
          ),
        ],
        userId: 'dummyUserId',
      );
      final expectedDtoNull = PlayerDto(
        id: 'dummyId',
        name: 'dummyName',
        userId: 'dummyUserId',
      );
      expect(dto, expectedDto);
      expect(dtoNull, expectedDtoNull);
    });

    test('(Dto -> Json)', () {
      // Arrange
      final dto = PlayerDto(
        id: 'dummyId',
        name: 'dummyName',
        isCurrentTurn: true,
        won: false,
        wonSets: 2,
        wonLegsCurrentSet: 2,
        pointsLeft: 2,
        finishRecommendation: ['T2', 'T2', 'D2'],
        lastPoints: 2,
        dartsThrownCurrentLeg: 12,
        stats: StatsDto(
          average: 11.11,
          checkoutPercentage: 11.11,
          firstNineAverage: 11.11,
          bestLegDartsThrown: 11,
          bestLegAverage: 11.11,
          worstLegDartsThrown: 11,
          worstLegAverage: 11.11,
          averageDartsPerLeg: 11.11,
          highestFinish: 11,
          firstDartAverage: 11.11,
          secondDartAverage: 11.11,
          thirdDartAverage: 11.11,
          fourtyPlus: 11,
          sixtyPlus: 11,
          eightyPlus: 11,
          hundredPlus: 11,
          hundredTwentyPlus: 11,
          hundredFourtyPlus: 11,
          hundredSixtyPlus: 11,
          hundredEighty: 11,
        ),
        sets: [
          SetDto(
            legs: [
              LegDto(
                throws: [
                  ThrowDto(
                    points: 80,
                    dartsThrown: 3,
                    dartsOnDouble: 0,
                  ),
                ],
              ),
            ],
          ),
        ],
        userId: 'dummyUserId',
      );
      final dtoNull = PlayerDto(
        id: 'dummyId',
        name: 'dummyName',
        userId: 'dummyUserId',
      );
      // Act
      final json = dto.toJson();
      final jsonNull = dtoNull.toJson();
      // Assert
      final expectedJson = {
        'id': 'dummyId',
        'name': 'dummyName',
        'isCurrentTurn': true,
        'won': false,
        'wonSets': 2,
        'wonLegsCurrentSet': 2,
        'pointsLeft': 2,
        'finishRecommendation': ['T2', 'T2', 'D2'],
        'lastPoints': 2,
        'dartsThrownCurrentLeg': 12,
        'stats': {
          'average': 11.11,
          'checkoutPercentage': 11.11,
          'firstNineAverage': 11.11,
          'bestLegDartsThrown': 11,
          'bestLegAverage': 11.11,
          'worstLegDartsThrown': 11,
          'worstLegAverage': 11.11,
          'averageDartsPerLeg': 11.11,
          'highestFinish': 11,
          'firstDartAverage': 11.11,
          'secondDartAverage': 11.11,
          'thirdDartAverage': 11.11,
          'fourtyPlus': 11,
          'sixtyPlus': 11,
          'eightyPlus': 11,
          'hundredPlus': 11,
          'hundredTwentyPlus': 11,
          'hundredFourtyPlus': 11,
          'hundredSixtyPlus': 11,
          'hundredEighty': 11,
        },
        'sets': [
          {
            'legs': [
              {
                'throws': [
                  {
                    'points': 80,
                    'dartsThrown': 3,
                    'dartsOnDouble': 0,
                    'darts': null,
                  }
                ],
              }
            ],
          },
        ],
        'userId': 'dummyUserId',
      };
      final expectedJsonNull = {
        'id': 'dummyId',
        'name': 'dummyName',
        'isCurrentTurn': null,
        'won': null,
        'wonSets': null,
        'wonLegsCurrentSet': null,
        'pointsLeft': null,
        'finishRecommendation': null,
        'lastPoints': null,
        'dartsThrownCurrentLeg': null,
        'stats': null,
        'sets': null,
        'userId': 'dummyUserId',
      };
      expect(json, expectedJson);
      expect(jsonNull, expectedJsonNull);
    });

    test('(Dto -> Domain)', () {
      // Arrange
      final dto = PlayerDto(
        id: 'dummyId',
        name: 'dummyName',
        isCurrentTurn: true,
        won: false,
        wonSets: 2,
        wonLegsCurrentSet: 2,
        pointsLeft: 2,
        finishRecommendation: ['T2', 'T2', 'D2'],
        lastPoints: 2,
        dartsThrownCurrentLeg: 12,
        stats: StatsDto(
          average: 11.11,
          checkoutPercentage: 11.11,
          firstNineAverage: 11.11,
          bestLegDartsThrown: 11,
          bestLegAverage: 11.11,
          worstLegDartsThrown: 11,
          worstLegAverage: 11.11,
          averageDartsPerLeg: 11.11,
          highestFinish: 11,
          firstDartAverage: 11.11,
          secondDartAverage: 11.11,
          thirdDartAverage: 11.11,
          fourtyPlus: 11,
          sixtyPlus: 11,
          eightyPlus: 11,
          hundredPlus: 11,
          hundredTwentyPlus: 11,
          hundredFourtyPlus: 11,
          hundredSixtyPlus: 11,
          hundredEighty: 11,
        ),
        sets: [
          SetDto(
            legs: [
              LegDto(
                throws: [
                  ThrowDto(
                    points: 80,
                    dartsThrown: 3,
                    dartsOnDouble: 0,
                  ),
                ],
              ),
            ],
          ),
        ],
        userId: 'dummyUserId',
      );
      final dtoNull = PlayerDto(
        id: 'dummyId',
        name: 'dummyName',
        userId: 'dummyUserId',
      );
      // Act
      final domain = dto.toDomain();
      final domainNull = dtoNull.toDomain();
      // Assert
      final expectedDomain = Player(
        id: 'dummyId',
        name: 'dummyName',
        isCurrentTurn: true,
        won: false,
        wonSets: 2,
        wonLegsCurrentSet: 2,
        pointsLeft: 2,
        finishRecommendation: KtList.from(['T2', 'T2', 'D2']),
        lastPoints: 2,
        dartsThrownCurrentLeg: 12,
        stats: Stats(
          average: 11.11,
          checkoutPercentage: 11.11,
          firstNineAverage: 11.11,
          bestLegDartsThrown: 11,
          bestLegAverage: 11.11,
          worstLegDartsThrown: 11,
          worstLegAverage: 11.11,
          averageDartsPerLeg: 11.11,
          highestFinish: 11,
          firstDartAverage: 11.11,
          secondDartAverage: 11.11,
          thirdDartAverage: 11.11,
          fourtyPlus: 11,
          sixtyPlus: 11,
          eightyPlus: 11,
          hundredPlus: 11,
          hundredTwentyPlus: 11,
          hundredFourtyPlus: 11,
          hundredSixtyPlus: 11,
          hundredEighty: 11,
        ),
        sets: KtList.from(
          [
            Set(
              legs: KtList.from(
                [
                  Leg(
                    throws: KtList.from(
                      [
                        Throw(
                          points: 80,
                          dartsThrown: 3,
                          dartsOnDouble: 0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        userId: 'dummyUserId',
      );
      final expectedDomainNull = Player(
        id: 'dummyId',
        name: 'dummyName',
        userId: 'dummyUserId',
      );
      expect(domain, expectedDomain);
      expect(domainNull, expectedDomainNull);
    });

    test('(Domain -> Dto)', () {
      // Arrange
      final domain = Player(
        id: 'dummyId',
        name: 'dummyName',
        isCurrentTurn: true,
        won: false,
        wonSets: 2,
        wonLegsCurrentSet: 2,
        pointsLeft: 2,
        finishRecommendation: KtList.from(['T2', 'T2', 'D2']),
        lastPoints: 2,
        dartsThrownCurrentLeg: 12,
        stats: Stats(
          average: 11.11,
          checkoutPercentage: 11.11,
          firstNineAverage: 11.11,
          bestLegDartsThrown: 11,
          bestLegAverage: 11.11,
          worstLegDartsThrown: 11,
          worstLegAverage: 11.11,
          averageDartsPerLeg: 11.11,
          highestFinish: 11,
          firstDartAverage: 11.11,
          secondDartAverage: 11.11,
          thirdDartAverage: 11.11,
          fourtyPlus: 11,
          sixtyPlus: 11,
          eightyPlus: 11,
          hundredPlus: 11,
          hundredTwentyPlus: 11,
          hundredFourtyPlus: 11,
          hundredSixtyPlus: 11,
          hundredEighty: 11,
        ),
        sets: KtList.from(
          [
            Set(
              legs: KtList.from(
                [
                  Leg(
                    throws: KtList.from(
                      [
                        Throw(
                          points: 80,
                          dartsThrown: 3,
                          dartsOnDouble: 0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        userId: 'dummyUserId',
      );
      final domainNull = Player(
        id: 'dummyId',
        name: 'dummyName',
        userId: 'dummyUserId',
      );
      // Act
      final dto = PlayerDto.fromDomain(domain);
      final dtoNull = PlayerDto.fromDomain(domainNull);
      // Assert
      final expectedDto = PlayerDto(
        id: 'dummyId',
        name: 'dummyName',
        isCurrentTurn: true,
        won: false,
        wonSets: 2,
        wonLegsCurrentSet: 2,
        pointsLeft: 2,
        finishRecommendation: ['T2', 'T2', 'D2'],
        lastPoints: 2,
        dartsThrownCurrentLeg: 12,
        stats: StatsDto(
          average: 11.11,
          checkoutPercentage: 11.11,
          firstNineAverage: 11.11,
          bestLegDartsThrown: 11,
          bestLegAverage: 11.11,
          worstLegDartsThrown: 11,
          worstLegAverage: 11.11,
          averageDartsPerLeg: 11.11,
          highestFinish: 11,
          firstDartAverage: 11.11,
          secondDartAverage: 11.11,
          thirdDartAverage: 11.11,
          fourtyPlus: 11,
          sixtyPlus: 11,
          eightyPlus: 11,
          hundredPlus: 11,
          hundredTwentyPlus: 11,
          hundredFourtyPlus: 11,
          hundredSixtyPlus: 11,
          hundredEighty: 11,
        ),
        sets: [
          SetDto(
            legs: [
              LegDto(
                throws: [
                  ThrowDto(
                    points: 80,
                    dartsThrown: 3,
                    dartsOnDouble: 0,
                  ),
                ],
              ),
            ],
          ),
        ],
        userId: 'dummyUserId',
      );
      final expectedDtoNull = PlayerDto(
        id: 'dummyId',
        name: 'dummyName',
        userId: 'dummyUserId',
      );
      expect(dto, expectedDto);
      expect(dtoNull, expectedDtoNull);
    });
  });

  group('Game', () {
    test('(Json -> Dto)', () {
      // Arrange
      final json = {
        'id': 'dummyId',
        'createdAt': 222,
        'status': 'running',
        'mode': 'firstTo',
        'size': 2,
        'type': 'legs',
        'startingPoints': 501,
        'players': [
          {
            'id': 'dummyId',
            'name': 'dummyName',
            'isCurrentTurn': null,
            'won': null,
            'wonSets': null,
            'wonLegsCurrentSet': null,
            'pointsLeft': null,
            'finishRecommendation': null,
            'lastPoints': null,
            'dartsThrownCurrentLeg': null,
            'stats': null,
            'sets': null,
            'userId': 'dummyUserId',
          },
        ],
      };
      // Act
      final dto = GameDto.fromJson(json);
      // Assert
      final expectedDto = GameDto(
        id: 'dummyId',
        createdAt: 222,
        status: 'running',
        mode: 'firstTo',
        size: 2,
        type: 'legs',
        startingPoints: 501,
        players: [
          PlayerDto(
            id: 'dummyId',
            name: 'dummyName',
            userId: 'dummyUserId',
          ),
        ],
      );
      expect(dto, expectedDto);
    });

    test('(Dto -> Json)', () {
      // Arrange
      final dto = GameDto(
        id: 'dummyId',
        createdAt: 222,
        status: 'running',
        mode: 'firstTo',
        size: 2,
        type: 'legs',
        startingPoints: 501,
        players: [
          PlayerDto(
            id: 'dummyId',
            name: 'dummyName',
            userId: 'dummyUserId',
          ),
        ],
      );
      // Act
      final json = dto.toJson();
      // Assert
      final expectedJson = {
        'id': 'dummyId',
        'createdAt': 222,
        'status': 'running',
        'mode': 'firstTo',
        'size': 2,
        'type': 'legs',
        'startingPoints': 501,
        'players': [
          {
            'id': 'dummyId',
            'name': 'dummyName',
            'isCurrentTurn': null,
            'won': null,
            'wonSets': null,
            'wonLegsCurrentSet': null,
            'pointsLeft': null,
            'finishRecommendation': null,
            'lastPoints': null,
            'dartsThrownCurrentLeg': null,
            'stats': null,
            'sets': null,
            'userId': 'dummyUserId',
          },
        ],
      };
      expect(json, expectedJson);
    });

    test('(Dto -> Domain)', () {
      // Arrange
      final dto = GameDto(
        id: 'dummyId',
        createdAt: 222,
        status: 'running',
        mode: 'firstTo',
        size: 2,
        type: 'legs',
        startingPoints: 501,
        players: [
          PlayerDto(
            id: 'dummyId',
            name: 'dummyName',
            userId: 'dummyUserId',
          ),
        ],
      );
      // Act
      final domain = dto.toDomain();
      // Assert
      final expectedDomain = Game(
        id: 'dummyId',
        createdAt: DateTime.fromMillisecondsSinceEpoch(222),
        status: Status.running,
        mode: Mode.firstTo,
        size: 2,
        type: Type.legs,
        startingPoints: 501,
        players: KtList.from(
          [
            Player(
              id: 'dummyId',
              name: 'dummyName',
              userId: 'dummyUserId',
            ),
          ],
        ),
      );
      expect(domain, expectedDomain);
    });

    test('(Domain -> Dto)', () {
      // Arrange
      final domain = Game(
        id: 'dummyId',
        createdAt: DateTime.fromMillisecondsSinceEpoch(222),
        status: Status.running,
        mode: Mode.firstTo,
        size: 2,
        type: Type.legs,
        startingPoints: 501,
        players: KtList.from(
          [
            Player(
              id: 'dummyId',
              name: 'dummyName',
              userId: 'dummyUserId',
            ),
          ],
        ),
      );
      // Act
      final dto = GameDto.fromDomain(domain);
      // Assert
      final expectedDto = GameDto(
        id: 'dummyId',
        createdAt: 222,
        status: 'running',
        mode: 'firstTo',
        size: 2,
        type: 'legs',
        startingPoints: 501,
        players: [
          PlayerDto(
            id: 'dummyId',
            name: 'dummyName',
            userId: 'dummyUserId',
          ),
        ],
      );
      expect(dto, expectedDto);
    });
  });

  group('PlayerSnapshot', () {
    test('(Json -> Dto)', () {
      // Arrange
      final json = {
        'id': 'dummyId',
        'name': 'dummyName',
        'isCurrentTurn': true,
        'won': false,
        'wonSets': 2,
        'wonLegsCurrentSet': 2,
        'pointsLeft': 2,
        'finishRecommendation': ['T2', 'T2', 'D2'],
        'lastPoints': 2,
        'dartsThrownCurrentLeg': 12,
        'stats': {
          'average': 11.11,
          'checkoutPercentage': 11.11,
          'firstNineAverage': 11.11,
          'bestLegDartsThrown': 11,
          'bestLegAverage': 11.11,
          'worstLegDartsThrown': 11,
          'worstLegAverage': 11.11,
          'averageDartsPerLeg': 11.11,
          'highestFinish': 11,
          'firstDartAverage': 11.11,
          'secondDartAverage': 11.11,
          'thirdDartAverage': 11.11,
          'fourtyPlus': 11,
          'sixtyPlus': 11,
          'eightyPlus': 11,
          'hundredPlus': 11,
          'hundredTwentyPlus': 11,
          'hundredFourtyPlus': 11,
          'hundredSixtyPlus': 11,
          'hundredEighty': 11,
        },
        'userId': 'dummyUserId',
      };
      final jsonNull = {
        'id': 'dummyId',
        'name': 'dummyName',
        'isCurrentTurn': null,
        'won': null,
        'wonSets': null,
        'wonLegsCurrentSet': null,
        'pointsLeft': null,
        'finishRecommendation': null,
        'lastPoints': null,
        'dartsThrownCurrentLeg': null,
        'stats': null,
        'userId': 'dummyUserId',
      };
      // Act
      final dto = PlayerSnapshotDto.fromJson(json);
      final dtoNull = PlayerSnapshotDto.fromJson(jsonNull);
      // Assert
      final expectedDto = PlayerSnapshotDto(
        id: 'dummyId',
        name: 'dummyName',
        isCurrentTurn: true,
        won: false,
        wonSets: 2,
        wonLegsCurrentSet: 2,
        pointsLeft: 2,
        finishRecommendation: ['T2', 'T2', 'D2'],
        lastPoints: 2,
        dartsThrownCurrentLeg: 12,
        stats: StatsDto(
          average: 11.11,
          checkoutPercentage: 11.11,
          firstNineAverage: 11.11,
          bestLegDartsThrown: 11,
          bestLegAverage: 11.11,
          worstLegDartsThrown: 11,
          worstLegAverage: 11.11,
          averageDartsPerLeg: 11.11,
          highestFinish: 11,
          firstDartAverage: 11.11,
          secondDartAverage: 11.11,
          thirdDartAverage: 11.11,
          fourtyPlus: 11,
          sixtyPlus: 11,
          eightyPlus: 11,
          hundredPlus: 11,
          hundredTwentyPlus: 11,
          hundredFourtyPlus: 11,
          hundredSixtyPlus: 11,
          hundredEighty: 11,
        ),
        userId: 'dummyUserId',
      );
      final expectedDtoNull = PlayerSnapshotDto(
        id: 'dummyId',
        name: 'dummyName',
        userId: 'dummyUserId',
      );
      expect(dto, expectedDto);
      expect(dtoNull, expectedDtoNull);
    });

    test('(Dto -> Json)', () {
      // Arrange
      final dto = PlayerSnapshotDto(
        id: 'dummyId',
        name: 'dummyName',
        isCurrentTurn: true,
        won: false,
        wonSets: 2,
        wonLegsCurrentSet: 2,
        pointsLeft: 2,
        finishRecommendation: ['T2', 'T2', 'D2'],
        lastPoints: 2,
        dartsThrownCurrentLeg: 12,
        stats: StatsDto(
          average: 11.11,
          checkoutPercentage: 11.11,
          firstNineAverage: 11.11,
          bestLegDartsThrown: 11,
          bestLegAverage: 11.11,
          worstLegDartsThrown: 11,
          worstLegAverage: 11.11,
          averageDartsPerLeg: 11.11,
          highestFinish: 11,
          firstDartAverage: 11.11,
          secondDartAverage: 11.11,
          thirdDartAverage: 11.11,
          fourtyPlus: 11,
          sixtyPlus: 11,
          eightyPlus: 11,
          hundredPlus: 11,
          hundredTwentyPlus: 11,
          hundredFourtyPlus: 11,
          hundredSixtyPlus: 11,
          hundredEighty: 11,
        ),
        userId: 'dummyUserId',
      );
      final dtoNull = PlayerSnapshotDto(
        id: 'dummyId',
        name: 'dummyName',
        userId: 'dummyUserId',
      );
      // Act
      final json = dto.toJson();
      final jsonNull = dtoNull.toJson();
      // Assert
      final expectedJson = {
        'id': 'dummyId',
        'name': 'dummyName',
        'isCurrentTurn': true,
        'won': false,
        'wonSets': 2,
        'wonLegsCurrentSet': 2,
        'pointsLeft': 2,
        'finishRecommendation': ['T2', 'T2', 'D2'],
        'lastPoints': 2,
        'dartsThrownCurrentLeg': 12,
        'stats': {
          'average': 11.11,
          'checkoutPercentage': 11.11,
          'firstNineAverage': 11.11,
          'bestLegDartsThrown': 11,
          'bestLegAverage': 11.11,
          'worstLegDartsThrown': 11,
          'worstLegAverage': 11.11,
          'averageDartsPerLeg': 11.11,
          'highestFinish': 11,
          'firstDartAverage': 11.11,
          'secondDartAverage': 11.11,
          'thirdDartAverage': 11.11,
          'fourtyPlus': 11,
          'sixtyPlus': 11,
          'eightyPlus': 11,
          'hundredPlus': 11,
          'hundredTwentyPlus': 11,
          'hundredFourtyPlus': 11,
          'hundredSixtyPlus': 11,
          'hundredEighty': 11,
        },
        'userId': 'dummyUserId',
      };
      final expectedJsonNull = {
        'id': 'dummyId',
        'name': 'dummyName',
        'isCurrentTurn': null,
        'won': null,
        'wonSets': null,
        'wonLegsCurrentSet': null,
        'pointsLeft': null,
        'finishRecommendation': null,
        'lastPoints': null,
        'dartsThrownCurrentLeg': null,
        'stats': null,
        'userId': 'dummyUserId',
      };
      expect(json, expectedJson);
      expect(jsonNull, expectedJsonNull);
    });

    test('(Dto -> Domain)', () {
      // Arrange
      final dto = PlayerSnapshotDto(
        id: 'dummyId',
        name: 'dummyName',
        isCurrentTurn: true,
        won: false,
        wonSets: 2,
        wonLegsCurrentSet: 2,
        pointsLeft: 2,
        finishRecommendation: ['T2', 'T2', 'D2'],
        lastPoints: 2,
        dartsThrownCurrentLeg: 12,
        stats: StatsDto(
          average: 11.11,
          checkoutPercentage: 11.11,
          firstNineAverage: 11.11,
          bestLegDartsThrown: 11,
          bestLegAverage: 11.11,
          worstLegDartsThrown: 11,
          worstLegAverage: 11.11,
          averageDartsPerLeg: 11.11,
          highestFinish: 11,
          firstDartAverage: 11.11,
          secondDartAverage: 11.11,
          thirdDartAverage: 11.11,
          fourtyPlus: 11,
          sixtyPlus: 11,
          eightyPlus: 11,
          hundredPlus: 11,
          hundredTwentyPlus: 11,
          hundredFourtyPlus: 11,
          hundredSixtyPlus: 11,
          hundredEighty: 11,
        ),
        userId: 'dummyUserId',
      );
      final dtoNull = PlayerSnapshotDto(
        id: 'dummyId',
        name: 'dummyName',
        userId: 'dummyUserId',
      );
      // Act
      final domain = dto.toDomain();
      final domainNull = dtoNull.toDomain();
      // Assert
      final expectedDomain = PlayerSnapshot(
        id: 'dummyId',
        name: 'dummyName',
        isCurrentTurn: true,
        won: false,
        wonSets: 2,
        wonLegsCurrentSet: 2,
        pointsLeft: 2,
        finishRecommendation: KtList.from(['T2', 'T2', 'D2']),
        lastPoints: 2,
        dartsThrownCurrentLeg: 12,
        stats: Stats(
          average: 11.11,
          checkoutPercentage: 11.11,
          firstNineAverage: 11.11,
          bestLegDartsThrown: 11,
          bestLegAverage: 11.11,
          worstLegDartsThrown: 11,
          worstLegAverage: 11.11,
          averageDartsPerLeg: 11.11,
          highestFinish: 11,
          firstDartAverage: 11.11,
          secondDartAverage: 11.11,
          thirdDartAverage: 11.11,
          fourtyPlus: 11,
          sixtyPlus: 11,
          eightyPlus: 11,
          hundredPlus: 11,
          hundredTwentyPlus: 11,
          hundredFourtyPlus: 11,
          hundredSixtyPlus: 11,
          hundredEighty: 11,
        ),
        userId: 'dummyUserId',
      );
      final expectedDomainNull = PlayerSnapshot(
        id: 'dummyId',
        name: 'dummyName',
        userId: 'dummyUserId',
      );
      expect(domain, expectedDomain);
      expect(domainNull, expectedDomainNull);
    });

    test('(Domain -> Dto)', () {
      // Arrange
      final domain = PlayerSnapshot(
        id: 'dummyId',
        name: 'dummyName',
        isCurrentTurn: true,
        won: false,
        wonSets: 2,
        wonLegsCurrentSet: 2,
        pointsLeft: 2,
        finishRecommendation: KtList.from(['T2', 'T2', 'D2']),
        lastPoints: 2,
        dartsThrownCurrentLeg: 12,
        stats: Stats(
          average: 11.11,
          checkoutPercentage: 11.11,
          firstNineAverage: 11.11,
          bestLegDartsThrown: 11,
          bestLegAverage: 11.11,
          worstLegDartsThrown: 11,
          worstLegAverage: 11.11,
          averageDartsPerLeg: 11.11,
          highestFinish: 11,
          firstDartAverage: 11.11,
          secondDartAverage: 11.11,
          thirdDartAverage: 11.11,
          fourtyPlus: 11,
          sixtyPlus: 11,
          eightyPlus: 11,
          hundredPlus: 11,
          hundredTwentyPlus: 11,
          hundredFourtyPlus: 11,
          hundredSixtyPlus: 11,
          hundredEighty: 11,
        ),
        userId: 'dummyUserId',
      );
      final domainNull = PlayerSnapshot(
        id: 'dummyId',
        name: 'dummyName',
        userId: 'dummyUserId',
      );
      // Act
      final dto = PlayerSnapshotDto.fromDomain(domain);
      final dtoNull = PlayerSnapshotDto.fromDomain(domainNull);
      // Assert
      final expectedDto = PlayerSnapshotDto(
        id: 'dummyId',
        name: 'dummyName',
        isCurrentTurn: true,
        won: false,
        wonSets: 2,
        wonLegsCurrentSet: 2,
        pointsLeft: 2,
        finishRecommendation: ['T2', 'T2', 'D2'],
        lastPoints: 2,
        dartsThrownCurrentLeg: 12,
        stats: StatsDto(
          average: 11.11,
          checkoutPercentage: 11.11,
          firstNineAverage: 11.11,
          bestLegDartsThrown: 11,
          bestLegAverage: 11.11,
          worstLegDartsThrown: 11,
          worstLegAverage: 11.11,
          averageDartsPerLeg: 11.11,
          highestFinish: 11,
          firstDartAverage: 11.11,
          secondDartAverage: 11.11,
          thirdDartAverage: 11.11,
          fourtyPlus: 11,
          sixtyPlus: 11,
          eightyPlus: 11,
          hundredPlus: 11,
          hundredTwentyPlus: 11,
          hundredFourtyPlus: 11,
          hundredSixtyPlus: 11,
          hundredEighty: 11,
        ),
        userId: 'dummyUserId',
      );
      final expectedDtoNull = PlayerSnapshotDto(
        id: 'dummyId',
        name: 'dummyName',
        userId: 'dummyUserId',
      );
      expect(dto, expectedDto);
      expect(dtoNull, expectedDtoNull);
    });
  });

  group('GameSnapshot', () {
    test('(Json -> Dto)', () {
      // Arrange
      final json = {
        'status': 'running',
        'mode': 'firstTo',
        'size': 2,
        'type': 'legs',
        'startingPoints': 501,
        'players': [
          {
            'id': 'dummyId',
            'name': 'dummyName',
            'isCurrentTurn': null,
            'won': null,
            'wonSets': null,
            'wonLegsCurrentSet': null,
            'pointsLeft': null,
            'finishRecommendation': null,
            'lastPoints': null,
            'dartsThrownCurrentLeg': null,
            'stats': null,
            'userId': 'dummyUserId',
          },
        ],
      };
      // Act
      final dto = GameSnapshotDto.fromJson(json);
      // Assert
      final expectedDto = GameSnapshotDto(
        status: 'running',
        mode: 'firstTo',
        size: 2,
        type: 'legs',
        startingPoints: 501,
        players: [
          PlayerSnapshotDto(
            id: 'dummyId',
            name: 'dummyName',
            userId: 'dummyUserId',
          ),
        ],
      );
      expect(dto, expectedDto);
    });

    test('(Dto -> Json)', () {
      // Arrange
      final dto = GameSnapshotDto(
        status: 'running',
        mode: 'firstTo',
        size: 2,
        type: 'legs',
        startingPoints: 501,
        players: [
          PlayerSnapshotDto(
            id: 'dummyId',
            name: 'dummyName',
            userId: 'dummyUserId',
          ),
        ],
      );
      // Act
      final json = dto.toJson();
      // Assert
      final expectedJson = {
        'status': 'running',
        'mode': 'firstTo',
        'size': 2,
        'type': 'legs',
        'startingPoints': 501,
        'players': [
          {
            'id': 'dummyId',
            'name': 'dummyName',
            'isCurrentTurn': null,
            'won': null,
            'wonSets': null,
            'wonLegsCurrentSet': null,
            'pointsLeft': null,
            'finishRecommendation': null,
            'lastPoints': null,
            'dartsThrownCurrentLeg': null,
            'stats': null,
            'userId': 'dummyUserId',
          },
        ],
      };
      expect(json, expectedJson);
    });

    test('(Dto -> Domain)', () {
      // Arrange
      final dto = GameSnapshotDto(
        status: 'running',
        mode: 'firstTo',
        size: 2,
        type: 'legs',
        startingPoints: 501,
        players: [
          PlayerSnapshotDto(
            id: 'dummyId',
            name: 'dummyName',
            userId: 'dummyUserId',
          ),
        ],
      );
      // Act
      final domain = dto.toDomain();
      // Assert
      final expectedDomain = GameSnapshot(
        status: Status.running,
        mode: Mode.firstTo,
        size: 2,
        type: Type.legs,
        startingPoints: 501,
        players: KtList.from(
          [
            PlayerSnapshot(
              id: 'dummyId',
              name: 'dummyName',
              userId: 'dummyUserId',
            ),
          ],
        ),
      );
      expect(domain, expectedDomain);
    });

    test('(Domain -> Dto)', () {
      // Arrange
      final domain = GameSnapshot(
        status: Status.running,
        mode: Mode.firstTo,
        size: 2,
        type: Type.legs,
        startingPoints: 501,
        players: KtList.from(
          [
            PlayerSnapshot(
              id: 'dummyId',
              name: 'dummyName',
              userId: 'dummyUserId',
            ),
          ],
        ),
      );
      // Act
      final dto = GameSnapshotDto.fromDomain(domain);
      // Assert
      final expectedDto = GameSnapshotDto(
        status: 'running',
        mode: 'firstTo',
        size: 2,
        type: 'legs',
        startingPoints: 501,
        players: [
          PlayerSnapshotDto(
            id: 'dummyId',
            name: 'dummyName',
            userId: 'dummyUserId',
          ),
        ],
      );
      expect(dto, expectedDto);
    });
  });

  // TODO
  /**group('Container', () {
    test('(fromJson)', () {
      // Arrange
      final json = {
        'timeStamp': 222,
        'payloadType': '',
      };
      // Act
      final dto = DartDto.fromJson(json);
      // Assert
      expect(dto, DartDto(type: 'triple', value: 20));
    });

    test('(toJson)', () {
      // Arrange
      final dto = DartDto(type: 'triple', value: 3);
      // Act
      final json = dto.toJson();
      // Assert
      final expectedJson = {
        'type': 'triple',
        'value': 3,
      };
      expect(json, expectedJson);
    });
  });
  */
}
