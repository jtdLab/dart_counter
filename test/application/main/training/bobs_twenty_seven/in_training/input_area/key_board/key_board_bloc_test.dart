import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/training/bobs_twenty_seven/in_training/input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/application/authenticated/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_player_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBobsTwentySevenTrainingService extends Mock
    implements IBobsTwentySevenService {}

class MockBobsTwentySevenTrainingGameSnapshot extends Mock
    implements BobsTwentySevenGameSnapshot {}

class MockBobsTwentySevenTrainingPlayerSnapshot extends Mock
    implements BobsTwentySevenPlayerSnapshot {}

class MockDartsDisplayerBloc
    extends MockBloc<DartsDisplayerEvent, DartsDisplayerState>
    implements DartsDisplayerBloc {}

void main() {
  late MockBobsTwentySevenTrainingService bobsTwentySevenTrainingService;
  late MockBobsTwentySevenTrainingPlayerSnapshot
      bobsTwentySevenTrainingPlayerSnapshot;
  late MockBobsTwentySevenTrainingGameSnapshot
      bobsTwentySevenTrainingGameSnapshot;

  late MockDartsDisplayerBloc dartsDisplayerBloc;

  const targetValue = 1;

  setUpAll(() {
    bobsTwentySevenTrainingPlayerSnapshot =
        MockBobsTwentySevenTrainingPlayerSnapshot();
    when(() => bobsTwentySevenTrainingPlayerSnapshot.targetValue)
        .thenReturn(targetValue);
    bobsTwentySevenTrainingGameSnapshot =
        MockBobsTwentySevenTrainingGameSnapshot();
    when(() => bobsTwentySevenTrainingGameSnapshot.currentTurn())
        .thenReturn(bobsTwentySevenTrainingPlayerSnapshot);
  });

  setUp(() {
    bobsTwentySevenTrainingService = MockBobsTwentySevenTrainingService();
    dartsDisplayerBloc = MockDartsDisplayerBloc();
  });

  group('#Constructors#', () {
    group('#GetIt#', () {
      test(
          'GIVEN KeyBoardBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => KeyBoardBloc.getIt(
            dartsDisplayerBloc,
          ),
          throwsA(anything),
        );
      });

      test(
          'GIVEN KeyBoardBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = KeyBoardBloc.injectable(
          bobsTwentySevenTrainingService,
          [
            dartsDisplayerBloc,
          ],
        );
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = KeyBoardBloc.getIt(
          dartsDisplayerBloc,
        );

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });

    group('#Injectable#', () {
      test(
          'GIVEN otherDependencies is not [DartsDisplayerBloc] '
          'THEN throw error.', () {
        // Arrange
        final otherDependencies = [true];

        // Act & Assert
        expect(
          () => KeyBoardBloc.injectable(
            bobsTwentySevenTrainingService,
            otherDependencies,
          ),
          throwsA(anything),
        );
      });
    });
  });

  group('#Events#', () {
    group('#DoublePressed#', () {
      blocTest<KeyBoardBloc, void>(
        'GIVEN current turn has target value X '
        'THEN add Dart(double:X) to DartsDisplayerBloc.',
        setUp: () {
          when(
            () => bobsTwentySevenTrainingService.getGame(),
          ).thenReturn(bobsTwentySevenTrainingGameSnapshot);
        },
        build: () => KeyBoardBloc(
          bobsTwentySevenTrainingService,
          dartsDisplayerBloc,
        ),
        act: (bloc) => bloc.add(const KeyBoardEvent.doublePressed()),
        verify: (_) {
          verify(
            () => dartsDisplayerBloc.add(
              const DartsDisplayerEvent.dartAdded(
                dart: Dart(type: DartType.double, value: targetValue),
              ),
            ),
          ).called(1);
        },
      );
    });

    group('#MissedPressed#', () {
      blocTest<KeyBoardBloc, void>(
        'Add Dart(missed) to DartsDisplayerBloc.',
        build: () => KeyBoardBloc(
          bobsTwentySevenTrainingService,
          dartsDisplayerBloc,
        ),
        act: (bloc) => bloc.add(const KeyBoardEvent.missedPressed()),
        verify: (_) {
          verify(
            () => dartsDisplayerBloc.add(
              const DartsDisplayerEvent.dartAdded(dart: Dart.missed),
            ),
          ).called(1);
        },
      );
    });

    group('#EreasePressed#', () {
      blocTest<KeyBoardBloc, void>(
        'Remove last dart from DartsDisplayerBloc.',
        build: () => KeyBoardBloc(
          bobsTwentySevenTrainingService,
          dartsDisplayerBloc,
        ),
        act: (bloc) => bloc.add(const KeyBoardEvent.ereasePressed()),
        verify: (_) {
          verify(
            () =>
                dartsDisplayerBloc.add(const DartsDisplayerEvent.dartRemoved()),
          ).called(1);
        },
      );
    });
  });
}
