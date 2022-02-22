import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/core/application_error.dart';
import 'package:dart_counter/application/main/game_history/game_history_bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/abstract_game.dart';
import 'package:dart_counter/domain/game_history/game_history_failure.dart';
import 'package:dart_counter/domain/game_history/i_game_history_service.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

class MockUserService extends Mock implements IUserService {}

class MockGameHistoryService extends Mock implements IGameHistoryService {}

void main() {
  late MockUserService mockUserService;
  late MockGameHistoryService mockGameHistoryService;

  final offlineGames = List.generate(
    10,
    (index) => OfflineGame.dummy().copyWith(
      createdAt: DateTime(1980 + 2 * index),
    ),
  );
  final gameHistoryOffline = List10(
    offlineGames.toImmutableList(),
  );
  final onlineGames = List.generate(
    10,
    (index) => OnlineGame.dummy().copyWith(
      createdAt: DateTime(1981 + 2 * index),
    ),
  );
  final gameHistoryOnline = List10(onlineGames.toImmutableList());

  const gameHistoryFailure = GameHistoryFailure.unexpected();

  setUp(() {
    mockUserService = MockUserService();
    mockGameHistoryService = MockGameHistoryService();

    when(() => mockUserService.getUser()).thenReturn(right(User.dummy()));
    when(() => mockGameHistoryService.getGameHistoryOffline())
        .thenAnswer((_) async => right(gameHistoryOffline));
    when(
      () => mockGameHistoryService.getGameHistoryOnline(
        uid: any(named: 'uid'),
      ),
    ).thenAnswer((_) async => right(gameHistoryOnline));
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test('Initial state set to GameHistoryLoadInProgress.', () {
        // Arrange & Act
        final underTest = GameHistoryBloc(
          mockUserService,
          mockGameHistoryService,
        );

        // Assert
        expect(
          underTest.state,
          const GameHistoryState.loadInProgress(),
        );
      });
    });

    group('#GetIt#', () {});

    group('#Injectable#', () {});
  });

  group('#Events#', () {
    group('FetchGameHistoryAllRequested', () {
      blocTest<GameHistoryBloc, GameHistoryState>(
        'GIVEN user is not available '
        'THEN throws ApplicationError.',
        setUp: () {
          when(() => mockUserService.getUser())
              .thenReturn(left(const UserFailure.unableToLoadData()));
        },
        build: () => GameHistoryBloc(mockUserService, mockGameHistoryService),
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
        build: () => GameHistoryBloc(mockUserService, mockGameHistoryService),
        act: (bloc) =>
            bloc.add(const GameHistoryEvent.fetchGameHistoryAllRequested()),
        expect: () =>
            [const GameHistoryState.loadFailure(failure: gameHistoryFailure)],
      );

      blocTest<GameHistoryBloc, GameHistoryState>(
        'GIVEN fetching offline game history fails '
        'THEN emit GameHistoryLoadFailure.',
        setUp: () {
          when(
            () => mockGameHistoryService.getGameHistoryOffline(),
          ).thenAnswer((_) async => left(gameHistoryFailure));
        },
        build: () => GameHistoryBloc(mockUserService, mockGameHistoryService),
        act: (bloc) =>
            bloc.add(const GameHistoryEvent.fetchGameHistoryAllRequested()),
        expect: () =>
            [const GameHistoryState.loadFailure(failure: gameHistoryFailure)],
      );

// TODO test sorting better
      blocTest<GameHistoryBloc, GameHistoryState>(
        'GIVEN fetching online and offline game history succeeds '
        'THEN emit GameHistoryLoadSucess with merged gameHistory containing the 10 recent game sorted by date',
        build: () => GameHistoryBloc(mockUserService, mockGameHistoryService),
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

    group('FetchGameHistoryOfflineRequested', () {
      blocTest<GameHistoryBloc, GameHistoryState>(
        'GIVEN fetching offline game history fails '
        'THEN emit GameHistoryLoadFailure.',
        setUp: () {
          when(
            () => mockGameHistoryService.getGameHistoryOffline(),
          ).thenAnswer((_) async => left(gameHistoryFailure));
        },
        build: () => GameHistoryBloc(mockUserService, mockGameHistoryService),
        act: (bloc) =>
            bloc.add(const GameHistoryEvent.fetchGameHistoryOfflineRequested()),
        expect: () =>
            [const GameHistoryState.loadFailure(failure: gameHistoryFailure)],
      );

      // TODO test sorting better
      blocTest<GameHistoryBloc, GameHistoryState>(
        'GIVEN fetching succeeds '
        'THEN emit GameHistoryLoadSucess with offline gameHistory containing the 10 recent game sorted by date.',
        build: () => GameHistoryBloc(mockUserService, mockGameHistoryService),
        act: (bloc) =>
            bloc.add(const GameHistoryEvent.fetchGameHistoryOfflineRequested()),
        expect: () => [
          GameHistoryState.loadSuccess(gameHistory: gameHistoryOffline),
        ],
      );
    });

    group('FetchGameHistoryOnlineRequested', () {
      blocTest<GameHistoryBloc, GameHistoryState>(
        'GIVEN userId is null and fetching user fails '
        'THEN throw ApplicationError.',
        setUp: () {
          when(
            () => mockUserService.getUser(),
          ).thenReturn(left(const UserFailure.unableToLoadData()));
        },
        build: () => GameHistoryBloc(mockUserService, mockGameHistoryService),
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
        build: () => GameHistoryBloc(mockUserService, mockGameHistoryService),
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
        build: () => GameHistoryBloc(mockUserService, mockGameHistoryService),
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

      // TODO test sorting better
      blocTest<GameHistoryBloc, GameHistoryState>(
        'GIVEN fetching succeeds '
        'THEN emit GameHistoryLoadSucess with online gameHistory containing the 10 recent game sorted by date.',
        build: () => GameHistoryBloc(mockUserService, mockGameHistoryService),
        act: (bloc) =>
            bloc.add(const GameHistoryEvent.fetchGameHistoryOnlineRequested()),
        expect: () => [
          GameHistoryState.loadSuccess(gameHistory: gameHistoryOnline),
        ],
      );
    });

    group('GameSelected', () {
      final selectedGame = OfflineGame.dummy();

      blocTest<GameHistoryBloc, GameHistoryState>(
        'GIVEN state is GameHistoryLoadSuccess '
        'THEN emit GameHistoryLoadSuccess with updated selectedGame.',
        build: () => GameHistoryBloc(mockUserService, mockGameHistoryService),
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
        'GIVEN state is not GameHistoryLoadSuccess '
        'THEN do nothing.',
        build: () => GameHistoryBloc(mockUserService, mockGameHistoryService),
        seed: () => const GameHistoryState.loadInProgress(),
        act: (bloc) =>
            bloc.add(GameHistoryEvent.gameSelected(game: selectedGame)),
        expect: () => [],
      );
    });
  });
}
