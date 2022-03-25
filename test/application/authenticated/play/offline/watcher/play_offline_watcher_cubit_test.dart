void main() {}
/**
 * import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/core/user/user_cubit.dart';
import 'package:dart_counter/application/authenticated/play/offline/watcher/play_offline_watcher_cubit.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/domain/play/offline/offline_game_snapshot.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayOfflineService extends Mock implements IPlayOfflineService {}

class MockUserCubit extends MockCubit<UserState> implements UserCubit {}

void main() {
  late MockPlayOfflineService mockPlayOfflineService;
  late MockUserCubit mockUserCubit;

  late PlayOfflineWatcherCubit underTest;

  final gameSnapshot1 = OfflineGameSnapshot.dummy();
  final gameSnapshot2 = OfflineGameSnapshot.dummy();

  setUpAll(() {
    // Mocktail related setup
    registerFallbackValue(User.dummy());
    registerFallbackValue(OfflineGameSnapshot.dummy());
  });

  setUp(() {
    mockPlayOfflineService = MockPlayOfflineService();
    mockUserCubit = MockUserCubit();

    when(
      () => mockPlayOfflineService.createGame(owner: any(named: 'owner')),
    ).thenAnswer(
      (_) => gameSnapshot1,
    );

    when(
      () => mockPlayOfflineService.watchGame(),
    ).thenAnswer(
      (_) => Stream.fromIterable([gameSnapshot2]),
    );

    final user = User.dummy();
    whenListen(mockUserCubit, Stream.value(user), initialState: user);
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test('Initial state set to current gameSnapshot of playService.', () {
        // Arrange & Act
        final underTest = PlayOfflineWatcherCubit(
          mockPlayOfflineService,
          mockUserCubit,
        );

        // Assert
        expect(underTest.state, gameSnapshot1);
      });
    });

    group('#GetIt#', () {
      test('Initial state set to current gameSnapshot of playService.', () {
        // Arrange & Act
        final underTest = PlayOfflineWatcherCubit(
          mockPlayOfflineService,
          mockUserCubit,
        );

        // Assert
        expect(underTest.state, gameSnapshot1);
      });
    
      test(
          'GIVEN PlayOfflineWatcherCubit is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => PlayOfflineWatcherCubit.getIt(mockUserCubit),
          throwsA(anything),
        );
      });

      test(
          'GIVEN PlayOfflineWatcherCubit is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance =
            PlayOfflineWatcherCubit(mockPlayOfflineService, mockUserCubit);
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = PlayOfflineWatcherCubit.getIt(mockUserCubit);

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });
  });

  blocTest<PlayOfflineWatcherCubit, OfflineGameSnapshot>(
    'Emit the snapshots received from play service.',
    build: () {
      return PlayOfflineWatcherCubit(
        mockPlayOfflineService,
        mockUserCubit,
      );
    },
    expect: () => <OfflineGameSnapshot>[gameSnapshot2],
  );
}

 */