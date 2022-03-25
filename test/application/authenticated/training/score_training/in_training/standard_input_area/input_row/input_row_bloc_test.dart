import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/training/score_training/in_training/standard_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockScoreTrainingService extends Mock implements IScoreTrainingService {}

void main() {
  late MockScoreTrainingService trainingService;

  setUpAll(() {
    trainingService = MockScoreTrainingService();
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test('Initial state set 0.', () {
        // Act
        final underTest = InputRowBloc(trainingService);

        // Assert
        expect(underTest.state, 0);
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN InputRowBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(() => InputRowBloc.getIt(), throwsA(anything));
      });

      test(
          'GIVEN InputRowBloc is registered inside getIt '
          'THEN initial state set to 0.', () {
        // Arrange
        getIt.registerFactoryParam(
          (param1, _) => InputRowBloc(trainingService),
        );

        // Act
        final underTest = InputRowBloc.getIt();

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
        final registeredInstance = InputRowBloc(trainingService);
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = InputRowBloc.getIt();

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });
  });

  group('#Events#', () {
    group('#UndoThrow#', () {
      blocTest<InputRowBloc, int>(
        'Undo throw and emit [0].',
        build: () {
          return InputRowBloc(trainingService);
        },
        act: (bloc) => bloc.add(const InputRowEvent.undoPressed()),
        verify: (_) {
          verify(() => trainingService.undoThrow()).called(1);
        },
        expect: () => [0],
      );
    });

    group('#CommitPressed#', () {
      blocTest<InputRowBloc, int>(
        'GIVEN current state is 100 '
        'THEN perform throw with current points: 100, dartsThrown: 3, dartsOnDouble: 0 and emit [0].',
        build: () {
          return InputRowBloc(trainingService);
        },
        seed: () => 100,
        act: (bloc) => bloc.add(const InputRowEvent.commitPressed()),
        verify: (_) {
          verify(
            () => trainingService.performThrow(
              t: const Throw(points: 100, dartsThrown: 3, dartsOnDouble: 0),
            ),
          ).called(1);
        },
        expect: () => [0],
      );
    });

    group('#InputChanged#', () {
      blocTest<InputRowBloc, int>(
        'GIVEN incoming newInput is 88 '
        'THEN emit [88].',
        build: () {
          return InputRowBloc(trainingService);
        },
        act: (bloc) => bloc.add(const InputRowEvent.inputChanged(newInput: 88)),
        expect: () => [88],
      );
    });
  });
}
