import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/training/score_training/in_training/detailed_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

class MockScoreTrainingService extends Mock implements IScoreTrainingService {}

class MockDartsDisplayerBloc
    extends MockBloc<DartsDisplayerEvent, DartsDisplayerState>
    implements DartsDisplayerBloc {}

void main() {
  late MockScoreTrainingService trainingService;
  late MockDartsDisplayerBloc dartsDisplayerBloc;

  setUpAll(() {
    trainingService = MockScoreTrainingService();
    dartsDisplayerBloc = MockDartsDisplayerBloc();
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test('Initial state set 0.', () {
        // Act
        final underTest = InputRowBloc(trainingService, [dartsDisplayerBloc]);

        // Assert
        expect(underTest.state, 0);
      });
    });

    group('#GetIt#', () {});

    group('#Injectable#', () {});
  });

  group('#Events#', () {
    group('#Started#', () {
      blocTest<InputRowBloc, int>(
        'GIVEN DartsDisplayerBloc emits DartsDisplayerEmpty '
        'THEN emit [0].',
        setUp: () {
          whenListen(
            dartsDisplayerBloc,
            Stream.value(const DartsDisplayerState.empty()),
          );
        },
        build: () => InputRowBloc(trainingService, [dartsDisplayerBloc]),
        act: (bloc) => bloc.add(const InputRowEvent.started()),
        expect: () => [0],
      );

      blocTest<InputRowBloc, int>(
        'GIVEN DartsDisplayerBloc emits DartsDisplayerNotEmpty with '
        '[Dart(single:1), Dart(double:1), Dart(triple:1)] '
        'THEN emit [6].',
        setUp: () {
          whenListen(
            dartsDisplayerBloc,
            Stream.value(
              DartsDisplayerState.notEmpty(
                darts: NotEmptyList(
                  [
                    const Dart(type: DartType.single, value: 1),
                    const Dart(type: DartType.double, value: 1),
                    const Dart(type: DartType.triple, value: 1),
                  ].toImmutableList(),
                ),
              ),
            ),
          );
        },
        build: () => InputRowBloc(trainingService, [dartsDisplayerBloc]),
        act: (bloc) => bloc.add(const InputRowEvent.started()),
        expect: () => [6],
      );

      blocTest<InputRowBloc, int>(
        'GIVEN DartsDisplayerBloc emits DartsDisplayerNotEmpty with '
        '[Dart(single:20), Dart(double:20), Dart(triple:20)] '
        'THEN emit [120].',
        setUp: () {
          whenListen(
            dartsDisplayerBloc,
            Stream.value(
              DartsDisplayerState.notEmpty(
                darts: NotEmptyList(
                  [
                    const Dart(type: DartType.single, value: 20),
                    const Dart(type: DartType.double, value: 20),
                    const Dart(type: DartType.triple, value: 20),
                  ].toImmutableList(),
                ),
              ),
            ),
          );
        },
        build: () => InputRowBloc(trainingService, [dartsDisplayerBloc]),
        act: (bloc) => bloc.add(const InputRowEvent.started()),
        expect: () => [120],
      );
    });

    group('#UndoThrow#', () {
      blocTest<InputRowBloc, int>(
        'Undo throw and request rest of darts displayer bloc.',
        build: () {
          return InputRowBloc(trainingService, [dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const InputRowEvent.undoPressed()),
        verify: (_) {
          verify(() => trainingService.undoThrow()).called(1);
          verify(() => dartsDisplayerBloc
              .add(const DartsDisplayerEvent.resetRequested())).called(1);
        },
      );
    });

    group('#CommitPressed#', () {
      blocTest<InputRowBloc, int>(
        'GIVEN state of DartsDisplayerBloc is DartsDisplayerEmpty '
        'THEN perform throw with empty darts, dartsOnDouble 0 and request reset of DartsDisplayerBloc.',
        setUp: () {
          when(() => dartsDisplayerBloc.state).thenReturn(
            const DartsDisplayerState.empty(),
          );
        },
        build: () {
          return InputRowBloc(trainingService, [dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const InputRowEvent.commitPressed()),
        verify: (_) {
          verify(
            () => trainingService.performThrow(
              t: Throw.fromDarts(List.empty(), 0),
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
        'THEN perform throw with darts, dartsOnDouble 0 and request reset of DartsDisplayerBloc.',
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
        build: () => InputRowBloc(trainingService, [dartsDisplayerBloc]),
        act: (bloc) => bloc.add(const InputRowEvent.commitPressed()),
        verify: (_) {
          verify(
            () => trainingService.performThrow(
              t: Throw.fromDarts(
                [
                  const Dart(type: DartType.single, value: 1),
                  const Dart(type: DartType.triple, value: 1),
                ],
                0,
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
