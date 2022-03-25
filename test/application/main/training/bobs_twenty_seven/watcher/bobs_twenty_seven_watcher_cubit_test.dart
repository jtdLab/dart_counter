import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/training/bobs_twenty_seven/watcher/bobs_twenty_seven_watcher_cubit.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBobsTwentySevenTrainingService extends Mock
    implements IBobsTwentySevenService {}

void main() {
  late MockBobsTwentySevenTrainingService trainingService;

  final initialGameSnapshot = BobsTwentySevenGameSnapshot.dummy();
  final gameSnapshots = [
    BobsTwentySevenGameSnapshot.dummy(),
    BobsTwentySevenGameSnapshot.dummy()
  ];

  setUp(() {
    trainingService = MockBobsTwentySevenTrainingService();
    when(() => trainingService.getGame()).thenReturn(initialGameSnapshot);
    when(() => trainingService.watchGame()).thenAnswer(
      (_) => Stream.fromIterable(gameSnapshots),
    );
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test('Initial state set to current game snapshot.', () {
        // Act
        final underTest = BobsTwentySevenWatcherCubit(trainingService);

        // Assert
        expect(underTest.state, initialGameSnapshot);
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN BobsTwentySevenWatcherCubit is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => BobsTwentySevenWatcherCubit.getIt(),
          throwsA(anything),
        );
      });

      test(
          'GIVEN BobsTwentySevenWatcherCubit is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = BobsTwentySevenWatcherCubit(trainingService);
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = BobsTwentySevenWatcherCubit.getIt();

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });
  });

  // TODO
  blocTest<BobsTwentySevenWatcherCubit, BobsTwentySevenGameSnapshot>(
    'Emit game snapshots.',
    build: () => BobsTwentySevenWatcherCubit(trainingService),
    expect: () => gameSnapshots,
  );
}
