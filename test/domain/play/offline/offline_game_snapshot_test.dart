import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/play/offline/dartbot_snapshot.dart';
import 'package:dart_counter/domain/play/offline/offline_game_snapshot.dart';
import 'package:dart_counter/domain/play/offline/offline_player_snapshot.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

void main() {
  group('hasDartBot()', () {
    test(
        'GIVEN snapshot with a dartbot '
        'THEN return true.', () {
      // Arrange
      final owner =
          OfflinePlayerSnapshot.dummy().copyWith(isCurrentTurn: false);
      final dartBot = DartBotSnapshot.dummy().copyWith(isCurrentTurn: true);
      final players = [owner, dartBot];
      final snapshot = OfflineGameSnapshot(
        status: Status.running,
        mode: Mode.firstTo,
        size: 5,
        type: Type.legs,
        startingPoints: 301,
        players: players.toImmutableList(),
      );

      // Act
      final underTest = snapshot.hasDartBot();

      // Assert
      expect(underTest, true);
    });

    test(
        'GIVEN snapshot without a dartbot '
        'THEN return true.', () {
      // Arrange
      final owner =
          OfflinePlayerSnapshot.dummy().copyWith(isCurrentTurn: false);
      final players = [owner];
      final snapshot = OfflineGameSnapshot(
        status: Status.running,
        mode: Mode.firstTo,
        size: 5,
        type: Type.legs,
        startingPoints: 301,
        players: players.toImmutableList(),
      );

      // Act
      final underTest = snapshot.hasDartBot();

      // Assert
      expect(underTest, false);
    });
  });

  group('currentTurn()', () {
    test(
        'GIVEN snapshot has status pending '
        'THEN throw DomainError.', () {
      // Arrange
      final snapshot =
          OfflineGameSnapshot.dummy().copyWith(status: Status.pending);

      // Act & Assert
      expect(() => snapshot.currentTurn(), throwsA(isA<DomainError>()));
    });

    test(
        'GIVEN snapshot has status canceled '
        'THEN throw DomainError.', () {
      // Arrange
      final snapshot =
          OfflineGameSnapshot.dummy().copyWith(status: Status.canceled);

      // Act & Assert
      expect(() => snapshot.currentTurn(), throwsA(isA<DomainError>()));
    });

    test(
        'GIVEN snapshot has status fininshed '
        'THEN throw DomainError.', () {
      // Arrange
      final snapshot =
          OfflineGameSnapshot.dummy().copyWith(status: Status.finished);

      // Act & Assert
      expect(() => snapshot.currentTurn(), throwsA(isA<DomainError>()));
    });

    test(
        'GIVEN snapshot has status running '
        'THEN return the player where currentTurn is true.', () {
      // Arrange
      final owner =
          OfflinePlayerSnapshot.dummy().copyWith(isCurrentTurn: false);
      final currentTurn =
          OfflinePlayerSnapshot.dummy().copyWith(isCurrentTurn: true);
      final players = [owner, currentTurn];
      final snapshot = OfflineGameSnapshot(
        status: Status.running,
        mode: Mode.firstTo,
        size: 5,
        type: Type.legs,
        startingPoints: 301,
        players: players.toImmutableList(),
      );

      // Act
      final underTest = snapshot.currentTurn();

      // Assert
      expect(underTest, currentTurn);
    });
  });

  group('description()', () {
    // TODO test
  });
}
