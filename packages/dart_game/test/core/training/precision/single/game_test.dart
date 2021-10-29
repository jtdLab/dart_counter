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
        final game = Game();

        // Assert
        expect(game.status, Status.pending);
        expect(game.players.length, 1);
        expect(game.owner, game.players[0]);
        expect(game.mode, Mode.ascending);
      });

      test(
          'GIVEN all args possible not null '
          'WHEN new instance created '
          'THEN assign props correctly.', () {
        // Arrange
        final ownerName = 'dummyName';
        final mode = Mode.random;

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
        final mode = Mode.random;

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
          'GIVEN pending game with mode ascending '
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
        expect(player1.targetValue, 1);
        expect(player2.throws, isEmpty);
        expect(player2.isCurrentTurn, false);
        expect(player2.targetValue, 1);
      });

      test(
          'GIVEN pending game with mode descending '
          'WHEN start called '
          'THEN start game and init all players correctly.', () {
        // Arrange
        final ownerName = 'dummyName';
        final game = Game(ownerName: ownerName, mode: Mode.descending);
        game.addPlayer(player: Player());

        // Act
        game.start();

        // Assert
        final player1 = game.players[0];
        final player2 = game.players[1];
        expect(game.status, Status.running);
        expect(player1.throws, isEmpty);
        expect(player1.isCurrentTurn, true);
        expect(player1.targetValue, 25);
        expect(player2.throws, isEmpty);
        expect(player2.isCurrentTurn, false);
        expect(player2.targetValue, 25);
      });

      test(
          'GIVEN pending game with mode random '
          'WHEN start called '
          'THEN start game and init all players correctly.', () {
        // Arrange
        final ownerName = 'dummyName';
        final game = Game(ownerName: ownerName, mode: Mode.random);
        game.addPlayer(player: Player());

        // Act
        game.start();

        // Assert
        final player1 = game.players[0];
        final player2 = game.players[1];
        expect(game.status, Status.running);
        expect(player1.throws, isEmpty);
        expect(player1.isCurrentTurn, true);
        expect(player1.targetValue, isNotNull);
        expect(player2.throws, isEmpty);
        expect(player2.isCurrentTurn, false);
        expect(player2.targetValue, isNotNull);
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
          mode: Mode.ascending,
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
          mode: Mode.ascending,
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
          mode: Mode.ascending,
        );

        // Act & Assert
        expect(game.start(), false);
      });
    });

    group('performThrow', () {
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
          mode: Mode.ascending,
        );
        game.start();

        // Act & Assert
        expect(
          () => game.performThrow(t: Throw(points: 100)),
          throwsA(isArgumentError),
        );
      });

      test(
          'GIVEN throw with dartsThrown != 3 '
          'WHEN performThrow '
          'THEN throw ArgumentError.', () {
        // Arrange
        final owner = Player();
        final game = Game.fromData(
          status: Status.pending,
          players: [owner, Player()],
          owner: owner,
          mode: Mode.ascending,
        );
        game.start();

        // Act & Assert
        expect(
          () => game.performThrow(
            t: Throw.fromDarts(
              darts: [
                Dart.missed,
                Dart.missed,
              ],
            ),
          ),
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
          players: [owner, Player()],
          owner: owner,
          mode: Mode.ascending,
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
              dartsOnDouble: 1,
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
          mode: Mode.ascending,
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
          mode: Mode.ascending,
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
          mode: Mode.ascending,
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
            ),
          ),
          false,
        );
      });

      test(
          'GIVEN running game which is not finished after next throw '
          'WHEN performThrow '
          'THEN return true.', () {
        // Arrange
        final owner = Player();
        final game = Game.fromData(
          status: Status.pending,
          players: [owner, Player()],
          owner: owner,
          mode: Mode.ascending,
        );
        game.start();

        // Act & Assert
        expect(
          game.performThrow(
            t: Throw.fromDarts(
              darts: [
                Dart.missed,
                Dart.missed,
                Dart.missed,
              ],
            ),
          ),
          true,
        );
      });

      group('ascending', () {
        test(
            'GIVEN running game which is not finished after next throw '
            'WHEN performThrow '
            'THEN update game state correctly.', () {
          // Arrange
          final owner = Player();
          final game = Game.fromData(
            status: Status.pending,
            players: [owner, Player()],
            owner: owner,
            mode: Mode.ascending,
          );
          game.start();

          final t = Throw.fromDarts(
            darts: [
              Dart.missed,
              Dart.missed,
              Dart.missed,
            ],
          );

          // Act
          game.performThrow(t: t);

          // Assert
          expect(game.players[0].isCurrentTurn, false);
          expect(game.players[0].throws!.length, 1);
          expect(game.players[0].throws!.last, t);
          expect(game.players[0].targetValue, 2);
          expect(game.players[1].isCurrentTurn, true);
          expect(game.players[1].throws!.length, 0);
          expect(game.players[1].targetValue, 1);
        });

        test(
            'GIVEN running game which is finished after next throw '
            'WHEN performThrow '
            'THEN update game state correctly.', () {
          // Arrange
          final owner = Player();
          final player1 = Player();
          final game = Game.fromData(
            status: Status.pending,
            players: [owner, player1],
            owner: owner,
            mode: Mode.ascending,
          );
          game.start();

          final t = Throw.fromDarts(
            darts: [
              Dart.missed,
              Dart.missed,
              Dart.missed,
            ],
          );

          for (int i = 0; i < 41; i++) {
            game.performThrow(t: t);
          }

          // Act
          game.performThrow(t: t);

          // Assert
          expect(game.status, Status.finished);
          expect(game.players[0].isCurrentTurn, false);
          expect(game.players[0].throws!.length, 21);
          expect(game.players[0].targetValue, 25);
          expect(game.players[1].isCurrentTurn, true);
          expect(game.players[1].throws!.length, 21);
          expect(game.players[1].targetValue, 25);
          expect(game.players[1].throws!.last, t);
        });
      });

      group('descending', () {
        test(
            'GIVEN running game which is not finished after next throw '
            'WHEN performThrow '
            'THEN update game state correctly.', () {
          // Arrange
          final owner = Player();
          final game = Game.fromData(
            status: Status.pending,
            players: [owner, Player()],
            owner: owner,
            mode: Mode.descending,
          );
          game.start();

          final t = Throw.fromDarts(
            darts: [
              Dart.missed,
              Dart.missed,
              Dart.missed,
            ],
          );

          // Act
          game.performThrow(t: t);

          // Assert
          expect(game.players[0].isCurrentTurn, false);
          expect(game.players[0].throws!.length, 1);
          expect(game.players[0].throws!.last, t);
          expect(game.players[0].targetValue, 20);
          expect(game.players[1].isCurrentTurn, true);
          expect(game.players[1].throws!.length, 0);
          expect(game.players[1].targetValue, 25);
        });

        test(
            'GIVEN running game which is finished after next throw '
            'WHEN performThrow '
            'THEN update game state correctly.', () {
          // Arrange
          final owner = Player();
          final player1 = Player();
          final game = Game.fromData(
            status: Status.pending,
            players: [owner, player1],
            owner: owner,
            mode: Mode.descending,
          );
          game.start();

          final t = Throw.fromDarts(
            darts: [
              Dart.missed,
              Dart.missed,
              Dart.missed,
            ],
          );

          for (int i = 0; i < 41; i++) {
            game.performThrow(t: t);
          }

          // Act
          game.performThrow(t: t);

          // Assert
          expect(game.status, Status.finished);
          expect(game.players[0].isCurrentTurn, false);
          expect(game.players[0].throws!.length, 21);
          expect(game.players[0].targetValue, 1);
          expect(game.players[1].isCurrentTurn, true);
          expect(game.players[1].throws!.length, 21);
          expect(game.players[1].targetValue, 1);
          expect(game.players[1].throws!.last, t);
        });
      });

      group('random', () {
        test(
            'GIVEN running game which is not finished after next throw '
            'WHEN performThrow '
            'THEN update game state correctly.', () {
          // Arrange
          final owner = Player();
          final game = Game.fromData(
            status: Status.pending,
            players: [owner, Player()],
            owner: owner,
            mode: Mode.random,
          );
          game.start();

          final t = Throw.fromDarts(
            darts: [
              Dart.missed,
              Dart.missed,
              Dart.missed,
            ],
          );

          // Act
          game.performThrow(t: t);

          // Assert
          expect(game.players[0].isCurrentTurn, false);
          expect(game.players[0].throws!.length, 1);
          expect(game.players[0].throws!.last, t);
          expect(game.players[0].targetValue, isNotNull);
          expect(game.players[1].isCurrentTurn, true);
          expect(game.players[1].throws!.length, 0);
          expect(game.players[1].targetValue, isNotNull);
        });

        test(
            'GIVEN running game which is finished after next throw '
            'WHEN performThrow '
            'THEN update game state correctly.', () {
          // Arrange
          final owner = Player();
          final player1 = Player();
          final game = Game.fromData(
            status: Status.pending,
            players: [owner, player1],
            owner: owner,
            mode: Mode.random,
          );
          game.start();

          final t = Throw.fromDarts(
            darts: [
              Dart.missed,
              Dart.missed,
              Dart.missed,
            ],
          );

          for (int i = 0; i < 41; i++) {
            game.performThrow(t: t);
          }

          // Act
          game.performThrow(t: t);

          // Assert
          expect(game.status, Status.finished);
          expect(game.players[0].isCurrentTurn, false);
          expect(game.players[0].throws!.length, 21);
          expect(game.players[0].targetValue, isInstanceOf<int>());
          expect(game.players[1].isCurrentTurn, true);
          expect(game.players[1].throws!.length, 21);
          expect(game.players[1].targetValue, isInstanceOf<int>());
          expect(game.players[1].throws!.last, t);
        });
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
          players: [owner, Player()],
          owner: owner,
          mode: Mode.ascending,
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
          mode: Mode.ascending,
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
          mode: Mode.ascending,
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
          mode: Mode.ascending,
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
          mode: Mode.ascending,
        );
        game.start();
        game.performThrow(
          t: Throw.fromDarts(
            darts: [
              Dart.missed,
              Dart.missed,
              Dart.missed,
            ],
          ),
        );

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
          players: [owner, Player()],
          owner: owner,
          mode: Mode.ascending,
        );
        game.start();
        game.performThrow(
          t: Throw.fromDarts(
            darts: [
              Dart.missed,
              Dart.missed,
              Dart.missed,
            ],
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
      final mode = Mode.random;

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
        'Game{status: canceled, players: $players, owner: $owner, mode: random}',
      );
    });
  });
}
