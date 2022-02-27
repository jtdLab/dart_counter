import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/training/single_training/watcher/single_training_watcher_cubit.dart';
import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:dart_counter/domain/training/single/single_training_game_snapshot.dart';
import 'package:dart_counter/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSingleTrainingService extends Mock implements ISingleTrainingService {
}

void main() {
  late MockSingleTrainingService trainingService;

  final initialGameSnapshot = SingleTrainingGameSnapshot.dummy();
  final gameSnapshots = [
    SingleTrainingGameSnapshot.dummy(),
    SingleTrainingGameSnapshot.dummy()
  ];

  setUp(() {
    trainingService = MockSingleTrainingService();
    when(() => trainingService.getGame()).thenReturn(initialGameSnapshot);
    when(() => trainingService.watchGame()).thenAnswer(
      (_) => Stream.fromIterable(gameSnapshots),
    );
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test('Initial state set to current game snapshot.', () {
        // Act
        final underTest = SingleTrainingWatcherCubit(trainingService);

        // Assert
        expect(underTest.state, initialGameSnapshot);
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN SingleTrainingWatcherCubit is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => SingleTrainingWatcherCubit.getIt(),
          throwsA(anything),
        );
      });

      test(
          'GIVEN SingleTrainingWatcherCubit is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = SingleTrainingWatcherCubit(trainingService);
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = SingleTrainingWatcherCubit.getIt();

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });
  });

  // TODO
  blocTest<SingleTrainingWatcherCubit, SingleTrainingGameSnapshot>(
    'Emit game snapshots.',
    build: () {
      return SingleTrainingWatcherCubit(trainingService);
    },
    expect: () => gameSnapshots,
  );
}
