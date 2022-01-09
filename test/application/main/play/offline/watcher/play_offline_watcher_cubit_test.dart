import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/offline/watcher/play_offline_watcher_cubit.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/domain/play/offline/offline_game_snapshot.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayOfflineService extends Mock implements IPlayOfflineService {}

class MockUserService extends Mock implements IUserService {}

void main() {
  setUpAll(() {
    // mocktail related setup
    registerFallbackValue(User.dummy());
    registerFallbackValue(OfflineGameSnapshot.dummy());
  });

  late MockPlayOfflineService mockPlayOfflineService;
  late MockUserService mockUserService;

  final gameSnapshot1 = OfflineGameSnapshot.dummy();
  final gameSnapshot2 = OfflineGameSnapshot.dummy();

  setUp(() {
    mockPlayOfflineService = MockPlayOfflineService();
    mockUserService = MockUserService();

    when<OfflineGameSnapshot>(
      () => mockPlayOfflineService.createGame(owner: any(named: 'owner')),
    ).thenAnswer(
      (_) => gameSnapshot1,
    );

    when<Stream<OfflineGameSnapshot>>(
      () => mockPlayOfflineService.watchGame(),
    ).thenAnswer(
      (_) => Stream.fromIterable([gameSnapshot2]),
    );

    when<Either<UserFailure, User>>(
      () => mockUserService.getUser(),
    ).thenAnswer(
      (_) => right(User.dummy()),
    );
  });

  test('initial state initialized correctly', () {
    // Arrange & Act
    final underTest = PlayOfflineWatcherCubit(
      mockPlayOfflineService,
      mockUserService,
    );

    // Assert
    expect(underTest.state, gameSnapshot1);
  });

  blocTest<PlayOfflineWatcherCubit, OfflineGameSnapshot>(
    'emits the snapshots received from play service.',
    build: () {
      return PlayOfflineWatcherCubit(
        mockPlayOfflineService,
        mockUserService,
      );
    },
    expect: () => <OfflineGameSnapshot>[gameSnapshot2],
  );
}
