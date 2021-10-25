import 'package:flutter_test/flutter_test.dart';
import 'package:dart_game/single_training_game.dart';

void main() {
  group('constructor', () {
    group('()', () {
      group('valid args', () {
        test(
            'GIVEN valid args '
            'WHEN new instance created '
            'THEN assign props correctly.', () {
          // Arrange

          final name = 'dummyName';

          // Act
          final game = Game(ownerName: name);

          // Assert
          expect(game.status, Status.pending);
          expect(game.mode, Mode.ascending);
          expect(game.players.length, 1);
        });
      });
    });

    group('fromData()', () {
      group('valid args', () {
        test(
            'GIVEN valid args '
            'WHEN new instance created '
            'THEN assign props correctly.', () {
          // Arrange
          final status = Status.running;
          final mode = Mode.ascending;
          final round = Round.fromData(
              targetValue: 20, hits: [Hit.single, Hit.missed, Hit.single]);
          final player1 = Player.fromData(
            id: 'dummyId1',
            name: 'dummyName1',
            isCurrentTurn: true,
            rounds: [round, round],
          );
          final player2 = Player.fromData(
            id: 'dummyId2',
            name: 'dummyName2',
            isCurrentTurn: false,
            rounds: [round, round],
          );
          final players = [player1, player2];

          // Act
          final game = Game.fromData(
            status: status,
            mode: mode,
            players: players,
          );

          // Assert
          expect(game.status, status);
          expect(game.mode, mode);
          expect(game.players, players);
        });
      });
    });
  });

  group('functions', () {
    group('addPlayer', () {
      test(
          'GIVEN pending game with <4 players '
          'WHEN addPlayer called '
          'THEN add new player.', () {
        // Arrange
        final game = Game();

        // Act
        game.addPlayer();

        // Assert
        expect(game.players.length, 2);
      });

      test(
          'GIVEN pending game with <4 players '
          'WHEN addPlayer called '
          'THEN return true.', () {
        // Arrange
        final game = Game();

        // Act & Assert
        expect(game.addPlayer(), true);
      });

      test(
          'GIVEN pending game with >3 players '
          'WHEN addPlayer called '
          'THEN dont add new player.', () {
        // Arrange
        final status = Status.pending;
        final mode = Mode.ascending;
        final game = Game.fromData(
          status: status,
          mode: mode,
          players: [
            Player(),
            Player(),
            Player(),
            Player(),
          ],
        );

        // Act
        game.addPlayer();

        // Assert
        expect(game.players.length, 4);
      });

      test(
          'GIVEN pending game with >3 players '
          'WHEN addPlayer called '
          'THEN return false.', () {
        // Arrange
        final status = Status.pending;
        final mode = Mode.ascending;
        final game = Game.fromData(
          status: status,
          mode: mode,
          players: [
            Player(),
            Player(),
            Player(),
            Player(),
          ],
        );

        // Act & Assert
        expect(game.addPlayer(), false);
      });

      test(
          'GIVEN not pending game '
          'WHEN addPlayer called '
          'THEN dont add new player.', () {
        // Arrange
        final status = Status.running;
        final mode = Mode.ascending;
        final game = Game.fromData(
          status: status,
          mode: mode,
          players: [
            Player(),
          ],
        );

        // Act
        game.addPlayer();

        // Assert
        expect(game.players.length, 1);
      });

      test(
          'GIVEN not pending game '
          'WHEN addPlayer called '
          'THEN return false.', () {
        // Arrange
        final status = Status.running;
        final mode = Mode.ascending;
        final game = Game.fromData(
          status: status,
          mode: mode,
          players: [
            Player(),
          ],
        );

        // Act & Assert
        expect(game.addPlayer(), false);
      });
    });

    group('removePlayer', () {
      test(
          'GIVEN pending game with >1 players '
          'WHEN removePlayer called '
          'THEN remove player.', () {
        // Arrange
        final status = Status.pending;
        final mode = Mode.ascending;
        final players = [
          Player(),
          Player(),
        ];
        final game = Game.fromData(
          status: status,
          mode: mode,
          players: players,
        );

        // Act
        game.removePlayer(index: 0);

        // Assert
        expect(game.players.length, 1);
      });

      test(
          'GIVEN pending game with >1 players '
          'WHEN removePlayer called '
          'THEN return true.', () {
        // Arrange
        final status = Status.pending;
        final mode = Mode.ascending;
        final players = [
          Player(),
          Player(),
        ];
        final game = Game.fromData(
          status: status,
          mode: mode,
          players: players,
        );

        // Act & Assert
        expect(game.removePlayer(index: 0), true);
      });

      test(
          'GIVEN pending game with <2 players '
          'WHEN removePlayer called '
          'THEN dont remove player.', () {
        // Arrange
        final status = Status.pending;
        final mode = Mode.ascending;
        final players = [
          Player(),
        ];
        final game = Game.fromData(
          status: status,
          mode: mode,
          players: players,
        );

        // Act
        game.removePlayer(index: 0);

        // Assert
        expect(game.players.length, 1);
      });

      test(
          'GIVEN pending game with <2 players '
          'WHEN removePlayer called '
          'THEN return false.', () {
        // Arrange
        final status = Status.pending;
        final mode = Mode.ascending;
        final players = [
          Player(),
        ];
        final game = Game.fromData(
          status: status,
          mode: mode,
          players: players,
        );

        // Act & Assert
        expect(game.removePlayer(index: 0), false);
      });

      test(
          'GIVEN not pending game '
          'WHEN removePlayer called '
          'THEN dont remove player.', () {
        // Arrange
        final status = Status.running;
        final mode = Mode.ascending;
        final players = [
          Player(),
          Player(),
        ];
        final game = Game.fromData(
          status: status,
          mode: mode,
          players: players,
        );

        // Act
        game.removePlayer(index: 0);

        // Assert
        expect(game.players.length, 2);
      });

      test(
          'GIVEN not pending game '
          'WHEN removePlayer called '
          'THEN return false.', () {
        // Arrange
        final status = Status.running;
        final mode = Mode.ascending;
        final players = [
          Player(),
          Player(),
        ];
        final game = Game.fromData(
          status: status,
          mode: mode,
          players: players,
        );

        // Act & Assert
        expect(game.removePlayer(index: 0), false);
      });
    });

    group('reorderPlayer', () {
      test(
          'GIVEN pending game valid oldIndex, newIndex '
          'WHEN reorderPlayer called '
          'THEN reorder players.', () {
        // Arrange
        final status = Status.pending;

        final mode = Mode.ascending;

        final player1 = Player();
        final player2 = Player();

        final game = Game.fromData(
          status: status,
          mode: mode,
          players: [
            player1,
            player2,
          ],
        );

        // Act
        game.reorderPlayer(oldIndex: 0, newIndex: 1);

        // Assert
        expect(game.players[0], player2);
        expect(game.players[1], player1);
      });

      test(
          'GIVEN pending game valid oldIndex, newIndex '
          'WHEN reorderPlayer called '
          'THEN return true.', () {
        // Arrange
        final status = Status.pending;

        final mode = Mode.ascending;

        final player1 = Player();
        final player2 = Player();

        final game = Game.fromData(
          status: status,
          mode: mode,
          players: [
            player1,
            player2,
          ],
        );

        // Act & Assert
        expect(game.reorderPlayer(oldIndex: 0, newIndex: 1), true);
      });

      test(
          'GIVEN oldIndex == newIndex '
          'WHEN reorderPlayer called '
          'THEN return false.', () {
        // Arrange
        // Arrange
        final status = Status.pending;

        final mode = Mode.ascending;

        final player1 = Player();
        final player2 = Player();

        final game = Game.fromData(
          status: status,
          mode: mode,
          players: [
            player1,
            player2,
          ],
        );
        // Act & Assert
        expect(game.reorderPlayer(oldIndex: 0, newIndex: 0), false);
      });

      test(
          'GIVEN oldIndex <0 '
          'WHEN reorderPlayer called '
          'THEN return false.', () {
        // Arrange
        // Arrange
        final status = Status.pending;

        final mode = Mode.ascending;

        final player1 = Player();
        final player2 = Player();

        final game = Game.fromData(
          status: status,
          mode: mode,
          players: [
            player1,
            player2,
          ],
        );

        // Act & Assert
        expect(game.reorderPlayer(oldIndex: -1, newIndex: 0), false);
      });

      test(
          'GIVEN newIndex <0 '
          'WHEN reorderPlayer called '
          'THEN return false.', () {
        // Arrange
        final status = Status.pending;

        final mode = Mode.ascending;

        final player1 = Player();
        final player2 = Player();

        final game = Game.fromData(
          status: status,
          mode: mode,
          players: [
            player1,
            player2,
          ],
        );

        // Act & Assert
        expect(game.reorderPlayer(oldIndex: 0, newIndex: -1), false);
      });

      test(
          'GIVEN oldIndex > amount of players - 1 '
          'WHEN reorderPlayer called '
          'THEN return false.', () {
        // Arrange
        final status = Status.pending;

        final mode = Mode.ascending;

        final player1 = Player();
        final player2 = Player();

        final game = Game.fromData(
          status: status,
          mode: mode,
          players: [
            player1,
            player2,
          ],
        );

        // Act & Assert
        expect(game.reorderPlayer(oldIndex: 2, newIndex: 0), false);
      });

      test(
          'GIVEN newIndex > amount of players - 1 '
          'WHEN reorderPlayer called '
          'THEN return false.', () {
        // Arrange
        final status = Status.pending;

        final mode = Mode.ascending;

        final player1 = Player();
        final player2 = Player();

        final game = Game.fromData(
          status: status,
          mode: mode,
          players: [
            player1,
            player2,
          ],
        );

        // Act & Assert
        expect(game.reorderPlayer(oldIndex: 0, newIndex: 2), false);
      });

      test(
          'GIVEN not pending game '
          'WHEN reorderPlayer called '
          'THEN return false.', () {
        // Arrange
        final status = Status.running;

        final mode = Mode.ascending;

        final player1 = Player();
        final player2 = Player();

        final game = Game.fromData(
          status: status,
          mode: mode,
          players: [
            player1,
            player2,
          ],
        );

        // Act & Assert
        expect(game.reorderPlayer(oldIndex: 0, newIndex: 1), false);
      });
    });

    group('start', () {
      test(
          'GIVEN pending game '
          'WHEN start() called '
          'THEN init current turn and add new round.', () {
        // Arrange
        final status = Status.pending;
        final mode = Mode.ascending;
        final player1 = Player.fromData(
          id: 'dummyId1',
          name: 'dummyName1',
          isCurrentTurn: true,
        );
        final player2 = Player.fromData(
          id: 'dummyId2',
          name: 'dummyName2',
          isCurrentTurn: false,
        );
        final players = [player1, player2];

        // Act
        final game =
            Game.fromData(status: status, mode: mode, players: players);

        game.start();

        // Assert
        expect(game.players[0].rounds?.length, 1);
        expect(game.players[1].rounds?.length, 1);
      });
    });

    /**
 *     group('singleHit', () {
      test(
          'GIVEN runnig game '
          'WHEN singleHit() called '
          'THEN add single to currentTurn.', () {
        // Arrange
        final status = Status.pending;
        final mode = Mode.ascending;
        final player1 = Player.fromData(
          id: 'dummyId1',
          name: 'dummyName1',
          isCurrentTurn: true,
        );
        final player2 = Player.fromData(
          id: 'dummyId2',
          name: 'dummyName2',
          isCurrentTurn: false,
        );
        final players = [player1, player2];
        final game =
            Game.fromData(status: status, mode: mode, players: players);
        game.start();

        // Act
        game.singleHit();

        // Assert
        expect(game.players[0].singles, 1);
      });
    });

    group('doubleHit', () {
      test(
          'GIVEN runnig game '
          'WHEN doubleHit() called '
          'THEN add double to currentTurn.', () {
        // Arrange
        final status = Status.pending;
        final mode = Mode.ascending;
        final player1 = Player.fromData(
          id: 'dummyId1',
          name: 'dummyName1',
          isCurrentTurn: true,
        );
        final player2 = Player.fromData(
          id: 'dummyId2',
          name: 'dummyName2',
          isCurrentTurn: false,
        );
        final players = [player1, player2];
        final game =
            Game.fromData(status: status, mode: mode, players: players);
        game.start();

        // Act
        game.doubleHit();

        // Assert
        expect(game.players[0].doubles, 1);
      });
    });

    group('tripleHit', () {
      test(
          'GIVEN runnig game '
          'WHEN tripleHit() called '
          'THEN add triple to currentTurn.', () {
        // Arrange
        final status = Status.pending;
        final mode = Mode.ascending;
        final player1 = Player.fromData(
          id: 'dummyId1',
          name: 'dummyName1',
          isCurrentTurn: true,
        );
        final player2 = Player.fromData(
          id: 'dummyId2',
          name: 'dummyName2',
          isCurrentTurn: false,
        );
        final players = [player1, player2];
        final game =
            Game.fromData(status: status, mode: mode, players: players);
        game.start();

        // Act
        game.tripleHit();

        // Assert
        expect(game.players[0].triples, 1);
      });
    });

    group('nothingHit', () {
      test(
          'GIVEN runnig game '
          'WHEN nothingHit() called '
          'THEN add missed to currentTurn.', () {
        // Arrange
        final status = Status.pending;
        final mode = Mode.ascending;
        final player1 = Player.fromData(
          id: 'dummyId1',
          name: 'dummyName1',
          isCurrentTurn: true,
        );
        final player2 = Player.fromData(
          id: 'dummyId2',
          name: 'dummyName2',
          isCurrentTurn: false,
        );
        final players = [player1, player2];
        final game =
            Game.fromData(status: status, mode: mode, players: players);
        game.start();

        // Act
        game.nothingHit();

        // Assert
        expect(game.players[0].missed, 1);
      });
    });

    group('undoLastHit', () {
      test(
          'GIVEN runnig game with hits '
          'WHEN undoLastHit() called '
          'THEN remove last hit of currentTurn.', () {
        // Arrange
        final status = Status.pending;
        final mode = Mode.ascending;
        final player1 = Player.fromData(
          id: 'dummyId1',
          name: 'dummyName1',
          isCurrentTurn: true,
        );
        final player2 = Player.fromData(
          id: 'dummyId2',
          name: 'dummyName2',
          isCurrentTurn: false,
        );
        final players = [player1, player2];
        final game =
            Game.fromData(status: status, mode: mode, players: players);
        game.start();
        game.singleHit();
        game.tripleHit();
        game.singleHit();

        // Act
        game.undoLastHit();

        // Assert
        expect(game.players[0].singles, 1);
      });
    });

    group('commitHits', () {
      test(
          'GIVEN runnig game with 3 hits '
          'WHEN commitHits() called '
          'THEN next player is now current turn and no round added.', () {
        // Arrange
        final status = Status.pending;
        final mode = Mode.ascending;
        final player1 = Player.fromData(
          id: 'dummyId1',
          name: 'dummyName1',
        );
        final player2 = Player.fromData(
          id: 'dummyId2',
          name: 'dummyName2',
        );
        final players = [player1, player2];
        final game =
            Game.fromData(status: status, mode: mode, players: players);
        game.start();
        game.singleHit();
        game.tripleHit();
        game.singleHit();

        // Act
        game.commitHits();

        // Assert
        expect(player1.isCurrentTurn, false);
        expect(player2.isCurrentTurn, true);
        expect(player1.rounds!.length, 1);
        expect(player2.rounds!.length, 1);
      });

      test(
          'GIVEN runnig game with 3 hits from every player '
          'WHEN commitHits() called '
          'THEN next player is now current turn and 1 round added.', () {
        // Arrange
        final status = Status.pending;
        final mode = Mode.ascending;
        final player1 = Player.fromData(
          id: 'dummyId1',
          name: 'dummyName1',
        );
        final player2 = Player.fromData(
          id: 'dummyId2',
          name: 'dummyName2',
        );
        final players = [player1, player2];
        final game =
            Game.fromData(status: status, mode: mode, players: players);
        game.start();
        game.singleHit();
        game.tripleHit();
        game.singleHit();
        game.commitHits();

        game.singleHit();
        game.tripleHit();
        game.singleHit();

        // Act
        game.commitHits();

        // Assert
        expect(player1.isCurrentTurn, true);
        expect(player2.isCurrentTurn, false);
        expect(player1.rounds!.length, 2);
        expect(player2.rounds!.length, 2);
      });
    });

 */

    group('performHits()', () {});

    group('undoHits', () {
      test(
          'GIVEN runnig game with 3 hits '
          'WHEN undoHits() called '
          'THEN prev player is now current turn and 1 round removed.', () {
        // Arrange
        final status = Status.pending;
        final mode = Mode.ascending;
        final player1 = Player.fromData(
          id: 'dummyId1',
          name: 'dummyName1',
        );
        final player2 = Player.fromData(
          id: 'dummyId2',
          name: 'dummyName2',
        );
        final players = [player1, player2];
        final game =
            Game.fromData(status: status, mode: mode, players: players);
        game.start();
        game.performHits(Hit.single, Hit.triple, Hit.single);

        // Act
        game.undoHits();

        // Assert
        expect(player1.isCurrentTurn, true);
        expect(player2.isCurrentTurn, false);
        expect(player1.rounds![0].hits.length, 3);
      });

      test(
          'GIVEN runnig game with 0 hits from every player '
          'WHEN undoHits() called '
          'THEN return false.', () {
        // Arrange
        final status = Status.pending;
        final mode = Mode.ascending;
        final player1 = Player.fromData(
          id: 'dummyId1',
          name: 'dummyName1',
        );
        final player2 = Player.fromData(
          id: 'dummyId2',
          name: 'dummyName2',
        );
        final players = [player1, player2];
        final game =
            Game.fromData(status: status, mode: mode, players: players);
        game.start();

        // Act
        final success = game.undoHits();

        // Assert
        expect(success, false);
      });
    });
  });

  group('toString()', () {
    test(
        'GIVEN valid args '
        'WHEN toString() called '
        'THEN return correct string representation.', () {
      // Arrange
      final status = Status.running;
      final mode = Mode.ascending;
      final round = Round.fromData(
          targetValue: 20, hits: [Hit.single, Hit.missed, Hit.single]);
      final player1 = Player.fromData(
        id: 'dummyId1',
        name: 'dummyName1',
        isCurrentTurn: true,
        rounds: [round, round],
      );
      final player2 = Player.fromData(
        id: 'dummyId2',
        name: 'dummyName2',
        isCurrentTurn: false,
        rounds: [round, round],
      );
      final players = [player1, player2];

      // Act & Assert
      expect(
        Game.fromData(status: status, mode: mode, players: players).toString(),
        'Game{status: running, mode: ascending, players: $players}',
      );
    });
  });
}
