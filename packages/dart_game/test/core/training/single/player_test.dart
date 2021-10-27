import 'package:dart_game/core/training/hit/hit.dart';
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
          final id = 'dummyId';
          final name = 'dummyName';

          // Act
          final player = Player(id: id, name: name);

          // Assert
          expect(player.id, id);
          expect(player.name, name);
        });

        test(
            'GIVEN valid args but no id '
            'WHEN new instance created '
            'THEN assign props correctly.', () {
          // Arrange
          final name = 'dummyName';

          // Act
          final player = Player(name: name);

          // Assert
          expect(player.id, isNotNull);
          expect(player.name, name);
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
          final id = 'dummyId';
          final name = 'dummyName';
          final isCurrentTurn = true;
          final round = Round.fromData(
              targetValue: 20, hits: [Hit.single, Hit.missed, Hit.single]);
          final rounds = [round, round];

          // Act
          final player = Player.fromData(
            id: id,
            name: name,
            isCurrentTurn: isCurrentTurn,
            rounds: rounds,
          );

          // Assert
          expect(player.id, id);
          expect(player.name, name);
          expect(player.isCurrentTurn, isCurrentTurn);
          expect(player.rounds, rounds);
        });
      });
    });
  });

  group('getters', () {
    group('triples', () {
      test(
          'GIVEN 0 triples '
          'WHEN get triples '
          'THEN return 0.', () {
        final id = 'dummyId';
        final name = 'dummyName';
        final isCurrentTurn = true;
        final round = Round.fromData(
          targetValue: 20,
          hits: [Hit.single, Hit.missed, Hit.single],
        );
        final rounds = [round, round];

        final player = Player.fromData(
          id: id,
          name: name,
          isCurrentTurn: isCurrentTurn,
          rounds: rounds,
        );

        expect(player.triples, 0);
      });

      test(
          'GIVEN >0 triples '
          'WHEN get triples '
          'THEN return correct amount.', () {
        final id = 'dummyId';
        final name = 'dummyName';
        final isCurrentTurn = true;
        final round = Round.fromData(
          targetValue: 20,
          hits: [Hit.single, Hit.missed, Hit.triple],
        );
        final rounds = [round, round];

        final player = Player.fromData(
          id: id,
          name: name,
          isCurrentTurn: isCurrentTurn,
          rounds: rounds,
        );

        expect(player.triples, 2);
      });
    });

    group('doubles', () {
      test(
          'GIVEN 0 doubles '
          'WHEN get doubles '
          'THEN return 0.', () {
        final id = 'dummyId';
        final name = 'dummyName';
        final isCurrentTurn = true;
        final round = Round.fromData(
          targetValue: 20,
          hits: [Hit.single, Hit.missed, Hit.single],
        );
        final rounds = [round, round];

        final player = Player.fromData(
          id: id,
          name: name,
          isCurrentTurn: isCurrentTurn,
          rounds: rounds,
        );

        expect(player.doubles, 0);
      });

      test(
          'GIVEN >0 doubles '
          'WHEN get doubles '
          'THEN return correct amount.', () {
        final id = 'dummyId';
        final name = 'dummyName';
        final isCurrentTurn = true;
        final round = Round.fromData(
          targetValue: 20,
          hits: [Hit.single, Hit.missed, Hit.double],
        );
        final rounds = [round, round];

        final player = Player.fromData(
          id: id,
          name: name,
          isCurrentTurn: isCurrentTurn,
          rounds: rounds,
        );

        expect(player.doubles, 2);
      });
    });

    group('singles', () {
      test(
          'GIVEN 0 singles '
          'WHEN get singles '
          'THEN return 0.', () {
        final id = 'dummyId';
        final name = 'dummyName';
        final isCurrentTurn = true;
        final round = Round.fromData(
          targetValue: 20,
          hits: [Hit.double, Hit.missed, Hit.double],
        );
        final rounds = [round, round];

        final player = Player.fromData(
          id: id,
          name: name,
          isCurrentTurn: isCurrentTurn,
          rounds: rounds,
        );

        expect(player.singles, 0);
      });

      test(
          'GIVEN >0 singles '
          'WHEN get singles '
          'THEN return correct amount.', () {
        final id = 'dummyId';
        final name = 'dummyName';
        final isCurrentTurn = true;
        final round = Round.fromData(
          targetValue: 20,
          hits: [Hit.double, Hit.missed, Hit.single],
        );
        final rounds = [round, round];

        final player = Player.fromData(
          id: id,
          name: name,
          isCurrentTurn: isCurrentTurn,
          rounds: rounds,
        );

        expect(player.singles, 2);
      });
    });

    group('missed', () {
      test(
          'GIVEN 0 missed '
          'WHEN get missed '
          'THEN return 0.', () {
        final id = 'dummyId';
        final name = 'dummyName';
        final isCurrentTurn = true;
        final round = Round.fromData(
          targetValue: 20,
          hits: [Hit.double, Hit.triple, Hit.double],
        );
        final rounds = [round, round];

        final player = Player.fromData(
          id: id,
          name: name,
          isCurrentTurn: isCurrentTurn,
          rounds: rounds,
        );

        expect(player.missed, 0);
      });

      test(
          'GIVEN >0 missed '
          'WHEN get missed '
          'THEN return correct amount.', () {
        final id = 'dummyId';
        final name = 'dummyName';
        final isCurrentTurn = true;
        final round = Round.fromData(
          targetValue: 20,
          hits: [Hit.double, Hit.missed, Hit.single],
        );
        final rounds = [round, round];

        final player = Player.fromData(
          id: id,
          name: name,
          isCurrentTurn: isCurrentTurn,
          rounds: rounds,
        );

        expect(player.missed, 2);
      });
    });

    group('currentTargetValue', () {
      test(
          'GIVEN player with >0 rounds '
          'WHEN get currentTargetValue '
          'THEN return correct value.', () {
        final id = 'dummyId';
        final name = 'dummyName';
        final isCurrentTurn = true;
        final round = Round.fromData(
          targetValue: 1,
          hits: [Hit.double, Hit.triple, Hit.double],
        );
        final rounds = [round];

        final player = Player.fromData(
          id: id,
          name: name,
          isCurrentTurn: isCurrentTurn,
          rounds: rounds,
        );

        expect(player.currentTargetValue, 1);
      });
    });

    group('points', () {
      test(
          'GIVEN 0 points '
          'WHEN get points '
          'THEN return 0.', () {
        // Arrange
        final id = 'dummyId';
        final name = 'dummyName';
        final isCurrentTurn = true;
        final round = Round.fromData(
          targetValue: 20,
          hits: [Hit.missed, Hit.missed, Hit.missed],
        );
        final round1 = Round.fromData(
          targetValue: 10,
          hits: [Hit.missed, Hit.missed, Hit.missed],
        );
        final rounds = [round, round];

        // Act
        final player = Player.fromData(
          id: id,
          name: name,
          isCurrentTurn: isCurrentTurn,
          rounds: rounds,
        );

        // Assert
        expect(player.points, 0);
      });

      test(
          'GIVEN >0 points '
          'WHEN get points '
          'THEN return correct points.', () {
        // Arrange
        final id = 'dummyId';
        final name = 'dummyName';
        final isCurrentTurn = true;

        final round = Round.fromData(
          targetValue: 10,
          hits: [Hit.triple, Hit.double, Hit.single],
        );
        final round1 = Round.fromData(
          targetValue: 20,
          hits: [Hit.triple, Hit.double, Hit.single],
        );
        final rounds = [round, round1];

        // Act
        final player = Player.fromData(
          id: id,
          name: name,
          isCurrentTurn: isCurrentTurn,
          rounds: rounds,
        );

        // Assert
        expect(player.points, 180);
      });
    });
  });

  group('toString()', () {
    test(
        'GIVEN valid args '
        'WHEN toString() called '
        'THEN return correct string representation.', () {
      // Arrange
      final id = 'dummyId';
      final name = 'dummyName';
      final isCurrentTurn = true;
      final round = Round.fromData(
          targetValue: 20, hits: [Hit.single, Hit.missed, Hit.single]);
      final rounds = [round, round];

      // Act & Assert
      expect(
        Player.fromData(
          id: id,
          name: name,
          isCurrentTurn: isCurrentTurn,
          rounds: rounds,
        ).toString(),
        'Player{id: $id, name: $name, isCurrentTurn: $isCurrentTurn, rounds: $rounds}',
      );
    });
  });
}
