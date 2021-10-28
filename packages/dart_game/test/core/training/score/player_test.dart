import 'package:flutter_test/flutter_test.dart';
import 'package:dart_game/score_training_game.dart';

// TODO constructor to string tests

void main() {
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
        expect(
          player.takesLeft,
          numberOfTakes,
        );
      });

      test(
          'GIVEN >0 throws  '
          'WHEN get takesLeft '
          'THEN return correct numberOfTakes.', () {
        // Arrange
        final numberOfTakes = 88;
        final player = Player.fromData(
          id: 'dummyId',
          throws: [33, 44, 139],
          numberOfTakes: numberOfTakes,
        );

        // Act + Assert
        expect(
          player.takesLeft,
          85,
        );
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
          throws: [50, 100, 150],
          numberOfTakes: 5,
        );

        // Act + Assert
        expect(player.average, 100);
      });
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
          'THEN return null.', () {
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
          throws: [50, 100, 150],
          numberOfTakes: 5,
        );

        // Act + Assert
        expect(player.points, 300);
      });
    });
  });
}
