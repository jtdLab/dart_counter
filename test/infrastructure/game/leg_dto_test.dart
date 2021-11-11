/**
 * import 'package:dart_counter/domain/game/leg.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/infrastructure/game/leg_dto.dart';
import 'package:dart_counter/infrastructure/game/throw_dto.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';


void main() {
  const won = false;

  const points = 60;
  const dartsThrown = 3;
  const dartsOnDouble = 0;

  const value = 20;

  const throwDomain = Throw(
    points: points,
    dartsThrown: dartsThrown,
    dartsOnDouble: dartsOnDouble,
  );

  final domain = Leg(
    throws: KtList.from([throwDomain, throwDomain]),
    won: won,
  );

  final throwExternal = ex.Throw(
    points: points,
  );

  final external = ex.Leg.fromData(
    startingPoints: 501,
    throws: [throwExternal, throwExternal],
  );

  const throwDto = ThrowDto(
    points: points,
    dartsThrown: dartsThrown,
    dartsOnDouble: dartsOnDouble,
  );

  final dto = LegDto(
    startingPoints: 501,
    throws: [throwExternal, throwExternal],
  );

  final throwJson = {
    'points': points,
    'dartsThrown': dartsThrown,
    'dartsOnDouble': dartsOnDouble,
  };

  test('toDomain', () {
    // Act
    final domain = dto.toDomain();

    // Assert
    expect(domain.startingPoints, startingPoints);
    expect(domain.value, value);
  });

  test('fromExternal', () {
    // Act
    final dto = DartDto.fromExternal(externals[i]);

    // Assert
    expect(dto.type, typeStrings[i]);
    expect(dto.value, value);
  });

  test('toExternal', () {
    // Act
    final external = dtos[i].toExternal();

    // Assert
    expect(external.type, externalTypes[i]);
    expect(external.value, value);
  });

  test('fromJson', () {
    // Act
    final dto = DartDto.fromJson(jsons[i]);

    // Assert
    expect(dto.type, typeStrings[i]);
    expect(dto.value, value);
  });

  test('toJson', () {
    // Act
    final json = dtos[i].toJson();

    // Assert
    expect(json['type'], typeStrings[i]);
    expect(json['value'], value);
  });
}

 */