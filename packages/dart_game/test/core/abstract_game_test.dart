import 'package:dart_game/core/abstract_game.dart';
import 'package:dart_game/core/abstract_player.dart';
import 'package:dart_game/core/status.dart';
import 'package:dart_game/core/throw.dart';
import 'package:flutter_test/flutter_test.dart';

/// Fake for constructor testing.
///
/// Forwards all arguments to constructor of abstract super class and mocks other fields.
class FakeAbstractGame extends AbstractGame<FakeAbstractPlayer> {
  FakeAbstractGame({
    required FakeAbstractPlayer owner,
  }) : super(owner: owner);

  FakeAbstractGame.fromData({
    required Status status,
    required List<FakeAbstractPlayer> players,
    required FakeAbstractPlayer owner,
  }) : super.fromData(status: status, players: players, owner: owner);

  @override
  bool performThrow({
    required Throw t,
  }) =>
      throw UnimplementedError();

  @override
  bool start() => throw UnimplementedError();

  @override
  bool undoThrow() => throw UnimplementedError();
}

/// Fake for testing.
///
/// Forwards all arguments to constructor of abstract super class.
class FakeAbstractPlayer extends AbstractPlayer {
  FakeAbstractPlayer({
    String? id,
    String? name,
  }) : super(id: id, name: name);

  FakeAbstractPlayer.fromData({
    String? id,
    String? name,
    bool? isCurrentTurn,
  }) : super.fromData(id: id, name: name, isCurrentTurn: isCurrentTurn);
}

