import 'package:dart_client/dart_client.dart' as c;
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/infrastructure/game/dart_dto.dart';
import 'package:dart_counter/infrastructure/game/throw_dto.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

void main() {
  const points = 60;
  const dartsThrown = 3;
  const dartsOnDouble = 0;

  const domainType = DartType.single;
  const externalType = ex.DartType.single;
  const clientType = c.DartType.single;
  const typeString = 'single';
  const value = 20;

  const dartDomain = Dart(
    type: domainType,
    value: value,
  );

  const domainWithoutDarts = Throw(
    points: points,
    dartsThrown: dartsThrown,
    dartsOnDouble: dartsOnDouble,
  );

  final domainWithDarts = Throw(
    points: points,
    dartsThrown: dartsThrown,
    dartsOnDouble: dartsOnDouble,
    darts: KtList.from([dartDomain, dartDomain, dartDomain]),
  );

  final dartExternal = ex.Dart(
    type: externalType,
    value: value,
  );

  final externalWithoutDarts = ex.Throw(
    points: points,
  );

  final externalWithDarts = ex.Throw.fromData(
    pointsOrDarts: right([dartExternal, dartExternal, dartExternal]),
  );

  const dartClient = c.Dart(
    type: clientType,
    value: value,
  );

  const clientWithoutDarts = c.Throw(
    points: points,
    dartsThrown: dartsThrown,
    dartsOnDouble: dartsOnDouble,
  );

  final clientWithDarts = c.Throw(
    points: points,
    dartsThrown: dartsThrown,
    dartsOnDouble: dartsOnDouble,
    darts: KtList.from([dartClient, dartClient, dartClient]),
  );

  const dartDto = DartDto(
    type: typeString,
    value: value,
  );

  const dtoWithoutDarts = ThrowDto(
    points: points,
    dartsThrown: dartsThrown,
    dartsOnDouble: dartsOnDouble,
  );

  const dtoWithDarts = ThrowDto(
    points: points,
    dartsThrown: dartsThrown,
    dartsOnDouble: dartsOnDouble,
    darts: [dartDto, dartDto, dartDto],
  );

  final dartJson = {
    'type': typeString,
    'value': value,
  };

  final jsonWithoutDarts = {
    'points': points,
    'dartsThrown': dartsThrown,
    'dartsOnDouble': dartsOnDouble,
    'darts': null,
  };

  final jsonWithDarts = {
    'points': points,
    'dartsThrown': dartsThrown,
    'dartsOnDouble': dartsOnDouble,
    'darts': [dartJson, dartJson, dartJson],
  };

  group('constructor', () {
    test(
        'GIVEN darts '
        'THEN parse correctly ', () {
      // Assert
      expect(dtoWithDarts.points, points);
      expect(dtoWithDarts.dartsThrown, dartsThrown);
      expect(dtoWithDarts.dartsOnDouble, dartsOnDouble);
      expect(dtoWithDarts.darts, [dartDto, dartDto, dartDto]);
    });

    test(
        'GIVEN no darts '
        'THEN parse correctly ', () {
      // Assert
      expect(dtoWithoutDarts.points, points);
      expect(dtoWithoutDarts.dartsThrown, dartsThrown);
      expect(dtoWithoutDarts.dartsOnDouble, dartsOnDouble);
      expect(dtoWithoutDarts.darts, null);
    });
  });

  group('fromDomain', () {
    test(
        'GIVEN darts '
        'THEN parse correctly ', () {
      // Act
      final dtoWithDarts = ThrowDto.fromDomain(domainWithDarts);

      // Assert
      expect(dtoWithDarts.points, points);
      expect(dtoWithDarts.dartsThrown, dartsThrown);
      expect(dtoWithDarts.dartsOnDouble, dartsOnDouble);
      expect(dtoWithDarts.darts, [dartDto, dartDto, dartDto]);
    });

    test(
        'GIVEN no darts '
        'THEN parse correctly ', () {
      // Act
      final dtoWithoutDarts = ThrowDto.fromDomain(domainWithoutDarts);

      // Assert
      expect(dtoWithoutDarts.points, points);
      expect(dtoWithoutDarts.dartsThrown, dartsThrown);
      expect(dtoWithoutDarts.dartsOnDouble, dartsOnDouble);
      expect(dtoWithoutDarts.darts, null);
    });
  });

  group('toDomain', () {
    test(
        'GIVEN darts '
        'THEN parse correctly ', () {
      // Act
      final domainWithDarts = dtoWithDarts.toDomain();

      // Assert
      expect(domainWithDarts.points, points);
      expect(domainWithDarts.dartsThrown, dartsThrown);
      expect(domainWithDarts.dartsOnDouble, dartsOnDouble);
      expect(
        domainWithDarts.darts,
        KtList.from([dartDomain, dartDomain, dartDomain]),
      );
    });

    test(
        'GIVEN no darts '
        'THEN parse correctly ', () {
      // Act
      final domainWithoutDarts = dtoWithoutDarts.toDomain();

      // Assert
      expect(domainWithoutDarts.points, points);
      expect(domainWithoutDarts.dartsThrown, dartsThrown);
      expect(domainWithoutDarts.dartsOnDouble, dartsOnDouble);
      expect(domainWithoutDarts.darts, null);
    });
  });

  group('fromExternal', () {
    test(
        'GIVEN darts '
        'THEN parse correctly ', () {
      // Act
      final dtoWithDarts = ThrowDto.fromExternal(externalWithDarts);

      // Assert
      expect(dtoWithDarts.points, points);
      expect(dtoWithDarts.dartsThrown, dartsThrown);
      expect(dtoWithDarts.dartsOnDouble, dartsOnDouble);
      expect(dtoWithDarts.darts, [dartDto, dartDto, dartDto]);
    });

    test(
        'GIVEN no darts '
        'THEN parse correctly ', () {
      // Act
      final dtoWithoutDarts = ThrowDto.fromExternal(externalWithoutDarts);

      // Assert
      expect(dtoWithoutDarts.points, points);
      expect(dtoWithoutDarts.dartsThrown, dartsThrown);
      expect(dtoWithoutDarts.dartsOnDouble, dartsOnDouble);
      expect(dtoWithoutDarts.darts, null);
    });
  });

  group('toExternal', () {
    test(
        'GIVEN darts '
        'THEN parse correctly ', () {
      // Act
      final externalWithDarts = dtoWithDarts.toExternal();

      // Assert
      expect(externalWithDarts.points, points);
      expect(externalWithDarts.dartsThrown, dartsThrown);
      expect(externalWithDarts.dartsOnDouble, dartsOnDouble);
      expect(
          externalWithDarts.darts, [dartExternal, dartExternal, dartExternal]);
    });

    test(
        'GIVEN no darts '
        'THEN parse correctly ', () {
      // Act
      final externalWithoutDarts = dtoWithoutDarts.toExternal();

      // Assert
      expect(externalWithoutDarts.points, points);
      expect(externalWithoutDarts.dartsThrown, dartsThrown);
      expect(externalWithoutDarts.dartsOnDouble, dartsOnDouble);
      expect(externalWithoutDarts.darts, null);
    });
  });

  group('fromClient', () {
    test(
        'GIVEN darts '
        'THEN parse correctly ', () {
      // Act
      final dtoWithDarts = ThrowDto.fromClient(clientWithDarts);

      // Assert
      expect(dtoWithDarts.points, points);
      expect(dtoWithDarts.dartsThrown, dartsThrown);
      expect(dtoWithDarts.dartsOnDouble, dartsOnDouble);
      expect(dtoWithDarts.darts, [dartDto, dartDto, dartDto]);
    });

    test(
        'GIVEN no darts '
        'THEN parse correctly ', () {
      // Act
      final dtoWithoutDarts = ThrowDto.fromClient(clientWithoutDarts);

      // Assert
      expect(dtoWithoutDarts.points, points);
      expect(dtoWithoutDarts.dartsThrown, dartsThrown);
      expect(dtoWithoutDarts.dartsOnDouble, dartsOnDouble);
      expect(dtoWithoutDarts.darts, null);
    });
  });

  group('toClient', () {
    test(
        'GIVEN darts '
        'THEN parse correctly ', () {
      // Act
      final clientWithDarts = dtoWithDarts.toClient();

      // Assert
      expect(clientWithDarts.points, points);
      expect(clientWithDarts.dartsThrown, dartsThrown);
      expect(clientWithDarts.dartsOnDouble, dartsOnDouble);
      expect(clientWithDarts.darts,
          KtList.from([dartClient, dartClient, dartClient]));
    });

    test(
        'GIVEN no darts '
        'THEN parse correctly ', () {
      // Act
      final clientWithoutDarts = dtoWithoutDarts.toClient();

      // Assert
      expect(clientWithoutDarts.points, points);
      expect(clientWithoutDarts.dartsThrown, dartsThrown);
      expect(clientWithoutDarts.dartsOnDouble, dartsOnDouble);
      expect(clientWithoutDarts.darts, null);
    });
  });

  group('fromJson', () {
    test(
        'GIVEN darts '
        'THEN parse correctly ', () {
      // Act
      final dtoWithDarts = ThrowDto.fromJson(jsonWithDarts);

      // Assert
      expect(dtoWithDarts.points, points);
      expect(dtoWithDarts.dartsThrown, dartsThrown);
      expect(dtoWithDarts.dartsOnDouble, dartsOnDouble);
      expect(dtoWithDarts.darts, [dartDto, dartDto, dartDto]);
    });

    test(
        'GIVEN no darts '
        'THEN parse correctly ', () {
      // Act
      final dtoWithoutDarts = ThrowDto.fromJson(jsonWithoutDarts);

      // Assert
      expect(dtoWithoutDarts.points, points);
      expect(dtoWithoutDarts.dartsThrown, dartsThrown);
      expect(dtoWithoutDarts.dartsOnDouble, dartsOnDouble);
      expect(dtoWithoutDarts.darts, null);
    });
  });

  group('toJson', () {
    test(
        'GIVEN darts '
        'THEN parse correctly ', () {
      // Act
      final jsonWithDarts = dtoWithDarts.toJson();

      // Assert
      expect(jsonWithDarts['points'], points);
      expect(jsonWithDarts['dartsThrown'], dartsThrown);
      expect(jsonWithDarts['dartsOnDouble'], dartsOnDouble);
      expect(jsonWithDarts['darts'], [dartJson, dartJson, dartJson]);
    });

    test(
        'GIVEN no darts '
        'THEN parse correctly ', () {
      // Act
      final jsonWithoutDarts = dtoWithoutDarts.toJson();

      // Assert
      expect(jsonWithoutDarts['points'], points);
      expect(jsonWithoutDarts['dartsThrown'], dartsThrown);
      expect(jsonWithoutDarts['dartsOnDouble'], dartsOnDouble);
      expect(jsonWithoutDarts['darts'], null);
    });
  });
}
