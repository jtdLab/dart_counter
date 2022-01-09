import 'package:flutter_test/flutter_test.dart';
import 'package:dart_game/single_training_game.dart';

void main() {
  group('constructor', () {
    group('()', () {
      test(
          'GIVEN all args possible null '
          'WHEN new instance created '
          'THEN assign props correctly.', () {
        // Arrange + Act
        final player = Player();

        // Assert
        expect(player.id, isNotNull);
        expect(player.name, null);
        expect(player.isCurrentTurn, null);
        expect(player.throws, null);
        expect(player.targetValue, null);
      });

      test(
          'GIVEN all args possible not null '
          'WHEN new instance created '
          'THEN assign props correctly.', () {
        // Arrange
        final id = 'dummyId';
        final name = 'dummyName';

        // Act
        final player = Player(id: id, name: name);

        // Assert
        expect(player.id, id);
        expect(player.name, name);
        expect(player.isCurrentTurn, null);
        expect(player.throws, null);
        expect(player.targetValue, null);
      });
    });

    group('fromData()', () {
      test(
          'GIVEN all args possible null '
          'WHEN new instance created '
          'THEN assign props correctly.', () {
        // Arrange + Act
        final player = Player.fromData();

        // Assert
        expect(player.id, isNotNull);
        expect(player.name, null);
        expect(player.isCurrentTurn, null);
        expect(player.throws, null);
        expect(player.targetValue, null);
      });

      test(
          'GIVEN all args possible not null '
          'WHEN new instance created '
          'THEN assign props correctly.', () {
        // Arrange
        final id = 'dummyId';
        final name = 'dummyName';
        final isCurrentTurn = false;
        final throws = [
          Throw(points: 180),
          Throw(points: 150),
          Throw(points: 99),
        ];
        final targetValue = 5;

        // Act
        final player = Player.fromData(
          id: id,
          name: name,
          isCurrentTurn: isCurrentTurn,
          throws: throws,
          targetValue: targetValue,
        );

        // Assert
        expect(player.id, id);
        expect(player.name, name);
        expect(player.isCurrentTurn, isCurrentTurn);
        expect(player.throws, throws);
        expect(player.targetValue, targetValue);
      });
    });
  });

  group('getters', () {
    group('triples', () {
      test(
          'GIVEN throws null '
          'WHEN get triples '
          'THEN return null.', () {
        // Arrange & Act
        final player = Player();

        // Assert
        expect(player.triples, null);
      });

      test(
          'GIVEN 0 triples '
          'WHEN get triples '
          'THEN return 0.', () {
        // Arrange & Act
        final player = Player.fromData(
          throws: [
            Throw.fromDarts(
              darts: [
                Dart(type: DartType.single, value: 1),
                Dart(type: DartType.single, value: 1),
                Dart(type: DartType.single, value: 1),
              ],
            ),
          ],
        );

        // Assert
        expect(player.triples, 0);
      });

      test(
          'GIVEN >0 triples '
          'WHEN get triples '
          'THEN return correct amount.', () {
        // Arrange & Act
        final player = Player.fromData(
          throws: [
            Throw.fromDarts(
              darts: [
                Dart(type: DartType.triple, value: 1),
                Dart(type: DartType.triple, value: 1),
                Dart(type: DartType.single, value: 1),
              ],
            ),
          ],
        );

        // Assert
        expect(player.triples, 2);
      });
    });

    group('doubles', () {
      test(
          'GIVEN throws null '
          'WHEN get doubles '
          'THEN return null.', () {
        // Arrange & Act
        final player = Player();

        // Assert
        expect(player.doubles, null);
      });

      test(
          'GIVEN 0 doubles '
          'WHEN get doubles '
          'THEN return 0.', () {
        // Arrange & Act
        final player = Player.fromData(
          throws: [
            Throw.fromDarts(
              darts: [
                Dart(type: DartType.single, value: 1),
                Dart(type: DartType.single, value: 1),
                Dart(type: DartType.single, value: 1),
              ],
            ),
          ],
        );

        // Assert
        expect(player.doubles, 0);
      });

      test(
          'GIVEN >0 doubles '
          'WHEN get doubles '
          'THEN return correct amount.', () {
        // Arrange & Act
        final player = Player.fromData(
          throws: [
            Throw.fromDarts(
              darts: [
                Dart(type: DartType.double, value: 1),
                Dart(type: DartType.double, value: 1),
                Dart(type: DartType.single, value: 1),
              ],
            ),
          ],
        );

        // Assert
        expect(player.doubles, 2);
      });
    });

    group('singles', () {
      test(
          'GIVEN throws null '
          'WHEN get singles '
          'THEN return null.', () {
        // Arrange & Act
        final player = Player();

        // Assert
        expect(player.singles, null);
      });

      test(
          'GIVEN 0 singles '
          'WHEN get singles '
          'THEN return 0.', () {
        // Arrange & Act
        final player = Player.fromData(
          throws: [
            Throw.fromDarts(
              darts: [
                Dart(type: DartType.triple, value: 1),
                Dart(type: DartType.triple, value: 1),
                Dart(type: DartType.triple, value: 1),
              ],
            ),
          ],
        );

        // Assert
        expect(player.singles, 0);
      });

      test(
          'GIVEN >0 singles '
          'WHEN get singles '
          'THEN return correct amount.', () {
        // Arrange & Act
        final player = Player.fromData(
          throws: [
            Throw.fromDarts(
              darts: [
                Dart(type: DartType.single, value: 1),
                Dart(type: DartType.single, value: 1),
                Dart(type: DartType.triple, value: 1),
              ],
            ),
          ],
        );

        // Assert
        expect(player.singles, 2);
      });
    });

    group('missed', () {
      test(
          'GIVEN throws null '
          'WHEN get missed '
          'THEN return null.', () {
        // Arrange & Act
        final player = Player();

        // Assert
        expect(player.missed, null);
      });

      test(
          'GIVEN 0 missed '
          'WHEN get missed '
          'THEN return 0.', () {
        // Arrange & Act
        final player = Player.fromData(
          throws: [
            Throw.fromDarts(
              darts: [
                Dart(type: DartType.single, value: 1),
                Dart(type: DartType.single, value: 1),
                Dart(type: DartType.single, value: 1),
              ],
            ),
          ],
        );

        // Assert
        expect(player.missed, 0);
      });

      test(
          'GIVEN >0 missed '
          'WHEN get missed '
          'THEN return correct amount.', () {
        // Arrange & Act
        final player = Player.fromData(
          throws: [
            Throw.fromDarts(
              darts: [
                Dart.missed,
                Dart.missed,
                Dart(type: DartType.triple, value: 1),
              ],
            ),
          ],
        );

        // Assert
        expect(player.missed, 2);
      });
    });

    group('points', () {
      test(
          'GIVEN throws null '
          'WHEN get points '
          'THEN return null.', () {
        // Arrange & Act
        final player = Player();

        // Assert
        expect(player.points, null);
      });

      test(
          'GIVEN 0 points '
          'WHEN get points '
          'THEN return 0.', () {
        // Arrange & Act
        final player = Player.fromData(
          throws: [
            Throw.fromDarts(
              darts: [
                Dart.missed,
                Dart.missed,
                Dart.missed,
              ],
            ),
          ],
        );

        // Assert
        expect(player.points, 0);
      });

      test(
          'GIVEN >0 points '
          'WHEN get points '
          'THEN return correct points.', () {
        // Arrange & Act
        final player = Player.fromData(
          throws: [
            Throw.fromDarts(
              darts: [
                Dart(type: DartType.triple, value: 10),
                Dart.missed,
                Dart(type: DartType.single, value: 10),
              ],
            ),
          ],
          targetValue: 10,
        );

        // Assert
        expect(player.points, 4);
      });
    });
  });

  group('toString()', () {
    test(
        'GIVEN a player '
        'WHEN toString() called '
        'THEN return correct string representation.', () {
      // Arrange
      final id = 'dummyId';
      final name = 'dummyName';
      final isCurrentTurn = false;
      final throws = [
        Throw(points: 180),
        Throw(points: 150),
        Throw(points: 99),
      ];
      final targetValue = 1;

      // Act
      final player = Player.fromData(
        id: id,
        name: name,
        isCurrentTurn: isCurrentTurn,
        throws: throws,
        targetValue: targetValue,
      );

      // Assert
      expect(
        player.toString(),
        'Player{id: $id, name: $name, isCurrentTurn: $isCurrentTurn, throws: $throws, targetValue: $targetValue}',
      );
    });
  });
}
