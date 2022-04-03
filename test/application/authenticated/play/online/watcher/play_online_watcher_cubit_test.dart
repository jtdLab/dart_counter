void main() {}
/**
 * import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/play/online/watcher/play_online_watcher_cubit.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/domain/play/online/online_game_snapshot.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// TODO blackbox testing atm but move to inherited testing in future

class MockPlayOfflineService extends Mock implements IPlayOnlineService {}

void main() {
  setUpAll(() {
    // Mocktail related setup
    registerFallbackValue(User.dummy());
    registerFallbackValue(OnlineGameSnapshot.dummy());
  });

  late MockPlayOfflineService mockPlayOnlineService;

  final gameSnapshot1 = OnlineGameSnapshot.dummy();
  final gameSnapshot2 = OnlineGameSnapshot.dummy();

  setUp(() {
    mockPlayOnlineService = MockPlayOfflineService();

    when(
      () => mockPlayOnlineService.getGame(),
    ).thenAnswer(
      (_) => gameSnapshot1,
    );

    when(
      () => mockPlayOnlineService.watchGame(),
    ).thenAnswer(
      (_) => Stream.fromIterable([gameSnapshot2]),
    );
  });

  test('Initial state set to current gameSnapshot of playService.', () {
    // Arrange & Act
    final underTest = PlayOnlineWatcherCubit(
      mockPlayOnlineService,
    );

    // Assert
    expect(underTest.state, gameSnapshot1);
  });

  blocTest<PlayOnlineWatcherCubit, OnlineGameSnapshot>(
    'Emit the snapshots received from play service.',
    build: () {
      return PlayOnlineWatcherCubit(
        mockPlayOnlineService,
      );
    },
    expect: () => <OnlineGameSnapshot>[gameSnapshot2],
  );
}

 */
