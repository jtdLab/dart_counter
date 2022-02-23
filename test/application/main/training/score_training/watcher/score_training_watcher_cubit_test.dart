import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/training/score_training/watcher/score_training_watcher_cubit.dart';
import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:dart_counter/domain/training/score/score_training_game_snapshot.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockScoreTrainingService extends Mock implements IScoreTrainingService {}

void main() {
  late MockScoreTrainingService trainingService;

  final initialGameSnapshot = ScoreTrainingGameSnapshot.dummy();
  final gameSnapshots = [
    ScoreTrainingGameSnapshot.dummy(),
    ScoreTrainingGameSnapshot.dummy()
  ];

  setUp(() {
    trainingService = MockScoreTrainingService();
    when(() => trainingService.getGame()).thenReturn(initialGameSnapshot);
    when(() => trainingService.watchGame()).thenAnswer(
      (_) => Stream.fromIterable(gameSnapshots),
    );
  });

  group('#Constructors#', () {
    test('Initial state set to current game snapshot.', () {
      // Act
      final underTest = ScoreTrainingWatcherCubit(trainingService);

      // Assert
      expect(underTest.state, initialGameSnapshot);
    });

    blocTest<ScoreTrainingWatcherCubit, ScoreTrainingGameSnapshot>(
      'Emit game snapshots.',
      build: () {
        return ScoreTrainingWatcherCubit(trainingService);
      },
      expect: () => gameSnapshots,
    );
  });
}
