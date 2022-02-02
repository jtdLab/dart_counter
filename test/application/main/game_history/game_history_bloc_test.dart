void main() {
  // TODO impl
  // old tests are good but some problems with list10 appeared
}

/**
 * import 'package:bloc_test/bloc_test.dart';
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

  final gameHistoryOffline = List10(
    List.generate(
      11,
      (index) => OfflineGame.dummy().copyWith(
        createdAt: DateTime(1980 + 2 * index),
      ),
    ).toImmutableList(),
  );
  final gameHistoryOnline = List10(
    List.generate(
      11,
      (index) => OnlineGame.dummy().copyWith(
        createdAt: DateTime(1981 + 2 * index),
      ),
    ).toImmutableList(),
  );
  const gameHistoryFailure = GameHistoryFailure.unexpected();

  setUp(() {
    mockUserService = MockUserService();
    mockGameHistoryService = MockGameHistoryService();

    when(() => mockUserService.getUser()).thenReturn(right(User.dummy()));
    when(() => mockGameHistoryService.fetchGameHistoryOffline())
        .thenAnswer((_) async => right(gameHistoryOffline));
    when(
      () => mockGameHistoryService.fetchGameHistoryOnline(
        uid: any(named: 'uid'),
      ),
    ).thenAnswer((_) async => right(gameHistoryOnline));
  });

  test('initial state is GameHistoryLoadInProgress', () {
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

  group('FetchGameHistoryAllRequested', () {
    blocTest<GameHistoryBloc, GameHistoryState>(
      'throws ApplicationError '
      'when user is not available',
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
      'emits GameHistoryLoadFailure '
      'when fetching online game history fails',
      setUp: () {
        when(
          () => mockGameHistoryService.fetchGameHistoryOnline(
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
      'emits GameHistoryLoadFailure '
      'when fetching offline game history fails',
      setUp: () {
        when(
          () => mockGameHistoryService.fetchGameHistoryOffline(),
        ).thenAnswer((_) async => left(gameHistoryFailure));
      },
      build: () => GameHistoryBloc(mockUserService, mockGameHistoryService),
      act: (bloc) =>
          bloc.add(const GameHistoryEvent.fetchGameHistoryAllRequested()),
      expect: () =>
          [const GameHistoryState.loadFailure(failure: gameHistoryFailure)],
    );

    // TODO
    blocTest<GameHistoryBloc, GameHistoryState>(
      'emits GameHistoryLoadSucess with merged gameHistory containing the 10 recent game sorted by date '
      'when fetching online and offline game history succeeds',
      build: () => GameHistoryBloc(mockUserService, mockGameHistoryService),
      act: (bloc) =>
          bloc.add(const GameHistoryEvent.fetchGameHistoryAllRequested()),
      expect: () => [
        GameHistoryState.loadSuccess(
          gameHistory: List10(
            [
              OnlineGame.dummy().copyWith(
                createdAt: DateTime(2001),
              ),
              OfflineGame.dummy().copyWith(
                createdAt: DateTime(2000),
              ),
              OnlineGame.dummy().copyWith(
                createdAt: DateTime(1999),
              ),
              OfflineGame.dummy().copyWith(
                createdAt: DateTime(1998),
              ),
              OnlineGame.dummy().copyWith(
                createdAt: DateTime(1997),
              ),
              OfflineGame.dummy().copyWith(
                createdAt: DateTime(1996),
              ),
              OnlineGame.dummy().copyWith(
                createdAt: DateTime(1995),
              ),
              OfflineGame.dummy().copyWith(
                createdAt: DateTime(1994),
              ),
              OnlineGame.dummy().copyWith(
                createdAt: DateTime(1993),
              ),
              OfflineGame.dummy().copyWith(
                createdAt: DateTime(1992),
              ),
            ].toImmutableList(),
          ),
        ),
      ],
    );
  });

  group('FetchGameHistoryOfflineRequested', () {
    blocTest<GameHistoryBloc, GameHistoryState>(
      'emits GameHistoryLoadFailure '
      'when fetching offline game history fails',
      setUp: () {
        when(
          () => mockGameHistoryService.fetchGameHistoryOffline(),
        ).thenAnswer((_) async => left(gameHistoryFailure));
      },
      build: () => GameHistoryBloc(mockUserService, mockGameHistoryService),
      act: (bloc) =>
          bloc.add(const GameHistoryEvent.fetchGameHistoryOfflineRequested()),
      expect: () =>
          [const GameHistoryState.loadFailure(failure: gameHistoryFailure)],
    );

    // TODO
    blocTest<GameHistoryBloc, GameHistoryState>(
      'emits GameHistoryLoadSucess with offline gameHistory containing the 10 recent game sorted by date '
      'when fetching succeeds',
      build: () => GameHistoryBloc(mockUserService, mockGameHistoryService),
      act: (bloc) =>
          bloc.add(const GameHistoryEvent.fetchGameHistoryOfflineRequested()),
      expect: () => [
        GameHistoryState.loadSuccess(
          gameHistory: List10(
            <AbstractGame>[].toImmutableList(),
          ),
        ),
      ],
    );
  });

  group('FetchGameHistoryOnlineRequested', () {
    blocTest<GameHistoryBloc, GameHistoryState>(
      'throws ApplicationError '
      'when userId is null and fetching user fails',
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
      'emits GameHistoryLoadFailure '
      'when fetching online game history fails',
      setUp: () {
        when(
          () => mockGameHistoryService.fetchGameHistoryOnline(
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
      'calls fetchGameHistoryOnline with correct uid '
      'when fetching online game history fails',
      setUp: () {
        when(
          () => mockGameHistoryService.fetchGameHistoryOnline(
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
          () => mockGameHistoryService.fetchGameHistoryOnline(uid: 'dummyId'),
        ).called(1);
      },
    );

    // TODO
    blocTest<GameHistoryBloc, GameHistoryState>(
      'emits GameHistoryLoadSucess with online gameHistory containing the 10 recent game sorted by date '
      'when fetching succeeds',
      build: () => GameHistoryBloc(mockUserService, mockGameHistoryService),
      act: (bloc) =>
          bloc.add(const GameHistoryEvent.fetchGameHistoryOnlineRequested()),
      expect: () => [
        GameHistoryState.loadSuccess(
          gameHistory: List10(
            <AbstractGame>[].toImmutableList(),
          ),
        ),
      ],
    );
  });

  group('GameSelected', () {
    final selectedGame = OfflineGame.dummy();

    blocTest<GameHistoryBloc, GameHistoryState>(
      'emits GameHistoryLoadSuccess with updated selectedGame '
      'when state is GameHistoryLoadSuccess',
      build: () => GameHistoryBloc(mockUserService, mockGameHistoryService),
      seed: () => GameHistoryState.loadSuccess(gameHistory: gameHistoryOffline),
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
      'do nothing '
      'when state is not GameHistoryLoadSuccess',
      build: () => GameHistoryBloc(mockUserService, mockGameHistoryService),
      seed: () => const GameHistoryState.loadInProgress(),
      act: (bloc) =>
          bloc.add(GameHistoryEvent.gameSelected(game: selectedGame)),
      expect: () => [],
    );
  });
}

 */