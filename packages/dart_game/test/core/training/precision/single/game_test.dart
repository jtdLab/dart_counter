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
            owner: player1,
          );

          // Assert
          expect(game.status, status);
          expect(game.mode, mode);
          expect(game.players, players);
        });
      });
    });
  });

  group('methods', () {
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
        final game = Game.fromData(
          status: status,
          mode: mode,
          players: players,
          owner: player1,
        );

        game.start();

        // Assert
        expect(game.players[0].rounds?.length, 1);
        expect(game.players[1].rounds?.length, 1);
      });
    });

    group('performThrow()', () {});

    group('undoThrow', () {
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
        final game = Game.fromData(
          status: status,
          mode: mode,
          players: players,
          owner: player1,
        );
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
        final game = Game.fromData(
          status: status,
          mode: mode,
          players: players,
          owner: player1,
        );
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
        Game.fromData(
          status: status,
          mode: mode,
          players: players,
          owner: player1,
        ).toString(),
        'Game{status: running, mode: ascending, players: $players}',
      );
    });
  });
}
