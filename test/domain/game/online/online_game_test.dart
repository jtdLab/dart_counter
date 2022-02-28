import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/domain/game/online/online_game.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('#Methods#', () {
    group('#description#', () {
      test(
          'GIVEN mode is firstTo size is X and type is legs '
          'THEN return "FIRST TO X LEGS".', () {
        const mode = Mode.firstTo;
        const size = 11;
        const type = Type.legs;
        final onlineGame = OnlineGame.dummy().copyWith(
          mode: mode,
          size: size,
          type: type,
        );

        final underTest = onlineGame.description();

        expect(underTest, 'FIRST TO $size LEGS');
      });

      test(
          'GIVEN mode is bestOf size is X and type is sets '
          'THEN return "BEST OF X SETS".', () {
        const mode = Mode.bestOf;
        const size = 11;
        const type = Type.sets;
        final onlineGame = OnlineGame.dummy().copyWith(
          mode: mode,
          size: size,
          type: type,
        );

        final underTest = onlineGame.description();

        expect(underTest, 'BEST OF $size SETS');
      });
    });
  });
}
