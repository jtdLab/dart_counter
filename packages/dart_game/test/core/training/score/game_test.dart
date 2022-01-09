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
        final game = Game();

        // Assert
        expect(game.status, Status.pending);
        expect(game.players.length, 1);
        expect(game.owner, game.players[0]);
        expect(game.numberOfTakes, 1);
      });

      test(
          'GIVEN all args possible not null '
          'WHEN new instance created '
          'THEN assign props correctly.', () {
        // Arrange
        final ownerName = 'dummyName';
        final numberOfTakes = 10;

        // Act
        final game = Game(ownerName: ownerName, numberOfTakes: numberOfTakes);

        // Assert
        expect(game.status, Status.pending);
        expect(game.players.length, 1);
        expect(game.owner, game.players[0]);
        expect(game.owner.name, ownerName);
        expect(game.numberOfTakes, numberOfTakes);
      });
    });

    group('fromData()', () {
      test(
          'GIVEN all args possible not null '
          'WHEN new instance created '
          'THEN assign props correctly.', () {
        // Arrange
        final status = Status.canceled;
        final ownerName = 'dummyName';
        final owner = Player(name: ownerName);
        final players = [owner, Player()];
        final numberOfTakes = 10;

        // Act
        final game = Game.fromData(
          status: status,
          players: players,
          owner: owner,
          numberOfTakes: numberOfTakes,
        );

        // Assert
        expect(game.status, status);
        expect(game.players.length, 2);
        expect(game.owner, game.players[0]);
        expect(game.owner.name, ownerName);
        expect(game.numberOfTakes, numberOfTakes);
      });
    });
  });

  group('methods', () {
    group('start', () {
      test(
          'GIVEN pending game '
          'WHEN start called '
          'THEN start game and init all players correctly.', () {
        // Arrange
        final ownerName = 'dummyName';
        final game = Game(ownerName: ownerName);
        game.addPlayer(player: Player());

        // Act
        game.start();

        // Assert
        final player1 = game.players[0];
        final player2 = game.players[1];
        expect(game.status, Status.running);
        expect(player1.throws, isEmpty);
        expect(player1.isCurrentTurn, true);
        expect(player2.throws, isEmpty);
        expect(player2.isCurrentTurn, false);
      });

      test(
          'GIVEN pending game '
          'WHEN start called '
          'THEN return true.', () {
        // Arrange
        final ownerName = 'dummyName';
        final game = Game(ownerName: ownerName);
        game.addPlayer(player: Player());

        // Act & Assert
        expect(game.start(), true);
      });

      test(
          'GIVEN running game '
          'WHEN start called '
          'THEN return false.', () {
        // Arrange
        final owner = Player();
        final game = Game.fromData(
          status: Status.running,
          players: [owner, Player()],
          owner: owner,
          numberOfTakes: 10,
        );

        // Act & Assert
        expect(game.start(), false);
      });

      test(
          'GIVEN canceled game '
          'WHEN start called '
          'THEN return false.', () {
        // Arrange
        final owner = Player();
        final game = Game.fromData(
          status: Status.canceled,
          players: [owner, Player()],
          owner: owner,
          numberOfTakes: 10,
        );

        // Act & Assert
        expect(game.start(), false);
      });

      test(
          'GIVEN finished game '
          'WHEN start called '
          'THEN return false.', () {
        // Arrange
        final owner = Player();
        final game = Game.fromData(
          status: Status.finished,
          players: [owner, Player()],
          owner: owner,
          numberOfTakes: 10,
        );

        // Act & Assert
        expect(game.start(), false);
      });
    });

    group('performThrow', () {
      test(
          'GIVEN throw with dartsThrown != 3 '
          'WHEN performThrow '
          'THEN throw ArgumentError.', () {
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
        expect(
          () => game.performThrow(t: Throw(points: 100, dartsThrown: 2)),
          throwsA(isArgumentError),
        );
      });

      test(
          'GIVEN throw with dartsOnDouble != 0 '
          'WHEN performThrow '
          'THEN throw ArgumentError.', () {
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
        expect(
          () => game.performThrow(t: Throw(points: 100, dartsOnDouble: 1)),
          throwsA(isArgumentError),
        );
      });

      test(
          'GIVEN pending game '
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
        expect(game.performThrow(t: Throw(points: 100)), false);
      });

      test(
          'GIVEN canceled game '
          'WHEN performThrow '
          'THEN return false.', () {
        // Arrange
        final owner = Player();
        final game = Game.fromData(
          status: Status.canceled,
          numberOfTakes: 10,
          players: [owner, Player()],
          owner: owner,
        );

        // Act & Assert
        expect(game.performThrow(t: Throw(points: 100)), false);
      });

      test(
          'GIVEN finished game '
          'WHEN performThrow '
          'THEN return false.', () {
        // Arrange
        final owner = Player();
        final game = Game.fromData(
          status: Status.finished,
          numberOfTakes: 10,
          players: [owner, Player()],
          owner: owner,
        );

        // Act & Assert
        expect(game.performThrow(t: Throw(points: 100)), false);
      });

      test(
          'GIVEN running game which is not finished after next throw '
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
        expect(game.performThrow(t: Throw(points: 100)), true);
      });

      test(
          'GIVEN running game which is not finished after next throw '
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

        final t = Throw(points: 100);

        // Act
        game.performThrow(t: t);

        // Assert
        expect(game.players[0].isCurrentTurn, false);
        expect(game.players[0].throws!.length, 1);
        expect(game.players[0].throws!.last, t);
        expect(game.players[1].isCurrentTurn, true);
      });

      test(
          'GIVEN running game which is finished after next throw '
          'WHEN performThrow '
          'THEN update game state correctly.', () {
        // Arrange
        final owner = Player();
        final game = Game.fromData(
          status: Status.pending,
          numberOfTakes: 1,
          players: [owner, Player()],
          owner: owner,
        );
        game.start();
        game.performThrow(t: Throw(points: 100));

        final t = Throw(points: 100);

        // Act
        game.performThrow(t: t);

        // Assert
        expect(game.status, Status.finished);
        expect(game.players[0].isCurrentTurn, false);
        expect(game.players[0].throws!.length, 1);
        expect(game.players[1].isCurrentTurn, true);
        expect(game.players[1].throws!.length, 1);
        expect(game.players[1].throws!.last, t);
      });
    });

    group('undoThrow', () {
      test(
          'GIVEN pending game '
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
          'GIVEN canceled game '
          'WHEN undoThrow '
          'THEN return false.', () {
        // Arrange
        final owner = Player();
        final game = Game.fromData(
          status: Status.canceled,
          numberOfTakes: 10,
          players: [owner, Player()],
          owner: owner,
        );

        // Act & Assert
        expect(game.undoThrow(), false);
      });

      test(
          'GIVEN finished game '
          'WHEN undoThrow '
          'THEN return false.', () {
        // Arrange
        final owner = Player();
        final game = Game.fromData(
          status: Status.finished,
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
        game.performThrow(t: Throw(points: 180));

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
        game.performThrow(t: Throw(points: 180));

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
    test(
        'GIVEN a game '
        'WHEN toString() called '
        'THEN return correct string representation.', () {
      // Arrange
      final status = Status.canceled;
      final ownerName = 'dummyName';
      final owner = Player(name: ownerName);
      final players = [owner, Player()];
      final numberOfTakes = 10;

      // Act
      final game = Game.fromData(
        status: status,
        players: players,
        owner: owner,
        numberOfTakes: numberOfTakes,
      );

      // Assert
      expect(
        game.toString(),
        'Game{status: canceled, players: $players, owner: $owner, numberOfTakes: $numberOfTakes}',
      );
    });
  });
}
