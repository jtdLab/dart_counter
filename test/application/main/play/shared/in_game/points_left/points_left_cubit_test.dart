import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/abstract_player_snapshot.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayWatcherCubit extends MockCubit<AbstractGameSnapshot> {}

class MockAbstractPlayerSnapshot extends Mock
    implements AbstractPlayerSnapshot {
  @override
  final int pointsLeft;

  MockAbstractPlayerSnapshot(this.pointsLeft);
}

class MockAbstractGameSnapshot extends Mock implements AbstractGameSnapshot {
  final int pointsLeftCurrentTurn;

  MockAbstractGameSnapshot(this.pointsLeftCurrentTurn);

  @override
  AbstractPlayerSnapshot currentTurn() =>
      MockAbstractPlayerSnapshot(pointsLeftCurrentTurn);
}

void main() {
  late Cubit<AbstractGameSnapshot> mockPlayWatcherCubit;

  const points = 40;

  setUp(() {
    mockPlayWatcherCubit = MockPlayWatcherCubit();
  });

  test('initial state initialized correctly', () {
    // Arrange
    final gameSnapshot = MockAbstractGameSnapshot(points);
    whenListen(
      mockPlayWatcherCubit,
      Stream.fromIterable([gameSnapshot]),
      initialState: gameSnapshot,
    );

    // Act
    final underTest = PointsLeftCubit(mockPlayWatcherCubit);

    // Assert
    expect(underTest.state, points);
  });

  test('emits value of current turn if play watcher cubit emits new snapshot',
      () {
    // Arrange
    final gameSnapshot = MockAbstractGameSnapshot(points);
    final gameSnapshot1 = MockAbstractGameSnapshot(50);
    whenListen(
      mockPlayWatcherCubit,
      Stream.fromIterable([gameSnapshot, gameSnapshot1]),
      initialState: gameSnapshot,
    );

    // Act
    final underTest = PointsLeftCubit(mockPlayWatcherCubit);

    // Assert
    expect(underTest.stream, emitsInOrder([40, 50]));
  });
}
