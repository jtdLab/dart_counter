import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/training/bobs_twenty_seven/in_training/input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/authenticated/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_player_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
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

  late int targetValue;

  void setTargetValue(int newTargetValue) {
    targetValue = newTargetValue;

    when(() => bobsTwentySevenTrainingPlayerSnapshot.targetValue)
        .thenReturn(targetValue);
    when(() => bobsTwentySevenTrainingGameSnapshot.currentTurn())
        .thenReturn(bobsTwentySevenTrainingPlayerSnapshot);
    when(
      () => bobsTwentySevenTrainingService.getGame(),
    ).thenReturn(bobsTwentySevenTrainingGameSnapshot);
  }

  setUpAll(() {
    bobsTwentySevenTrainingPlayerSnapshot =
        MockBobsTwentySevenTrainingPlayerSnapshot();
    bobsTwentySevenTrainingGameSnapshot =
        MockBobsTwentySevenTrainingGameSnapshot();
  });

  setUp(() {
    bobsTwentySevenTrainingService = MockBobsTwentySevenTrainingService();
    dartsDisplayerBloc = MockDartsDisplayerBloc();

    setTargetValue(1);
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test('Initial state set to -2 times the target value of current turn.',
          () {
        // Act
        final underTest = InputRowBloc(
          bobsTwentySevenTrainingService,
          dartsDisplayerBloc,
        );

        // Assert
        expect(underTest.state, -2 * targetValue);
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN InputRowBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(() => InputRowBloc.getIt(dartsDisplayerBloc), throwsA(anything));
      });

      test(
          'GIVEN InputRowBloc is registered inside getIt '
          'THEN initial state set to -2 times the target value of current turn.',
          () {
        // Arrange
        getIt.registerFactoryParam(
          (param1, _) => InputRowBloc.injectable(
            bobsTwentySevenTrainingService,
            [
              dartsDisplayerBloc,
            ],
          ),
        );

        // Act
        final underTest = InputRowBloc.getIt(dartsDisplayerBloc);

        // Assert
        expect(
          underTest.state,
          -2 * targetValue,
        );
      });

      test(
          'GIVEN InputRowBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = InputRowBloc.injectable(
          bobsTwentySevenTrainingService,
          [
            dartsDisplayerBloc,
          ],
        );
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = InputRowBloc.getIt(dartsDisplayerBloc);

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        // Reset DI-container
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
          () => InputRowBloc.injectable(
            bobsTwentySevenTrainingService,
            otherDependencies,
          ),
          throwsA(anything),
        );
      });

      test(
          'GIVEN otherDependencies is [DartsDisplayerBloc] '
          'THEN initial state set to -2 times the target value of current turn.',
          () {
        // Arrange
        final otherDependencies = [
          dartsDisplayerBloc,
        ];

        // Act
        final underTest = InputRowBloc.injectable(
          bobsTwentySevenTrainingService,
          otherDependencies,
        );

        // Assert
        expect(underTest.state, -2 * targetValue);
      });
    });
  });

  group('#Events#', () {
    group('#Started#', () {
      blocTest<InputRowBloc, int>(
        'GIVEN DartsDisplayerBloc emits DartsDisplayerEmpty '
        'THEN emit [-2 times the target value of curernt turn].',
        setUp: () {
          whenListen(
            dartsDisplayerBloc,
            Stream.value(const DartsDisplayerState.empty()),
          );
        },
        build: () => InputRowBloc(
          bobsTwentySevenTrainingService,
          dartsDisplayerBloc,
        ),
        act: (bloc) => bloc.add(const InputRowEvent.started()),
        expect: () => [-2 * targetValue],
      );

      blocTest<InputRowBloc, int>(
        'GIVEN target value of current turn is 1 '
        'GIVEN DartsDisplayerBloc emits DartsDisplayerNotEmpty with '
        '[Dart(missed), Dart(double:1), Dart(double:1)] '
        'THEN emit [4].',
        setUp: () {
          whenListen(
            dartsDisplayerBloc,
            Stream.value(
              DartsDisplayerState.notEmpty(
                darts: NotEmptyList(
                  [
                    Dart.missed,
                    const Dart(type: DartType.double, value: 1),
                    const Dart(type: DartType.double, value: 1),
                  ].toImmutableList(),
                ),
              ),
            ),
          );
        },
        build: () => InputRowBloc(
          bobsTwentySevenTrainingService,
          dartsDisplayerBloc,
        ),
        act: (bloc) => bloc.add(const InputRowEvent.started()),
        expect: () => [4],
      );

      blocTest<InputRowBloc, int>(
        'GIVEN target value of current turn is 20 '
        'GIVEN DartsDisplayerBloc emits DartsDisplayerNotEmpty with '
        '[Dart(double:20), Dart(double:20), Dart(double:20)] '
        'THEN emit [120].',
        setUp: () {
          setTargetValue(20);
          whenListen(
            dartsDisplayerBloc,
            Stream.value(
              DartsDisplayerState.notEmpty(
                darts: NotEmptyList(
                  [
                    const Dart(type: DartType.double, value: 20),
                    const Dart(type: DartType.double, value: 20),
                    const Dart(type: DartType.double, value: 20),
                  ].toImmutableList(),
                ),
              ),
            ),
          );
        },
        build: () => InputRowBloc(
          bobsTwentySevenTrainingService,
          dartsDisplayerBloc,
        ),
        act: (bloc) => bloc.add(const InputRowEvent.started()),
        expect: () => [120],
      );

      blocTest<InputRowBloc, int>(
        'GIVEN DartsDisplayerBloc emits DartsDisplayerNotEmpty with only Dart(missed) '
        'THEN emit [-2 times the target value of curernt turn].',
        setUp: () {
          whenListen(
            dartsDisplayerBloc,
            Stream.value(
              DartsDisplayerState.notEmpty(
                darts: NotEmptyList(
                  [
                    Dart.missed,
                    Dart.missed,
                  ].toImmutableList(),
                ),
              ),
            ),
          );
        },
        build: () => InputRowBloc(
          bobsTwentySevenTrainingService,
          dartsDisplayerBloc,
        ),
        act: (bloc) => bloc.add(const InputRowEvent.started()),
        expect: () => [-2 * targetValue],
      );
    });

    group('#UndoPressed#', () {
      blocTest<InputRowBloc, int>(
        'Undo the throw, emit -2 times the target value of next curernt turn and '
        'and request reset of DartsDisplayerBloc.',
        setUp: () {
          setTargetValue(3);
        },
        build: () => InputRowBloc(
          bobsTwentySevenTrainingService,
          dartsDisplayerBloc,
        ),
        act: (bloc) => bloc.add(const InputRowEvent.undoPressed()),
        expect: () => [-2 * targetValue],
        verify: (_) {
          verify(() => bobsTwentySevenTrainingService.undoThrow()).called(1);
          verify(
            () => dartsDisplayerBloc.add(
              const DartsDisplayerEvent.resetRequested(),
            ),
          ).called(1);
        },
      );
    });

// TODO filling of darts
    group('#CommitPressed#', () {
      blocTest<InputRowBloc, int>(
        'GIVEN state of DartsDisplayerBloc is DartsDisplayerEmpty '
        'THEN perform throw with empty darts and request reset of DartsDisplayerBloc.',
        setUp: () {
          when(() => dartsDisplayerBloc.state).thenReturn(
            const DartsDisplayerState.empty(),
          );
        },
        build: () => InputRowBloc(
          bobsTwentySevenTrainingService,
          dartsDisplayerBloc,
        ),
        act: (bloc) => bloc.add(const InputRowEvent.commitPressed()),
        verify: (_) {
          verify(
            () => bobsTwentySevenTrainingService.performThrow(
              t: Throw.fromDarts(List.empty(), 3),
            ),
          ).called(1);
          verify(
            () => dartsDisplayerBloc.add(
              const DartsDisplayerEvent.resetRequested(),
            ),
          ).called(1);
        },
      );

      blocTest<InputRowBloc, int>(
        'GIVEN state of DartsDisplayerBloc is DartsDisplayerNotEmpty '
        'THEN perform throw with darts and request reset of DartsDisplayerBloc.',
        setUp: () {
          when(() => dartsDisplayerBloc.state).thenReturn(
            DartsDisplayerState.notEmpty(
              darts: NotEmptyList(
                [
                  const Dart(type: DartType.single, value: 1),
                  const Dart(type: DartType.triple, value: 1),
                ].toImmutableList(),
              ),
            ),
          );
        },
        build: () => InputRowBloc(
          bobsTwentySevenTrainingService,
          dartsDisplayerBloc,
        ),
        act: (bloc) => bloc.add(const InputRowEvent.commitPressed()),
        verify: (_) {
          verify(
            () => bobsTwentySevenTrainingService.performThrow(
              t: Throw.fromDarts(
                [
                  const Dart(type: DartType.single, value: 1),
                  const Dart(type: DartType.triple, value: 1),
                ],
                3,
              ),
            ),
          ).called(1);
          verify(
            () => dartsDisplayerBloc.add(
              const DartsDisplayerEvent.resetRequested(),
            ),
          ).called(1);
        },
      );
    });
  });
}
