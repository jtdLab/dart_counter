import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/domain/play/online/online_game_snapshot.dart';
import 'package:dart_counter/domain/play/online/online_player_snapshot.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

void main() {
  group('#Methods#', () {
    group('#hasDartBot#', () {
      test('Return false.', () {
        // Arrange
        final snapshot = OnlineGameSnapshot.dummy();

        // Act
        final underTest = snapshot.hasDartBot();

        // Assert
        expect(underTest, false);
      });
    });

    group('#currentTurn#', () {
      test(
          'GIVEN snapshot has status pending '
          'THEN throw DomainError.', () {
        // Arrange
        final snapshot =
            OnlineGameSnapshot.dummy().copyWith(status: Status.pending);

        // Act & Assert
        expect(() => snapshot.currentTurn(), throwsA(isA<DomainError>()));
      });

      test(
          'GIVEN snapshot has status canceled '
          'THEN throw DomainError.', () {
        // Arrange
        final snapshot =
            OnlineGameSnapshot.dummy().copyWith(status: Status.canceled);

        // Act & Assert
        expect(() => snapshot.currentTurn(), throwsA(isA<DomainError>()));
      });

      test(
          'GIVEN snapshot has status fininshed '
          'THEN throw DomainError.', () {
        // Arrange
        final snapshot =
            OnlineGameSnapshot.dummy().copyWith(status: Status.finished);

        // Act & Assert
        expect(() => snapshot.currentTurn(), throwsA(isA<DomainError>()));
      });

      test(
          'GIVEN snapshot has status running '
          'THEN return the player where currentTurn is true.', () {
        // Arrange
        final owner =
            OnlinePlayerSnapshot.dummy().copyWith(isCurrentTurn: false);
        final currentTurn =
            OnlinePlayerSnapshot.dummy().copyWith(isCurrentTurn: true);
        final players = [owner, currentTurn];
        final snapshot = OnlineGameSnapshot(
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

    group('#description#', () {
      test(
          'GIVEN mode is firstTo size is X and type is legs '
          'THEN return "FIRST TO X LEGS".', () {
        const mode = Mode.firstTo;
        const size = 11;
        const type = Type.legs;
        final onlineGameSnapshot = OnlineGameSnapshot.dummy().copyWith(
          mode: mode,
          size: size,
          type: type,
        );

        final underTest = onlineGameSnapshot.description();

        expect(underTest, 'FIRST TO $size LEGS');
      });

      test(
          'GIVEN mode is bestOf size is X and type is sets '
          'THEN return "BEST OF X SETS".', () {
        const mode = Mode.bestOf;
        const size = 11;
        const type = Type.sets;
        final onlineGameSnapshot = OnlineGameSnapshot.dummy().copyWith(
          mode: mode,
          size: size,
          type: type,
        );

        final underTest = onlineGameSnapshot.description();

        expect(underTest, 'BEST OF $size SETS');
      });
    });
  });
}
