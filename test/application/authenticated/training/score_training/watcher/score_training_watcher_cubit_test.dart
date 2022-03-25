import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/training/score_training/watcher/score_training_watcher_cubit.dart';
import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:dart_counter/domain/training/score/score_training_game_snapshot.dart';
import 'package:dart_counter/injection.dart';
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
    group('#Standard#', () {
      test('Initial state set to current game snapshot.', () {
        // Act
        final underTest = ScoreTrainingWatcherCubit(trainingService);

        // Assert
        expect(underTest.state, initialGameSnapshot);
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN ScoreTrainingWatcherCubit is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => ScoreTrainingWatcherCubit.getIt(),
          throwsA(anything),
        );
      });

      test(
          'GIVEN ScoreTrainingWatcherCubit is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = ScoreTrainingWatcherCubit(trainingService);
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = ScoreTrainingWatcherCubit.getIt();

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });
  });

  // TODO
  blocTest<ScoreTrainingWatcherCubit, ScoreTrainingGameSnapshot>(
    'Emit game snapshots.',
    build: () {
      return ScoreTrainingWatcherCubit(trainingService);
    },
    expect: () => gameSnapshots,
  );
}
