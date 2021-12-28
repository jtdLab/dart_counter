import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game_history/i_game_history_service.dart';
import 'package:dart_counter/domain/game/abstract_game.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'game_history_event.dart';
part 'game_history_state.dart';
part 'game_history_bloc.freezed.dart';

// TODO transform to bloc v.8.0.0

@lazySingleton
class GameHistoryBloc extends Bloc<GameHistoryEvent, GameHistoryState>
    with AutoResetLazySingleton {
  final IUserService _userService;
  final IGameHistoryService _gameHistoryService;

  GameHistoryBloc(
    this._userService,
    this._gameHistoryService,
  ) : super(const GameHistoryState.loadInProgress());

  @override
  Stream<GameHistoryState> mapEventToState(
    GameHistoryEvent event,
  ) async* {
    yield* event.map(
      fetchGameHistoryAllRequested: (_) =>
          _mapFetchGameHistoryAllRequestedToState(),
      fetchGameHistoryOfflineRequested: (_) =>
          _mapFetchGameHistoryOfflineRequestedToState(),
      fetchGameHistoryOnlineRequested: (event) =>
          _mapFetchGameHistoryOnlineRequestedToState(event),
      gameSelected: (event) => _mapGameSelectedToState(event),
    );
  }

  Stream<GameHistoryState> _mapFetchGameHistoryAllRequestedToState() async* {
    final failureOrUser = _userService.getUser();
    final uid = failureOrUser.fold(
      (failure) => throw Error(), // TODO failure here pls
      (user) => user.id,
    );

    final failureOrOnlineGameHistory =
        await _gameHistoryService.fetchGameHistoryOnline(uid: uid.getOrCrash());
    final failureOrOfflineGameHistory =
        await _gameHistoryService.fetchGameHistoryOffline();

    yield failureOrOnlineGameHistory.fold(
      (failure) => GameHistoryState.loadFailure(failure: failure),
      (onlineGameHistory) => failureOrOfflineGameHistory.fold(
        (failure) => GameHistoryState.loadFailure(failure: failure),
        (offlineGameHistory) {
          final allGameHistory = <AbstractGame>[];

          allGameHistory.addAll(onlineGameHistory.getOrCrash());
          allGameHistory.addAll(offlineGameHistory.getOrCrash());

          /// TODO is descending or need to reverse ???
          allGameHistory
              .sort((game, game1) => game.createdAt.compareTo(game1.createdAt));

          return GameHistoryState.loadSuccess(
            gameHistory: List10(allGameHistory.take(10).toList()),
          );
        },
      ),
    );
  }

  Stream<GameHistoryState>
      _mapFetchGameHistoryOfflineRequestedToState() async* {
    final failureOrGameHistory =
        await _gameHistoryService.fetchGameHistoryOffline();

    yield failureOrGameHistory.fold(
      (failure) => GameHistoryState.loadFailure(failure: failure),
      (gameHistory) => GameHistoryState.loadSuccess(gameHistory: gameHistory),
    );
  }

  Stream<GameHistoryState> _mapFetchGameHistoryOnlineRequestedToState(
    FetchGameHistoryOnlineRequested event,
  ) async* {
    final UniqueId uid;

    if (event.userId == null) {
      final failureOrUser = _userService.getUser();
      uid = failureOrUser.fold(
        (failure) => throw Error(), // TODO failure here pls
        (user) => user.id,
      );
    } else {
      uid = event.userId!;
    }

    final failureOrGameHistory =
        await _gameHistoryService.fetchGameHistoryOnline(uid: uid.getOrCrash());
    yield failureOrGameHistory.fold(
      (failure) => GameHistoryState.loadFailure(failure: failure),
      (gameHistory) => GameHistoryState.loadSuccess(gameHistory: gameHistory),
    );
  }

  Stream<GameHistoryState> _mapGameSelectedToState(
    GameSelected event,
  ) async* {
    final state = this.state;

    if (state is GameHistoryLoadSuccess) {
      yield state.copyWith(selectedGame: event.game);
    }
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<GameHistoryBloc>()) {
      getIt.resetLazySingleton<GameHistoryBloc>();
    }

    return super.close();
  }
}
