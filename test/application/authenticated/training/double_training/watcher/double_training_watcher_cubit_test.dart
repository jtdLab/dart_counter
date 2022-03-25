import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/training/double_training/watcher/double_training_watcher_cubit.dart';
import 'package:dart_counter/domain/training/double/double_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/double/i_double_training_service.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDoubleTrainingService extends Mock implements IDoubleTrainingService {
}

void main() {
  late MockDoubleTrainingService trainingService;

  final initialGameSnapshot = DoubleTrainingGameSnapshot.dummy();
  final gameSnapshots = [
    DoubleTrainingGameSnapshot.dummy(),
    DoubleTrainingGameSnapshot.dummy()
  ];

  setUp(() {
    trainingService = MockDoubleTrainingService();
    when(() => trainingService.getGame()).thenReturn(initialGameSnapshot);
    when(() => trainingService.watchGame()).thenAnswer(
      (_) => Stream.fromIterable(gameSnapshots),
    );
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test('Initial state set to current game snapshot.', () {
        // Act
        final underTest = DoubleTrainingWatcherCubit(trainingService);

        // Assert
        expect(underTest.state, initialGameSnapshot);
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN DoubleTrainingWatcherCubit is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => DoubleTrainingWatcherCubit.getIt(),
          throwsA(anything),
        );
      });

      test(
          'GIVEN DoubleTrainingWatcherCubit is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = DoubleTrainingWatcherCubit(trainingService);
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = DoubleTrainingWatcherCubit.getIt();

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });
  });

  blocTest<DoubleTrainingWatcherCubit, DoubleTrainingGameSnapshot>(
    'Emit game snapshots.',
    build: () {
      return DoubleTrainingWatcherCubit(trainingService);
    },
    expect: () => gameSnapshots,
  );
}
