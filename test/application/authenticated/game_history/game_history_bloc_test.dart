import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/core/application_error.dart';
import 'package:dart_counter/application/authenticated/core/user/user_cubit.dart';
import 'package:dart_counter/application/authenticated/game_history/game_history_bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/abstract_game.dart';
import 'package:dart_counter/domain/game_history/game_history_failure.dart';
import 'package:dart_counter/domain/game_history/i_game_history_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

// TODO test sorting  by data better where needed

class MockGameHistoryService extends Mock implements IGameHistoryService {}

class MockUserCubit extends MockCubit<UserState> implements UserCubit {}

void main() {
  late MockGameHistoryService mockGameHistoryService;
  late MockUserCubit mockUserCubit;

  // TODO need this for better sorting test
  /**
   * final offlineGamesSortedByDate = List.generate(
    10,
    (index) => OfflineGame.dummy().copyWith(
      createdAt: DateTime(1980 + 2 * index),
    ),
  );
  final offlineGamesUnsorted = offlineGamesSortedByDate..shuffle();
  final gameHistoryOfflineSortedByDate =
      List10(offlineGamesSortedByDate.toImmutableList());
  final gameHistoryOfflineUnsorted =
      List10(offlineGamesUnsorted.toImmutableList());

  final onlineGamesSortedByDate = List.generate(
    10,
    (index) => OnlineGame.dummy().copyWith(
      createdAt: DateTime(1981 + 2 * index),
    ),
  );
  final onlineGamesUnsorted = onlineGamesSortedByDate..shuffle();
  final gameHistoryOnlineSortedByData =
      List10(onlineGamesSortedByDate.toImmutableList());
  final gameHistoryOnlineUnsorted =
      List10(onlineGamesUnsorted.toImmutableList());

  const gameHistoryFailure = GameHistoryFailure.unexpected();
   */

  final offlineGames = List.generate(
    10,
    (index) => OfflineGame.dummy().copyWith(
      createdAt: DateTime(1980 + 2 * index),
    ),
  );
  final gameHistoryOffline = List10(offlineGames.toImmutableList());
  final onlineGames = List.generate(
    10,
    (index) => OnlineGame.dummy().copyWith(
      createdAt: DateTime(1981 + 2 * index),
    ),
  );
  final gameHistoryOnline = List10(onlineGames.toImmutableList());

  const gameHistoryFailure = GameHistoryFailure.unexpected();

  setUp(() {
    mockGameHistoryService = MockGameHistoryService();
    mockUserCubit = MockUserCubit();
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test('Initial state set to GameHistoryLoadInProgress.', () {
        // Arrange & Act
        final underTest = GameHistoryBloc(
          mockGameHistoryService,
          mockUserCubit,
        );

        // Assert
        expect(
          underTest.state,
          const GameHistoryState.loadInProgress(),
        );
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN GameHistoryBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(() => GameHistoryBloc.getIt(mockUserCubit), throwsA(anything));
      });

      test(
          'GIVEN GameHistoryBloc is registered inside getIt '
          'THEN initial state set to GameHistoryLoadInProgress.', () {
        // Arrange
        getIt.registerFactoryParam(
          (param1, _) => GameHistoryBloc.injectable(
            mockGameHistoryService,
            [
              mockUserCubit,
            ],
          ),
        );

        // Act
        final underTest = GameHistoryBloc.getIt(mockUserCubit);

        // Assert
        expect(
          underTest.state,
          const GameHistoryState.loadInProgress(),
        );
      });

      test(
          'GIVEN GameHistoryBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = GameHistoryBloc.injectable(
          mockGameHistoryService,
          [
            mockUserCubit,
          ],
        );
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = GameHistoryBloc.getIt(mockUserCubit);

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });

    group('#Injectable#', () {
      test(
          'GIVEN otherDependencies is not [UserCubit] '
          'THEN throw error.', () {
        // Arrange
        final otherDependencies = ['Hallo'];

        // Act & Assert
        expect(
          () => GameHistoryBloc.injectable(
            mockGameHistoryService,
            otherDependencies,
          ),
          throwsA(anything),
        );
      });

      test(
          'GIVEN otherDependencies is [UserCubit] '
          'THEN initial state set to GameHistoryLoadInProgress.', () {
        // Arrange
        final otherDependencies = [
          mockUserCubit,
        ];

        // Act
        final underTest = GameHistoryBloc.injectable(
          mockGameHistoryService,
          otherDependencies,
        );

        // Assert
        expect(underTest.state, const GameHistoryState.loadInProgress());
      });
    });
  });

  group('#Events#', () {
    group('#FetchGameHistoryAllRequested#', () {
      setUp(() {
        when(() => mockUserCubit.state).thenReturn(
          UserState.loadSuccess(user: User.dummy()),
        );
        when(() => mockGameHistoryService.getGameHistoryOffline())
            .thenAnswer((_) async => right(gameHistoryOffline));
        when(
          () => mockGameHistoryService.getGameHistoryOnline(
            uid: any(named: 'uid'),
          ),
        ).thenAnswer((_) async => right(gameHistoryOnline));
      });

      blocTest<GameHistoryBloc, GameHistoryState>(
        'GIVEN user is not available '
        'THEN throws ApplicationError.',
        setUp: () {
          when(() => mockUserCubit.state).thenReturn(
            const UserState.loadInProgress(),
          );
        },
        build: () => GameHistoryBloc(mockGameHistoryService, mockUserCubit),
        act: (bloc) =>
            bloc.add(const GameHistoryEvent.fetchGameHistoryAllRequested()),
        errors: () => [isA<ApplicationError>()],
      );

      blocTest<GameHistoryBloc, GameHistoryState>(
        'GIVEN fetching online game history fails '
        'THEN emit GameHistoryLoadFailure.',
        setUp: () {
          when(
            () => mockGameHistoryService.getGameHistoryOnline(
              uid: any(named: 'uid'),
            ),
          ).thenAnswer((_) async => left(gameHistoryFailure));
        },
        build: () => GameHistoryBloc(mockGameHistoryService, mockUserCubit),
        act: (bloc) =>
            bloc.add(const GameHistoryEvent.fetchGameHistoryAllRequested()),
        expect: () => [
          const GameHistoryState.loadFailure(failure: gameHistoryFailure),
        ],
      );

      blocTest<GameHistoryBloc, GameHistoryState>(
        'GIVEN fetching offline game history fails '
        'THEN emit GameHistoryLoadFailure.',
        setUp: () {
          when(
            () => mockGameHistoryService.getGameHistoryOffline(),
          ).thenAnswer((_) async => left(gameHistoryFailure));
        },
        build: () => GameHistoryBloc(mockGameHistoryService, mockUserCubit),
        act: (bloc) =>
            bloc.add(const GameHistoryEvent.fetchGameHistoryAllRequested()),
        expect: () => [
          const GameHistoryState.loadFailure(failure: gameHistoryFailure),
        ],
      );

      blocTest<GameHistoryBloc, GameHistoryState>(
        'GIVEN fetching online and offline game history succeeds '
        'THEN emit GameHistoryLoadSucess with merged gameHistory containing the 10 recent game sorted by date',
        build: () => GameHistoryBloc(mockGameHistoryService, mockUserCubit),
        act: (bloc) =>
            bloc.add(const GameHistoryEvent.fetchGameHistoryAllRequested()),
        expect: () => [
          GameHistoryState.loadSuccess(
            gameHistory: List10(
              [
                onlineGames[9],
                offlineGames[9],
                onlineGames[8],
                offlineGames[8],
                onlineGames[7],
                offlineGames[7],
                onlineGames[6],
                offlineGames[6],
                onlineGames[5],
                offlineGames[5],
              ].toImmutableList(),
            ),
          ),
        ],
      );
    });

    group('#FetchGameHistoryOfflineRequested#', () {
      blocTest<GameHistoryBloc, GameHistoryState>(
        'GIVEN fetching offline game history fails '
        'THEN emit GameHistoryLoadFailure.',
        setUp: () {
          when(
            () => mockGameHistoryService.getGameHistoryOffline(),
          ).thenAnswer((_) async => left(gameHistoryFailure));
        },
        build: () => GameHistoryBloc(mockGameHistoryService, mockUserCubit),
        act: (bloc) =>
            bloc.add(const GameHistoryEvent.fetchGameHistoryOfflineRequested()),
        expect: () =>
            [const GameHistoryState.loadFailure(failure: gameHistoryFailure)],
      );

      blocTest<GameHistoryBloc, GameHistoryState>(
        'GIVEN fetching succeeds '
        'THEN emit GameHistoryLoadSucess with offline gameHistory containing the 10 recent game sorted by date.',
        setUp: () {
          when(
            () => mockGameHistoryService.getGameHistoryOffline(),
          ).thenAnswer((_) async => right(gameHistoryOffline));
        },
        build: () => GameHistoryBloc(mockGameHistoryService, mockUserCubit),
        act: (bloc) =>
            bloc.add(const GameHistoryEvent.fetchGameHistoryOfflineRequested()),
        expect: () => [
          GameHistoryState.loadSuccess(gameHistory: gameHistoryOffline),
        ],
      );
    });

    group('#FetchGameHistoryOnlineRequested#', () {
      setUp(() {
        when(() => mockUserCubit.state).thenReturn(
          UserState.loadSuccess(user: User.dummy()),
        );
        when(() => mockGameHistoryService.getGameHistoryOffline())
            .thenAnswer((_) async => right(gameHistoryOffline));
        when(
          () => mockGameHistoryService.getGameHistoryOnline(
              uid: any(named: 'uid')),
        ).thenAnswer((_) async => right(gameHistoryOnline));
      });

      blocTest<GameHistoryBloc, GameHistoryState>(
        'GIVEN user is not available '
        'THEN throw ApplicationError.',
        setUp: () {
          when(() => mockUserCubit.state).thenReturn(
            const UserState.loadInProgress(),
          );
        },
        build: () => GameHistoryBloc(mockGameHistoryService, mockUserCubit),
        act: (bloc) => bloc.add(
          const GameHistoryEvent.fetchGameHistoryOnlineRequested(),
        ),
        errors: () => [isA<ApplicationError>()],
      );

      blocTest<GameHistoryBloc, GameHistoryState>(
        'GIVEN fetching online game history fails '
        'THEN emit GameHistoryLoadFailure.',
        setUp: () {
          when(
            () => mockGameHistoryService.getGameHistoryOnline(
              uid: any(named: 'uid'),
            ),
          ).thenAnswer((_) async => left(gameHistoryFailure));
        },
        build: () => GameHistoryBloc(mockGameHistoryService, mockUserCubit),
        act: (bloc) => bloc.add(
          GameHistoryEvent.fetchGameHistoryOnlineRequested(
            userId: UniqueId.fromUniqueString('dummyId'),
          ),
        ),
        expect: () =>
            [const GameHistoryState.loadFailure(failure: gameHistoryFailure)],
      );

      blocTest<GameHistoryBloc, GameHistoryState>(
        'GIVEN fetching online game history fails '
        'THEN call fetchGameHistoryOnline with correct uid.',
        setUp: () {
          when(
            () => mockGameHistoryService.getGameHistoryOnline(
              uid: any(named: 'uid'),
            ),
          ).thenAnswer((_) async => left(gameHistoryFailure));
        },
        build: () => GameHistoryBloc(mockGameHistoryService, mockUserCubit),
        act: (bloc) => bloc.add(
          GameHistoryEvent.fetchGameHistoryOnlineRequested(
            userId: UniqueId.fromUniqueString('dummyId'),
          ),
        ),
        verify: (_) {
          verify(
            () => mockGameHistoryService.getGameHistoryOnline(uid: 'dummyId'),
          ).called(1);
        },
      );

      blocTest<GameHistoryBloc, GameHistoryState>(
        'GIVEN fetching succeeds '
        'THEN emit GameHistoryLoadSucess with online gameHistory containing the 10 recent game sorted by date.',
        build: () => GameHistoryBloc(mockGameHistoryService, mockUserCubit),
        act: (bloc) =>
            bloc.add(const GameHistoryEvent.fetchGameHistoryOnlineRequested()),
        expect: () => [
          GameHistoryState.loadSuccess(gameHistory: gameHistoryOnline),
        ],
      );
    });

    group('#GameSelected#', () {
      final selectedGame = gameHistoryOffline.getOrCrash().get(0);

      blocTest<GameHistoryBloc, GameHistoryState>(
        'GIVEN state is GameHistoryLoadSuccess '
        'THEN emit GameHistoryLoadSuccess with updated selectedGame.',
        build: () => GameHistoryBloc(mockGameHistoryService, mockUserCubit),
        seed: () =>
            GameHistoryState.loadSuccess(gameHistory: gameHistoryOffline),
        act: (bloc) =>
            bloc.add(GameHistoryEvent.gameSelected(game: selectedGame)),
        expect: () => [
          GameHistoryState.loadSuccess(
            gameHistory: gameHistoryOffline,
            selectedGame: selectedGame,
          ),
        ],
      );

      blocTest<GameHistoryBloc, GameHistoryState>(
        'GIVEN state is not GameHistoryLoadInProgress '
        'THEN do nothing.',
        build: () => GameHistoryBloc(mockGameHistoryService, mockUserCubit),
        seed: () => const GameHistoryState.loadInProgress(),
        act: (bloc) =>
            bloc.add(GameHistoryEvent.gameSelected(game: selectedGame)),
        expect: () => [],
      );

      blocTest<GameHistoryBloc, GameHistoryState>(
        'GIVEN state is not GameHistoryLoadFailure '
        'THEN do nothing.',
        build: () => GameHistoryBloc(mockGameHistoryService, mockUserCubit),
        seed: () =>
            const GameHistoryState.loadFailure(failure: gameHistoryFailure),
        act: (bloc) =>
            bloc.add(GameHistoryEvent.gameSelected(game: selectedGame)),
        expect: () => [],
      );
    });
  });
}