void main() {
  group('constructor', () {
    group('()', () {
      test(
          'GIVEN args '
          'WHEN new instance created '
          'THEN assign props correctly.', () {
        // Arrange
        final owner = FakeAbstractPlayer();

        // Act
        final game = FakeAbstractGame(owner: owner);

        // Assert
        expect(game.owner, owner);
        expect(game.players, isNotEmpty);
        expect(game.status, Status.pending);
      });
    });

    group('fromData()', () {
      test(
          'GIVEN valid args '
          'WHEN new instance created '
          'THEN assign props correctly.', () {
        // Arrange
        final status = Status.canceled;
        final owner = FakeAbstractPlayer();
        final players = [owner, FakeAbstractPlayer()];

        // Act
        final game = FakeAbstractGame.fromData(
          status: status,
          players: players,
          owner: owner,
        );

        // Assert
        expect(game.status, status);
        expect(game.owner, owner);
        expect(game.players, players);
      });

      test(
          'GIVEN owner is not part of players args '
          'WHEN new instance created '
          'THEN throw ArgumentError.', () {
        // Arrange
        final status = Status.canceled;
        final owner = FakeAbstractPlayer();
        final players = [FakeAbstractPlayer(), FakeAbstractPlayer()];

        // Act & Assert
        expect(
          () => FakeAbstractGame.fromData(
            status: status,
            players: players,
            owner: owner,
          ),
          throwsA(isArgumentError),
        );
      });
    });
  });

  group('methods', () {
    group('addPlayer', () {
      test(
          'GIVEN pending game with <4 players '
          'WHEN addPlayer called '
          'THEN add new player.', () {
        // Arrange
        final game = FakeAbstractGame(owner: FakeAbstractPlayer());

        // Act
        game.addPlayer(player: FakeAbstractPlayer());

        // Assert
        expect(game.players.length, 2);
      });

      test(
          'GIVEN pending game with <4 players '
          'WHEN addPlayer called '
          'THEN return true.', () {
        // Arrange
        final game = FakeAbstractGame(owner: FakeAbstractPlayer());

        // Act & Assert
        expect(game.addPlayer(player: FakeAbstractPlayer()), true);
      });

      test(
          'GIVEN pending game with >3 players '
          'WHEN addPlayer called '
          'THEN dont add new player.', () {
        // Arrange
        final owner = FakeAbstractPlayer();
        final game = FakeAbstractGame.fromData(
          status: Status.pending,
          players: [
            owner,
            FakeAbstractPlayer(),
            FakeAbstractPlayer(),
            FakeAbstractPlayer(),
          ],
          owner: owner,
        );

        // Act
        game.addPlayer(player: FakeAbstractPlayer());

        // Assert
        expect(game.players.length, 4);
      });

      test(
          'GIVEN pending game with >3 players '
          'WHEN addPlayer called '
          'THEN return false.', () {
        // Arrange
        final owner = FakeAbstractPlayer();
        final game = FakeAbstractGame.fromData(
          status: Status.pending,
          players: [
            owner,
            FakeAbstractPlayer(),
            FakeAbstractPlayer(),
            FakeAbstractPlayer(),
          ],
          owner: owner,
        );

        // Act & Assert
        expect(game.addPlayer(player: FakeAbstractPlayer()), false);
      });

      test(
          'GIVEN not pending game '
          'WHEN addPlayer called '
          'THEN dont add new player.', () {
        // Arrange
        final owner = FakeAbstractPlayer();
        final game = FakeAbstractGame.fromData(
          status: Status.running,
          players: [
            owner,
          ],
          owner: owner,
        );

        // Act
        game.addPlayer(player: FakeAbstractPlayer());

        // Assert
        expect(game.players.length, 1);
      });

      test(
          'GIVEN not pending game '
          'WHEN addPlayer called '
          'THEN return false.', () {
        // Arrange
        final owner = FakeAbstractPlayer();
        final game = FakeAbstractGame.fromData(
          status: Status.running,
          players: [
            owner,
          ],
          owner: owner,
        );

        // Act & Assert
        expect(game.addPlayer(player: FakeAbstractPlayer()), false);
      });
    });

    group('removePlayer', () {
      test(
          'GIVEN pending game with >1 players '
          'WHEN removePlayer called '
          'THEN remove player.', () {
        // Arrange
        final status = Status.pending;
        final owner = FakeAbstractPlayer();
        final players = [
          FakeAbstractPlayer(),
          owner,
        ];
        final game = FakeAbstractGame.fromData(
          status: status,
          players: players,
          owner: owner,
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
        final owner = FakeAbstractPlayer();
        final players = [
          FakeAbstractPlayer(),
          owner,
        ];
        final game = FakeAbstractGame.fromData(
          status: status,
          players: players,
          owner: owner,
        );

        // Act & Assert
        expect(game.removePlayer(index: 0), true);
      });

      test(
          'GIVEN pending game with <2 players '
          'WHEN removePlayer called '
          'THEN dont remove player.', () {
        // Arrange
        final owner = FakeAbstractPlayer();
        final game = FakeAbstractGame(owner: owner);

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
        final owner = FakeAbstractPlayer();
        final game = FakeAbstractGame(owner: owner);

        // Act & Assert
        expect(game.removePlayer(index: 0), false);
      });

      test(
          'GIVEN pending game with >1 players '
          'WHEN try to remove owner '
          'THEN dont remove player.', () {
        // Arrange
        final status = Status.pending;
        final owner = FakeAbstractPlayer();
        final players = [
          owner,
          FakeAbstractPlayer(),
        ];
        final game = FakeAbstractGame.fromData(
          status: status,
          players: players,
          owner: owner,
        );

        // Act
        game.removePlayer(index: 0);

        // Assert
        expect(game.players.length, 2);
      });

      test(
          'GIVEN pending game with >1 players '
          'WHEN try to remove owner '
          'THEN return false.', () {
        // Arrange
        final status = Status.pending;
        final owner = FakeAbstractPlayer();
        final players = [
          owner,
          FakeAbstractPlayer(),
        ];
        final game = FakeAbstractGame.fromData(
          status: status,
          players: players,
          owner: owner,
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
        final owner = FakeAbstractPlayer();
        final players = [
          FakeAbstractPlayer(),
          owner,
        ];
        final game = FakeAbstractGame.fromData(
          status: status,
          players: players,
          owner: owner,
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
        final owner = FakeAbstractPlayer();
        final players = [
          FakeAbstractPlayer(),
          owner,
        ];
        final game = FakeAbstractGame.fromData(
          status: status,
          players: players,
          owner: owner,
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

        final owner = FakeAbstractPlayer();
        final player2 = FakeAbstractPlayer();

        final game = FakeAbstractGame.fromData(
          status: status,
          players: [
            owner,
            player2,
          ],
          owner: owner,
        );

        // Act
        game.reorderPlayer(oldIndex: 0, newIndex: 1);

        // Assert
        expect(game.players[0], player2);
        expect(game.players[1], owner);
      });

      test(
          'GIVEN pending game valid oldIndex, newIndex '
          'WHEN reorderPlayer called '
          'THEN return true.', () {
        // Arrange
        final status = Status.pending;

        final owner = FakeAbstractPlayer();
        final player2 = FakeAbstractPlayer();

        final game = FakeAbstractGame.fromData(
          status: status,
          players: [
            owner,
            player2,
          ],
          owner: owner,
        );

        // Act & Assert
        expect(game.reorderPlayer(oldIndex: 0, newIndex: 1), true);
      });

      test(
          'GIVEN oldIndex == newIndex '
          'WHEN reorderPlayer called '
          'THEN return false.', () {
        // Arrange
        final status = Status.pending;

        final owner = FakeAbstractPlayer();
        final player2 = FakeAbstractPlayer();

        final game = FakeAbstractGame.fromData(
          status: status,
          players: [
            owner,
            player2,
          ],
          owner: owner,
        );

        // Act & Assert
        expect(game.reorderPlayer(oldIndex: 0, newIndex: 0), false);
      });

      test(
          'GIVEN oldIndex <0 '
          'WHEN reorderPlayer called '
          'THEN return false.', () {
        // Arrange
        final status = Status.pending;

        final owner = FakeAbstractPlayer();
        final player2 = FakeAbstractPlayer();

        final game = FakeAbstractGame.fromData(
          status: status,
          players: [
            owner,
            player2,
          ],
          owner: owner,
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

        final owner = FakeAbstractPlayer();
        final player2 = FakeAbstractPlayer();

        final game = FakeAbstractGame.fromData(
          status: status,
          players: [
            owner,
            player2,
          ],
          owner: owner,
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

        final owner = FakeAbstractPlayer();
        final player2 = FakeAbstractPlayer();

        final game = FakeAbstractGame.fromData(
          status: status,
          players: [
            owner,
            player2,
          ],
          owner: owner,
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

        final owner = FakeAbstractPlayer();
        final player2 = FakeAbstractPlayer();

        final game = FakeAbstractGame.fromData(
          status: status,
          players: [
            owner,
            player2,
          ],
          owner: owner,
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

        final owner = FakeAbstractPlayer();
        final player2 = FakeAbstractPlayer();

        final game = FakeAbstractGame.fromData(
          status: status,
          players: [
            owner,
            player2,
          ],
          owner: owner,
        );

        // Act & Assert
        expect(game.reorderPlayer(oldIndex: 0, newIndex: 1), false);
      });
    });

    group('cancel', () {
      test(
          'GIVEN pending game '
          'WHEN cancel called '
          'THEN cancel game.', () {
        // Arrange
        final owner = FakeAbstractPlayer();
        final game = FakeAbstractGame(owner: owner);

        // Act
        game.cancel();

        // Assert
        expect(game.status, Status.canceled);
      });

      test(
          'GIVEN pending game '
          'WHEN cancel called '
          'THEN return true.', () {
        // Arrange
        final owner = FakeAbstractPlayer();
        final game = FakeAbstractGame(owner: owner);

        // Act & Assert
        expect(game.cancel(), true);
      });

      test(
          'GIVEN running game '
          'WHEN cancel called '
          'THEN cancel game.', () {
        // Arrange
        final owner = FakeAbstractPlayer();
        final game = FakeAbstractGame.fromData(
          status: Status.running,
          players: [
            owner,
          ],
          owner: owner,
        );

        // Act
        game.cancel();

        // Assert
        expect(game.status, Status.canceled);
      });

      test(
          'GIVEN running game '
          'WHEN cancel called '
          'THEN return true.', () {
        // Arrange
        final owner = FakeAbstractPlayer();
        final game = FakeAbstractGame.fromData(
          status: Status.running,
          players: [
            owner,
          ],
          owner: owner,
        );

        // Act & Assert
        expect(game.cancel(), true);
      });

      test(
          'GIVEN canceled game '
          'WHEN cancel called '
          'THEN return false.', () {
        // Arrange
        final owner = FakeAbstractPlayer();
        final game = FakeAbstractGame.fromData(
          status: Status.canceled,
          players: [
            owner,
          ],
          owner: owner,
        );

        // Act & Assert
        expect(game.cancel(), false);
      });

      test(
          'GIVEN finished game '
          'WHEN cancel called '
          'THEN return false.', () {
        // Arrange
        final owner = FakeAbstractPlayer();
        final game = FakeAbstractGame.fromData(
          status: Status.finished,
          players: [
            owner,
          ],
          owner: owner,
        );

        // Act & Assert
        expect(game.cancel(), false);
        expect(game.status, Status.finished);
      });
    });
  });
}
