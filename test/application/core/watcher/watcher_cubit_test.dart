import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/core/watcher/watcher_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('initial state set to the initial state passed via constructor', () {
    // Arrange
    const initialState = 88;

    // Act
    final underTest = WatcherCubit(initialState, const Stream.empty());

    // Assert
    expect(underTest.state, initialState);
  });

  blocTest<WatcherCubit<int>, int>(
    'emits same elements as the stream that was passed via constructor',
    build: () {
      return WatcherCubit(0, Stream.fromIterable([1, 2, 3]));
    },
    expect: () => [1, 2, 3],
  );
}
