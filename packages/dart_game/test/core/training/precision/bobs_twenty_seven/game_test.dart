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
    group('start()', () {
      // TODO
    });

    group('performThrow()', () {
      // TODO
    });

    group('undoThrow()', () {
      // TODO
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
