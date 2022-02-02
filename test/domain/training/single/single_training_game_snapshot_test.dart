import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/training/mode.dart';
import 'package:dart_counter/domain/training/single/single_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/single/single_training_player_snapshot.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

void main() {
  group('currentTurn()', () {
    test(
        'GIVEN snapshot has status pending '
        'THEN throw DomainError.', () {
      // Arrange
      final snapshot =
          SingleTrainingGameSnapshot.dummy().copyWith(status: Status.pending);

      // Act & Assert
      expect(() => snapshot.currentTurn(), throwsA(isA<DomainError>()));
    });

    test(
        'GIVEN snapshot has status canceled '
        'THEN throw DomainError.', () {
      // Arrange
      final snapshot =
          SingleTrainingGameSnapshot.dummy().copyWith(status: Status.canceled);

      // Act & Assert
      expect(() => snapshot.currentTurn(), throwsA(isA<DomainError>()));
    });

    test(
        'GIVEN snapshot has status fininshed '
        'THEN throw DomainError.', () {
      // Arrange
      final snapshot =
          SingleTrainingGameSnapshot.dummy().copyWith(status: Status.finished);

      // Act & Assert
      expect(() => snapshot.currentTurn(), throwsA(isA<DomainError>()));
    });

    test(
        'GIVEN snapshot has status running '
        'THEN return the player where currentTurn is true.', () {
      // Arrange
      final owner =
          SingleTrainingPlayerSnapshot.dummy().copyWith(isCurrentTurn: false);
      final currentTurn =
          SingleTrainingPlayerSnapshot.dummy().copyWith(isCurrentTurn: true);
      final players = [owner, currentTurn];
      final snapshot = SingleTrainingGameSnapshot(
        status: Status.running,
        mode: Mode.ascending,
        players: players.toImmutableList(),
        owner: owner,
      );

      // Act
      final underTest = snapshot.currentTurn();

      // Assert
      expect(underTest, currentTurn);
    });
  });
}
