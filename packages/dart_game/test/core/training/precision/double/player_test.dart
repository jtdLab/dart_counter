import 'package:flutter_test/flutter_test.dart';
import 'package:dart_game/double_training_game.dart';

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
        expect(player.isFinished, null);
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
        expect(player.isFinished, null);
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
        expect(player.isFinished, null);
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
        final isFinished = false;

        // Act
        final player = Player.fromData(
          id: id,
          name: name,
          isCurrentTurn: isCurrentTurn,
          throws: throws,
          targetValue: targetValue,
          isFinished: isFinished,
        );

        // Assert
        expect(player.id, id);
        expect(player.name, name);
        expect(player.isCurrentTurn, isCurrentTurn);
        expect(player.throws, throws);
        expect(player.targetValue, targetValue);
        expect(player.isFinished, isFinished);
      });
    });
  });

  group('getters', () {
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
          targetValue: 2,
        );

        // Assert
        expect(player.missed, 2);
      });
    });

    group('dartsThrown', () {
      test(
          'GIVEN throws null '
          'WHEN get dartsThrown '
          'THEN return null.', () {
        // Arrange & Act
        final player = Player();

        // Assert
        expect(player.dartsThrown, null);
      });

      test(
          'GIVEN 0 throws '
          'WHEN get dartsThrown '
          'THEN return 0.', () {
        // Arrange & Act
        final player = Player.fromData(
          throws: [],
        );

        // Assert
        expect(player.dartsThrown, 0);
      });

      test(
          'GIVEN >0 throws '
          'WHEN get dartsThrown '
          'THEN return correct amount.', () {
        // Arrange & Act
        final player = Player.fromData(
          throws: [
            Throw.fromDarts(
              darts: [
                Dart.missed,
                Dart.missed,
                Dart(type: DartType.double, value: 1),
              ],
              dartsOnDouble: 3,
            ),
            Throw.fromDarts(
              darts: [
                Dart(type: DartType.double, value: 2),
              ],
              dartsOnDouble: 1,
            ),
          ],
          targetValue: 3,
        );

        // Assert
        expect(player.dartsThrown, 4);
      });
    });

    group('checkoutPercentage', () {
      test(
          'GIVEN throws null '
          'WHEN get checkoutPercentage '
          'THEN return null.', () {
        // Arrange & Act
        final player = Player();

        // Assert
        expect(player.checkoutPercentage, null);
      });

      test(
          'GIVEN 0 throws '
          'WHEN get checkoutPercentage '
          'THEN return null.', () {
        // Arrange & Act
        final player = Player.fromData(
          throws: [],
        );

        // Assert
        expect(player.checkoutPercentage, null);
      });

      test(
          'GIVEN >0 throws '
          'WHEN get checkoutPercentage '
          'THEN return correct checkoutPercentage.', () {
        // Arrange & Act
        final player = Player.fromData(
          throws: [
            Throw.fromDarts(
              darts: [
                Dart.missed,
                Dart.missed,
                Dart(type: DartType.double, value: 1),
              ],
              dartsOnDouble: 3,
            ),
            Throw.fromDarts(
              darts: [
                Dart(type: DartType.double, value: 2),
              ],
              dartsOnDouble: 1,
            ),
          ],
          targetValue: 3,
        );

        // Assert
        expect(player.checkoutPercentage, 0.5);
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
      final isFinished = false;

      // Act
      final player = Player.fromData(
        id: id,
        name: name,
        isCurrentTurn: isCurrentTurn,
        throws: throws,
        targetValue: targetValue,
        isFinished: isFinished,
      );

      // Assert
      expect(
        player.toString(),
        'Player{id: $id, name: $name, isCurrentTurn: $isCurrentTurn, throws: $throws, targetValue: $targetValue, isFinished: $isFinished}',
      );
    });
  });
}
