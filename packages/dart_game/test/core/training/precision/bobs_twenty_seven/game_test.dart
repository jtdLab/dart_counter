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
        final game = Game();

        // Assert
        expect(game.status, Status.pending);
        expect(game.players.length, 1);
        expect(game.owner, game.players[0]);
        expect(game.mode, Mode.easy);
      });

      test(
          'GIVEN all args possible not null '
          'WHEN new instance created '
          'THEN assign props correctly.', () {
        // Arrange
        final ownerName = 'dummyName';
        final mode = Mode.easy;

        // Act
        final game = Game(ownerName: ownerName, mode: mode);

        // Assert
        expect(game.status, Status.pending);
        expect(game.players.length, 1);
        expect(game.owner, game.players[0]);
        expect(game.owner.name, ownerName);
        expect(game.mode, mode);
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
        final mode = Mode.easy;

        // Act
        final game = Game.fromData(
          status: status,
          players: players,
          owner: owner,
          mode: mode,
        );

        // Assert
        expect(game.status, status);
        expect(game.players.length, 2);
        expect(game.owner, game.players[0]);
        expect(game.owner.name, ownerName);
        expect(game.mode, mode);
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
        final game = Game(ownerName: ownerName, mode: Mode.hard);
        game.addPlayer(player: Player());

        // Act
        game.start();

        // Assert
        final player1 = game.players[0];
        final player2 = game.players[1];
        expect(game.status, Status.running);
        expect(player1.throws, isEmpty);
        expect(player1.isCurrentTurn, true);
        expect(player1.targetValue, 1);
        expect(player1.isDisqualified, false);
        expect(player2.throws, isEmpty);
        expect(player2.isCurrentTurn, false);
        expect(player2.targetValue, 1);
        expect(player2.isDisqualified, false);
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
          mode: Mode.easy,
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
          mode: Mode.easy,
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
          mode: Mode.easy,
        );

        // Act & Assert
        expect(game.start(), false);
      });
    });

    group('performThrow()', () {
      test(
          'GIVEN throw with darts == null '
          'WHEN performThrow '
          'THEN throw ArgumentError.', () {
        // Arrange
        final owner = Player();
        final game = Game.fromData(
          status: Status.pending,
          players: [owner, Player()],
          owner: owner,
          mode: Mode.easy,
        );
        game.start();

        // Act & Assert
        expect(
          () => game.performThrow(t: Throw(points: 100)),
          throwsA(isArgumentError),
        );
      });

      test(
          'GIVEN throw with dartsOnDouble != 3 '
          'WHEN performThrow '
          'THEN throw ArgumentError.', () {
        // Arrange
        final owner = Player();
        final game = Game.fromData(
          status: Status.pending,
          players: [owner, Player()],
          owner: owner,
          mode: Mode.easy,
        );
        game.start();

        // Act & Assert
        expect(
          () => game.performThrow(
            t: Throw.fromDarts(
              darts: [
                Dart.missed,
                Dart.missed,
                Dart.missed,
              ],
              dartsOnDouble: 2,
            ),
          ),
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
          players: [owner, Player()],
          owner: owner,
          mode: Mode.easy,
        );

        // Act & Assert
        expect(
          game.performThrow(
            t: Throw.fromDarts(
              darts: [
                Dart.missed,
                Dart.missed,
                Dart.missed,
              ],
              dartsOnDouble: 3,
            ),
          ),
          false,
        );
      });

      test(
          'GIVEN canceled game '
          'WHEN performThrow '
          'THEN return false.', () {
        // Arrange
        final owner = Player();
        final game = Game.fromData(
          status: Status.canceled,
          players: [owner, Player()],
          owner: owner,
          mode: Mode.easy,
        );

        // Act & Assert
        expect(
          game.performThrow(
            t: Throw.fromDarts(
              darts: [
                Dart.missed,
                Dart.missed,
                Dart.missed,
              ],
              dartsOnDouble: 3,
            ),
          ),
          false,
        );
      });

      test(
          'GIVEN finished game '
          'WHEN performThrow '
          'THEN return false.', () {
        // Arrange
        final owner = Player();
        final game = Game.fromData(
          status: Status.finished,
          players: [owner, Player()],
          owner: owner,
          mode: Mode.easy,
        );

        // Act & Assert
        expect(
          game.performThrow(
            t: Throw.fromDarts(
              darts: [
                Dart.missed,
                Dart.missed,
                Dart.missed,
              ],
              dartsOnDouble: 3,
            ),
          ),
          false,
        );
      });

      // TODO more tests here

      group('easy', () {
        // TODO
      });

      group('hard', () {
        // TODO
      });
    });

    group('undoThrow()', () {
      test(
          'GIVEN pending game '
          'WHEN undoThrow '
          'THEN return false.', () {
        // Arrange
        final owner = Player();
        final game = Game.fromData(
          status: Status.pending,
          players: [owner, Player()],
          owner: owner,
          mode: Mode.easy,
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
          players: [owner, Player()],
          owner: owner,
          mode: Mode.hard,
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
          players: [owner, Player()],
          owner: owner,
          mode: Mode.easy,
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
          players: [owner, Player()],
          owner: owner,
          mode: Mode.hard,
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
          players: [owner, Player()],
          owner: owner,
          mode: Mode.easy,
        );
        game.start();
        game.performThrow(
          t: Throw.fromDarts(
            darts: [
              Dart.missed,
              Dart.missed,
              Dart.missed,
            ],
            dartsOnDouble: 3,
          ),
        );

        // Act & Assert
        expect(game.undoThrow(), true);
      });

      test(
          'GIVEN running game with > 0 throws and >1 players  '
          'WHEN undoThrow '
          'THEN update game state correctly.', () {
        // Arrange
        final owner = Player();
        final game = Game.fromData(
          status: Status.pending,
          players: [owner, Player()],
          owner: owner,
          mode: Mode.easy,
        );
        game.start();
        game.performThrow(
          t: Throw.fromDarts(
            darts: [
              Dart.missed,
              Dart.missed,
              Dart.missed,
            ],
            dartsOnDouble: 3,
          ),
        );

        // Act
        game.undoThrow();

        // Assert
        expect(game.players[0].isCurrentTurn, true);
        expect(game.players[0].throws!.length, 0);
        expect(game.players[0].targetValue, 1);
        expect(game.players[1].isCurrentTurn, false);
        expect(game.players[1].targetValue, 1);
      });

      // TODO more tests here

      group('easy', () {
        // TODO
      });

      group('hard', () {
        // TODO
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
      final mode = Mode.easy;

      // Act
      final game = Game.fromData(
        status: status,
        players: players,
        owner: owner,
        mode: mode,
      );

      // Assert
      expect(
        game.toString(),
        'Game{status: canceled, players: $players, owner: $owner, mode: easy}',
      );
    });
  });
}
