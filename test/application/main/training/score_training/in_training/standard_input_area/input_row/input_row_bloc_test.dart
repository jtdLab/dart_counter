import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/training/score_training/in_training/standard_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockScoreTrainingService extends Mock implements IScoreTrainingService {}

void main() {
  late MockScoreTrainingService trainingService;

  setUpAll(() {
    trainingService = MockScoreTrainingService();
  });

  test('Initial state set 0.', () {
    // Act
    final underTest = InputRowBloc(trainingService);

    // Assert
    expect(underTest.state, 0);
  });

  group('UndoThrow', () {
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

  group('CommitPressed', () {
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

  group('InputChanged', () {
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
}
