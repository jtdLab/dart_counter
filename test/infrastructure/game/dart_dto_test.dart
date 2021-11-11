import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/infrastructure/game/dart_dto.dart';
import 'package:dart_client/dart_client.dart' as c;
import 'package:dart_game/dart_game.dart' as ex;
import 'package:flutter_test/flutter_test.dart';

void main() {
  const types = DartType.values;
  const externalTypes = ex.DartType.values;
  const clientTypes = c.DartType.values;
  const typeStrings = ['single', 'double', 'triple'];
  const value = 20;

  final domains = List.generate(
    3,
    (index) => Dart(
      type: types[index],
      value: value,
    ),
  );

  final externals = List.generate(
    3,
    (index) => ex.Dart(
      type: externalTypes[index],
      value: value,
    ),
  );

  final clients = List.generate(
    3,
    (index) => c.Dart(
      type: clientTypes[index],
      value: value,
    ),
  );

  final dtos = List.generate(
    3,
    (index) => DartDto(
      type: typeStrings[index],
      value: value,
    ),
  );

  final jsons = List.generate(
    3,
    (index) => {
      'type': typeStrings[index],
      'value': value,
    },
  );

  test('constructor', () {
    for (int i = 0; i < 3; i++) {
      // Assert
      expect(dtos[i].type, typeStrings[i]);
      expect(dtos[i].value, value);
    }
  });

  test('fromDomain', () {
    for (int i = 0; i < 3; i++) {
      // Act
      final dto = DartDto.fromDomain(domains[i]);

      // Assert
      expect(dto.type, typeStrings[i]);
      expect(dto.value, value);
    }
  });

  test('toDomain', () {
    for (int i = 0; i < 3; i++) {
      // Act
      final domain = dtos[i].toDomain();

      // Assert
      expect(domain.type, types[i]);
      expect(domain.value, value);
    }
  });

  test('fromExternal', () {
    for (int i = 0; i < 3; i++) {
      // Act
      final dto = DartDto.fromExternal(externals[i]);

      // Assert
      expect(dto.type, typeStrings[i]);
      expect(dto.value, value);
    }
  });

  test('toExternal', () {
    for (int i = 0; i < 3; i++) {
      // Act
      final external = dtos[i].toExternal();

      // Assert
      expect(external.type, externalTypes[i]);
      expect(external.value, value);
    }
  });

  test('fromClient', () {
    for (int i = 0; i < 3; i++) {
      // Act
      final dto = DartDto.fromClient(clients[i]);

      // Assert
      expect(dto.type, typeStrings[i]);
      expect(dto.value, value);
    }
  });

  test('toClient', () {
    for (int i = 0; i < 3; i++) {
      // Act
      final client = dtos[i].toClient();

      // Assert
      expect(client.type, clientTypes[i]);
      expect(client.value, value);
    }
  });

  test('fromJson', () {
    for (int i = 0; i < 3; i++) {
      // Act
      final dto = DartDto.fromJson(jsons[i]);

      // Assert
      expect(dto.type, typeStrings[i]);
      expect(dto.value, value);
    }
  });

  test('toJson', () {
    for (int i = 0; i < 3; i++) {
      // Act
      final json = dtos[i].toJson();

      // Assert
      expect(json['type'], typeStrings[i]);
      expect(json['value'], value);
    }
  });
}
