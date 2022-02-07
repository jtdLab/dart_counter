import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/infrastructure/core/infrastructure_error.dart';
import 'package:dart_counter/infrastructure/game/dart_dto.dart';
import 'package:dart_client/dart_client.dart' as c;
import 'package:dart_game/dart_game.dart' as ex;
import 'package:flutter_test/flutter_test.dart';

// TODO add test for Dart.missed

void main() {
  const types = DartType.values;
  const externalTypes = ex.DartType.values;
  const clientTypes = c.DartType.values;
  const typeStrings = ['single', 'double', 'triple'];
  const value = 20;

  final domains = List.generate(
    3,
    (index) => Dart(
      type: types[index+1],
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

  group('DartTypeX', () {
    group('domain', () {
      group('toShortString', () {
        test('single', () {
          // Arrange
          const type = DartType.single;

          // Act
          final string = type.toShortString();

          // Assert
          expect(string, 'single');
        });

        test('double', () {
          // Arrange
          const type = DartType.double;

          // Act
          final string = type.toShortString();

          // Assert
          expect(string, 'double');
        });

        test('triple', () {
          // Arrange
          const type = DartType.triple;

          // Act
          final string = type.toShortString();

          // Assert
          expect(string, 'triple');
        });
      });

      group('parse', () {
        test('single', () {
          // Arrange
          const string = 'single';

          // Act
          final type = DartTypeX.parse(string);

          // Assert
          expect(type, DartType.single);
        });

        test('double', () {
          // Arrange
          const string = 'double';

          // Act
          final type = DartTypeX.parse(string);

          // Assert
          expect(type, DartType.double);
        });

        test('triple', () {
          // Arrange
          const string = 'triple';

          // Act
          final type = DartTypeX.parse(string);

          // Assert
          expect(type, DartType.triple);
        });

        test('invalid string', () {
          // Assert
          expect(
            () => DartTypeX.parse('fojdsfosdf'),
            throwsA(isA<EnumParseError>()),
          );
        });
      });
    });

    group('external', () {
      group('toShortString', () {
        test('single', () {
          // Arrange
          const type = ex.DartType.single;

          // Act
          final string = type.toShortString();

          // Assert
          expect(string, 'single');
        });

        test('double', () {
          // Arrange
          const type = ex.DartType.double;

          // Act
          final string = type.toShortString();

          // Assert
          expect(string, 'double');
        });

        test('triple', () {
          // Arrange
          const type = ex.DartType.triple;

          // Act
          final string = type.toShortString();

          // Assert
          expect(string, 'triple');
        });
      });

      group('parse', () {
        test('single', () {
          // Arrange
          const string = 'single';

          // Act
          final type = ExternalDartTypeX.parse(string);

          // Assert
          expect(type, ex.DartType.single);
        });

        test('double', () {
          // Arrange
          const string = 'double';

          // Act
          final type = ExternalDartTypeX.parse(string);

          // Assert
          expect(type, ex.DartType.double);
        });

        test('triple', () {
          // Arrange
          const string = 'triple';

          // Act
          final type = ExternalDartTypeX.parse(string);

          // Assert
          expect(type, ex.DartType.triple);
        });

        test('invalid string', () {
          // Assert
          expect(
            () => ExternalDartTypeX.parse('fojdsfosdf'),
            throwsA(isA<EnumParseError>()),
          );
        });
      });
    });

    group('client', () {
      group('toShortString', () {
        test('single', () {
          // Arrange
          const type = c.DartType.single;

          // Act
          final string = type.toShortString();

          // Assert
          expect(string, 'single');
        });

        test('double', () {
          // Arrange
          const type = c.DartType.double;

          // Act
          final string = type.toShortString();

          // Assert
          expect(string, 'double');
        });

        test('triple', () {
          // Arrange
          const type = c.DartType.triple;

          // Act
          final string = type.toShortString();

          // Assert
          expect(string, 'triple');
        });
      });

      group('parse', () {
        test('single', () {
          // Arrange
          const string = 'single';

          // Act
          final type = ClientDartTypeX.parse(string);

          // Assert
          expect(type, c.DartType.single);
        });

        test('double', () {
          // Arrange
          const string = 'double';

          // Act
          final type = ClientDartTypeX.parse(string);

          // Assert
          expect(type, c.DartType.double);
        });

        test('triple', () {
          // Arrange
          const string = 'triple';

          // Act
          final type = ClientDartTypeX.parse(string);

          // Assert
          expect(type, c.DartType.triple);
        });

        test('invalid string', () {
          // Assert
          expect(
            () => ClientDartTypeX.parse('fojdsfosdf'),
            throwsA(isA<EnumParseError>()),
          );
        });
      });
    });
  });

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
      expect(domain.type, types[i+1]);
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
