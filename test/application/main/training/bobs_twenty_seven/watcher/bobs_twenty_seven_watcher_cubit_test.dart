import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/training/bobs_twenty_seven/watcher/bobs_twenty_seven_watcher_cubit.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart';
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
    test('Initial state set to current game snapshot.', () {
      // Act
      final underTest = BobsTwentySevenWatcherCubit(trainingService);

      // Assert
      expect(underTest.state, initialGameSnapshot);
    });

    blocTest<BobsTwentySevenWatcherCubit, BobsTwentySevenGameSnapshot>(
      'Emit game snapshots.',
      build: () => BobsTwentySevenWatcherCubit(trainingService),
      expect: () => gameSnapshots,
    );
  });
}
