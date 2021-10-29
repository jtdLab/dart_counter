import 'package:dart_game/core/abstract_player.dart';
import 'package:flutter_test/flutter_test.dart';

/// Fake for constructor for testing.
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
          'GIVEN all args possible null '
          'WHEN new instance created '
          'THEN assign props correctly.', () {
        // Arrange + Act
        final player = FakeAbstractPlayer();

        // Assert
        expect(player.id, isNotNull);
        expect(player.name, null);
        expect(player.isCurrentTurn, null);
      });

      test(
          'GIVEN all args possible not null '
          'WHEN new instance created '
          'THEN assign props correctly.', () {
        // Arrange
        final id = 'dummyId';
        final name = 'dummyName';

        // Act
        final player = FakeAbstractPlayer(id: id, name: name);

        // Assert
        expect(player.id, id);
        expect(player.name, name);
        expect(player.isCurrentTurn, null);
      });
    });

    group('fromData()', () {
      test(
          'GIVEN all args possible null '
          'WHEN new instance created '
          'THEN assign props correctly.', () {
        // Arrange + Act
        final player = FakeAbstractPlayer.fromData();

        // Assert
        expect(player.id, isNotNull);
        expect(player.name, null);
        expect(player.isCurrentTurn, null);
      });

      test(
          'GIVEN all args possible not null '
          'WHEN new instance created '
          'THEN assign props correctly.', () {
        // Arrange
        final id = 'dummyId';
        final name = 'dummyName';
        final isCurrentTurn = false;

        // Act
        final player = FakeAbstractPlayer.fromData(
          id: id,
          name: name,
          isCurrentTurn: isCurrentTurn,
        );

        // Assert
        expect(player.id, id);
        expect(player.name, name);
        expect(player.isCurrentTurn, isCurrentTurn);
      });
    });
  });

  group('==', () {
    test(
        'GIVEN 2 players with same id'
        'WHEN == called '
        'THEN return true.', () {
      // Arrange
      final player1 = FakeAbstractPlayer(id: 'dummyId1', name: 'dummyName1');
      final player2 = FakeAbstractPlayer(id: 'dummyId1', name: 'dummyName2');

      // Act & Assert
      expect(player1 == player2, true);
    });

    test(
        'GIVEN 2 players with not same id'
        'WHEN == called '
        'THEN return false.', () {
      // Arrange
      final player1 = FakeAbstractPlayer(id: 'dummyId1', name: 'dummyName1');
      final player2 = FakeAbstractPlayer(id: 'dummyId2', name: 'dummyName2');

      // Act & Assert
      expect(player1 == player2, false);
    });
  });

  group('hashCode', () {
    test(
        'GIVEN - '
        'WHEN get hashCode '
        'THEN return the hashcode of the id.', () {
      // Arrange
      final player1 = FakeAbstractPlayer(id: 'dummyId1', name: 'dummyName1');

      // Act & Assert
      expect(player1.hashCode, 'dummyId1'.hashCode);
    });
  });
}
