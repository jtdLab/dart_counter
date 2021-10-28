import 'package:flutter_test/flutter_test.dart';
import 'package:dart_game/score_training_game.dart';

void main() {
  group('constructor', () {
    group('()', () {
      // TODO
    });

    group('fromData()', () {
      // TODO
    });
  });

  group('methods', () {
    group('start', () {
      // TODO
    });

    group('performThrow', () {
      test(
          'GIVEN not running game '
          'WHEN performThrow '
          'THEN return false.', () {
        // Arrange
        final owner = Player();
        final game = Game.fromData(
          status: Status.pending,
          numberOfTakes: 10,
          players: [owner, Player()],
          owner: owner,
        );

        // Act & Assert
        expect(game.performThrow(points: 100), false);
      });

      test(
          'GIVEN running game '
          'WHEN performThrow '
          'THEN return true.', () {
        // Arrange
        final owner = Player();
        final game = Game.fromData(
          status: Status.pending,
          numberOfTakes: 10,
          players: [owner, Player()],
          owner: owner,
        );
        game.start();

        // Act & Assert
        expect(game.performThrow(points: 100), true);
      });

      test(
          'GIVEN running game '
          'WHEN performThrow '
          'THEN update game state correctly.', () {
        // Arrange
        final owner = Player();
        final game = Game.fromData(
          status: Status.pending,
          numberOfTakes: 10,
          players: [owner, Player()],
          owner: owner,
        );
        game.start();

        // Act
        game.performThrow(points: 100);

        // Assert
        expect(game.players[0].isCurrentTurn, false);
        expect(game.players[0].throws!.length, 1);
        expect(game.players[0].throws!.last, 100);
        expect(game.players[1].isCurrentTurn, true);
      });
    });

    group('undoThrow', () {
      test(
          'GIVEN not running game '
          'WHEN undoThrow '
          'THEN return false.', () {
        // Arrange
        final owner = Player();
        final game = Game.fromData(
          status: Status.pending,
          numberOfTakes: 10,
          players: [owner, Player()],
          owner: owner,
        );

        // Act & Assert
        expect(game.undoThrow(), false);
      });

      test(
          'GIVEN running game with 0 throws '
          'WHEN undoThrow '
          'THEN return false.', () {
        // Arrange
        final owner = Player();
        final game = Game.fromData(
          status: Status.pending,
          numberOfTakes: 10,
          players: [owner, Player()],
          owner: owner,
        );
        game.start();

        // Act & Assert
        expect(game.undoThrow(), false);
      });

      test(
          'GIVEN running game with > 0 throws '
          'WHEN undoThrow '
          'THEN return true.', () {
        // Arrange
        final owner = Player();
        final game = Game.fromData(
          status: Status.pending,
          numberOfTakes: 10,
          players: [owner, Player()],
          owner: owner,
        );
        game.start();
        game.performThrow(points: 180);

        // Act & Assert
        expect(game.undoThrow(), true);
      });

      test(
          'GIVEN running game with > 0 throws '
          'WHEN undoThrow '
          'THEN update game state correctly.', () {
        // Arrange
        final owner = Player();
        final game = Game.fromData(
          status: Status.pending,
          numberOfTakes: 10,
          players: [owner, Player()],
          owner: owner,
        );
        game.start();
        game.performThrow(points: 180);

        // Act
        game.undoThrow();

        // Assert
        expect(game.players[0].isCurrentTurn, true);
        expect(game.players[0].throws!.length, 0);
        expect(game.players[1].isCurrentTurn, false);
      });
    });
  });

  group('toString()', () {
    // TODO
  });
}
