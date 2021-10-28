import 'package:flutter_test/flutter_test.dart';
import 'package:dart_game/score_training_game.dart';

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
      });

      test(
          'GIVEN all args possible not null '
          'WHEN new instance created '
          'THEN assign props correctly.', () {
        // Arrange
        final id = 'dummyId';
        final name = 'dummyName';
        final isCurrentTurn = false;
        final numberOfTakes = 15;
        final throws = [
          Throw(points: 180),
          Throw(points: 150),
          Throw(points: 99),
        ];

        // Act
        final player = Player.fromData(
          id: id,
          name: name,
          isCurrentTurn: isCurrentTurn,
          numberOfTakes: numberOfTakes,
          throws: throws,
        );

        // Assert
        expect(player.id, id);
        expect(player.name, name);
        expect(player.isCurrentTurn, isCurrentTurn);
        expect(player.throws, throws);
      });
    });
  });

  group('getters', () {
    group('takesLeft', () {
      test(
          'GIVEN throws is null '
          'WHEN get takesLeft '
          'THEN return null.', () {
        // Arrange
        final player = Player();

        // Act + Assert
        expect(player.takesLeft, null);
      });

      test(
          'GIVEN 0 throws  '
          'WHEN get takesLeft '
          'THEN return correct numberOfTakes.', () {
        // Arrange
        final numberOfTakes = 88;
        final player = Player.fromData(
          id: 'dummyId',
          throws: [],
          numberOfTakes: numberOfTakes,
        );

        // Act + Assert
        expect(player.takesLeft, numberOfTakes);
      });

      test(
          'GIVEN >0 throws  '
          'WHEN get takesLeft '
          'THEN return correct numberOfTakes.', () {
        // Arrange
        final numberOfTakes = 88;
        final player = Player.fromData(
          id: 'dummyId',
          throws: [Throw(points: 33), Throw(points: 44), Throw(points: 130)],
          numberOfTakes: numberOfTakes,
        );

        // Act + Assert
        expect(player.takesLeft, 85);
      });
    });

    group('average', () {
      test(
          'GIVEN throws is null '
          'WHEN get average '
          'THEN return null.', () {
        // Arrange
        final player = Player();

        // Act + Assert
        expect(player.average, null);
      });

      test(
          'GIVEN 0 throws  '
          'WHEN get average '
          'THEN return null.', () {
        // Arrange

        final player = Player.fromData(
          id: 'dummyId',
          throws: [],
          numberOfTakes: 5,
        );

        // Act + Assert
        expect(player.average, null);
      });

      test(
          'GIVEN >0 throws  '
          'WHEN get average '
          'THEN return correct average.', () {
        // Arrange
        final player = Player.fromData(
          id: 'dummyId',
          throws: [Throw(points: 50), Throw(points: 100), Throw(points: 150)],
          numberOfTakes: 5,
        );

        // Act + Assert
        expect(player.average, 100);
      });
    });

    group('firstDartAverage', () {
      // TODO
    });

    group('secondDartAverage', () {
      // TODO
    });

    group('thirdDartAverage', () {
      // TODO
    });

    group('points', () {
      test(
          'GIVEN throws is null '
          'WHEN get points '
          'THEN return null.', () {
        // Arrange
        final player = Player();

        // Act + Assert
        expect(player.points, null);
      });

      test(
          'GIVEN 0 throws  '
          'WHEN get points '
          'THEN return 0.', () {
        // Arrange

        final player = Player.fromData(
          id: 'dummyId',
          throws: [],
          numberOfTakes: 5,
        );

        // Act + Assert
        expect(player.points, 0);
      });

      test(
          'GIVEN >0 throws  '
          'WHEN get points '
          'THEN return correct points.', () {
        // Arrange
        final player = Player.fromData(
          id: 'dummyId',
          throws: [Throw(points: 50), Throw(points: 100), Throw(points: 150)],
          numberOfTakes: 5,
        );

        // Act + Assert
        expect(player.points, 300);
      });
    });
  });

  group('toString()', () {
    test(
        'GIVEN a valid throw with darts'
        'WHEN toString() called '
        'THEN return correct string representation.', () {
      // Arrange
      final id = 'dummyId';
      final name = 'dummyName';
      final isCurrentTurn = false;
      final numberOfTakes = 15;
      final throws = [
        Throw(points: 180),
        Throw(points: 150),
        Throw(points: 99),
      ];

      // Act
      final player = Player.fromData(
        id: id,
        name: name,
        isCurrentTurn: isCurrentTurn,
        numberOfTakes: numberOfTakes,
        throws: throws,
      );

      // Assert
      expect(
        player.toString(),
        'Player{id: $id, name: $name, isCurrentTurn: $isCurrentTurn, throws: $throws}',
      );
    });
  });
}
