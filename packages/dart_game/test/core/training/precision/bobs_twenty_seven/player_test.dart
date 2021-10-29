import 'package:flutter_test/flutter_test.dart';
import 'package:dart_game/bobs_twenty_seven_training_game.dart';

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
        expect(player.isDisqualified, null);
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
        expect(player.isDisqualified, null);
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
        expect(player.isDisqualified, null);
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
        final isDisqualified = false;

        // Act
        final player = Player.fromData(
          id: id,
          name: name,
          isCurrentTurn: isCurrentTurn,
          throws: throws,
          targetValue: targetValue,
          isDisqualified: isDisqualified,
        );

        // Assert
        expect(player.id, id);
        expect(player.name, name);
        expect(player.isCurrentTurn, isCurrentTurn);
        expect(player.throws, throws);
        expect(player.targetValue, targetValue);
        expect(player.isDisqualified, isDisqualified);
      });
    });
  });

  group('getters', () {
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
                Dart(type: DartType.double, value: 2),
                Dart(type: DartType.double, value: 2),
              ],
              dartsOnDouble: 3,
            ),
          ],
          targetValue: 3,
        );

        // Assert
        expect(player.checkoutPercentage, 2 / 3);
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
          'GIVEN 0 throws '
          'WHEN get points '
          'THEN return 27.', () {
        // Arrange & Act
        final player = Player.fromData(
          throws: [],
        );

        // Assert
        expect(player.points, 27);
      });

      test(
          'GIVEN >0 throws '
          'WHEN get points '
          'THEN return correct points.', () {
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
                Dart(type: DartType.double, value: 2),
                Dart(type: DartType.double, value: 2),
              ],
              dartsOnDouble: 3,
            ),
            Throw.fromDarts(
              darts: [
                Dart.missed,
                Dart.missed,
                Dart.missed,
              ],
              dartsOnDouble: 3,
            ),
            Throw.fromDarts(
              darts: [
                Dart.missed,
                Dart.missed,
                Dart.missed,
              ],
              dartsOnDouble: 3,
            ),
            Throw.fromDarts(
              darts: [
                Dart.missed,
                Dart.missed,
                Dart.missed,
              ],
              dartsOnDouble: 3,
            ),
          ],
          targetValue: 6,
        );

        // Assert
        expect(player.points, 29);
      });
    });

    group('highestPoints', () {
      test(
          'GIVEN throws null '
          'WHEN get highestPoints '
          'THEN return null.', () {
        // Arrange & Act
        final player = Player();

        // Assert
        expect(player.highestPoints, null);
      });

      test(
          'GIVEN 0 throws '
          'WHEN get highestPoints '
          'THEN return 27.', () {
        // Arrange & Act
        final player = Player.fromData(
          throws: [],
        );

        // Assert
        expect(player.highestPoints, 27);
      });

      test(
          'GIVEN >0 throws '
          'WHEN get highestPoints '
          'THEN return correct highestPoints.', () {
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
                Dart(type: DartType.double, value: 2),
                Dart(type: DartType.double, value: 2),
              ],
              dartsOnDouble: 3,
            ),
            Throw.fromDarts(
              darts: [
                Dart.missed,
                Dart.missed,
                Dart.missed,
              ],
              dartsOnDouble: 3,
            ),
            Throw.fromDarts(
              darts: [
                Dart.missed,
                Dart.missed,
                Dart.missed,
              ],
              dartsOnDouble: 3,
            ),
            Throw.fromDarts(
              darts: [
                Dart.missed,
                Dart.missed,
                Dart.missed,
              ],
              dartsOnDouble: 3,
            ),
          ],
          targetValue: 6,
        );

        // Assert
        expect(player.highestPoints, 41);
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
      final isDisqualified = false;

      // Act
      final player = Player.fromData(
        id: id,
        name: name,
        isCurrentTurn: isCurrentTurn,
        throws: throws,
        targetValue: targetValue,
        isDisqualified: isDisqualified,
      );

      // Assert
      expect(
        player.toString(),
        'Player{id: $id, name: $name, isCurrentTurn: $isCurrentTurn, throws: $throws, targetValue: $targetValue, isDisqualified: $isDisqualified}',
      );
    });
  });
}
