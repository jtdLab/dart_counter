import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_player_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/mode.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

void main() {
  group('currentTurn()', () {
    test(
        'GIVEN snapshot has status pending '
        'THEN throw DomainError.', () {
      // Arrange
      final snapshot =
          BobsTwentySevenGameSnapshot.dummy().copyWith(status: Status.pending);

      // Act & Assert
      expect(() => snapshot.currentTurn(), throwsA(isA<DomainError>()));
    });

    test(
        'GIVEN snapshot has status canceled '
        'THEN throw DomainError.', () {
      // Arrange
      final snapshot =
          BobsTwentySevenGameSnapshot.dummy().copyWith(status: Status.canceled);

      // Act & Assert
      expect(() => snapshot.currentTurn(), throwsA(isA<DomainError>()));
    });

    test(
        'GIVEN snapshot has status fininshed '
        'THEN throw DomainError.', () {
      // Arrange
      final snapshot =
          BobsTwentySevenGameSnapshot.dummy().copyWith(status: Status.finished);

      // Act & Assert
      expect(() => snapshot.currentTurn(), throwsA(isA<DomainError>()));
    });

    test(
        'GIVEN snapshot has status running '
        'THEN return the player where currentTurn is true.', () {
      // Arrange
      final owner =
          BobsTwentySevenPlayerSnapshot.dummy().copyWith(isCurrentTurn: false);
      final currentTurn =
          BobsTwentySevenPlayerSnapshot.dummy().copyWith(isCurrentTurn: true);
      final players = [owner, currentTurn];
      final snapshot = BobsTwentySevenGameSnapshot(
        status: Status.running,
        mode: Mode.easy,
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
