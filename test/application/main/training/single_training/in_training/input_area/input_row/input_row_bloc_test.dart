import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/authenticated/training/single_training/in_training/input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

class MockSingleTrainingService extends Mock implements ISingleTrainingService {
}

class MockDartsDisplayerBloc
    extends MockBloc<DartsDisplayerEvent, DartsDisplayerState>
    implements DartsDisplayerBloc {}

void main() {
  late MockSingleTrainingService singleTrainingService;
  late MockDartsDisplayerBloc dartsDisplayerBloc;

  setUp(() {
    singleTrainingService = MockSingleTrainingService();
    dartsDisplayerBloc = MockDartsDisplayerBloc();
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test('Initial state set to 0.', () {
        // Act
        final underTest = InputRowBloc(
          singleTrainingService,
          dartsDisplayerBloc,
        );

        // Assert
        expect(underTest.state, 0);
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
          'THEN initial state set to 0.', () {
        // Arrange
        getIt.registerFactoryParam(
          (param1, _) => InputRowBloc.injectable(
            singleTrainingService,
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
          0,
        );
      });

      test(
          'GIVEN InputRowBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = InputRowBloc.injectable(
          singleTrainingService,
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
            singleTrainingService,
            otherDependencies,
          ),
          throwsA(anything),
        );
      });

      test(
          'GIVEN otherDependencies is [DartsDisplayerBloc] '
          'THEN initial state set to 0.', () {
        // Arrange
        final otherDependencies = [
          dartsDisplayerBloc,
        ];

        // Act
        final underTest = InputRowBloc.injectable(
          singleTrainingService,
          otherDependencies,
        );

        // Assert
        expect(underTest.state, 0);
      });
    });
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
        build: () => InputRowBloc(singleTrainingService, dartsDisplayerBloc),
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
        build: () => InputRowBloc(singleTrainingService, dartsDisplayerBloc),
        act: (bloc) => bloc.add(const InputRowEvent.started()),
        expect: () => [6],
      );

      blocTest<InputRowBloc, int>(
        'GIVEN DartsDisplayerBloc emits DartsDisplayerNotEmpty with '
        '[Dart(single:20), Dart(double:20), Dart(triple:20)] '
        'THEN emit [6].',
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
        build: () => InputRowBloc(singleTrainingService, dartsDisplayerBloc),
        act: (bloc) => bloc.add(const InputRowEvent.started()),
        expect: () => [6],
      );
    });

    group('#UndoPressed#', () {
      blocTest<InputRowBloc, int>(
        'Undo the throw and request reset of DartsDisplayerBloc.',
        build: () => InputRowBloc(singleTrainingService, dartsDisplayerBloc),
        act: (bloc) => bloc.add(const InputRowEvent.undoPressed()),
        verify: (_) {
          verify(() => singleTrainingService.undoThrow()).called(1);
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
        build: () => InputRowBloc(singleTrainingService, dartsDisplayerBloc),
        act: (bloc) => bloc.add(const InputRowEvent.commitPressed()),
        verify: (_) {
          verify(
            () => singleTrainingService.performThrow(
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
        build: () => InputRowBloc(singleTrainingService, dartsDisplayerBloc),
        act: (bloc) => bloc.add(const InputRowEvent.commitPressed()),
        verify: (_) {
          verify(
            () => singleTrainingService.performThrow(
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
