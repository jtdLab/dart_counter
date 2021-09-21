import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/application/core/user/user_bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game_history/i_game_history_facade.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'game_history_event.dart';
part 'game_history_state.dart';
part 'game_history_bloc.freezed.dart';

@lazySingleton
class GameHistoryBloc extends Bloc<GameHistoryEvent, GameHistoryState>
    with AutoResetLazySingleton {
  final UserBloc _userBloc;
  final IGameHistoryFacade _gameHistoryFacade;

  GameHistoryBloc(
    this._userBloc,
    this._gameHistoryFacade,
  ) : super(const GameHistoryState.loadInProgress()) {
    //add(const GameHistoryEvent.fetchGameHistoryOfflineRequested());
    add(const GameHistoryEvent.fetchGameHistoryOnlineRequested());
  }

  @override
  Stream<GameHistoryState> mapEventToState(
    GameHistoryEvent event,
  ) async* {
    yield* event.map(
      fetchGameHistoryOfflineRequested: (_) =>
          _mapFetchGameHistoryOfflineRequestedToState(),
      fetchGameHistoryOnlineRequested: (_) =>
          _mapFetchGameHistoryOnlineRequestedToState(),
      gameSelected: (event) => _mapGameSelectedToState(event),
    );
  }

  Stream<GameHistoryState>
      _mapFetchGameHistoryOfflineRequestedToState() async* {
    // TODO intergrat offline gamehistory
    /**
     * final failureOrGameHistory =
        await _gameHistoryFacade.fetchGameHistoryOffline();

    yield failureOrGameHistory.fold(
      (failure) => GameHistoryState.loadFailure(failure: failure),
      (gameHistory) => GameHistoryState.loadSuccess(gameHistory: gameHistory),
    );
     */
  }

  Stream<GameHistoryState> _mapFetchGameHistoryOnlineRequestedToState() async* {
    final uid = _userBloc.state.map(
      loadInProgress: (_) => throw UnexpectedStateError(), // TODO
      loadSuccess: (success) => success.user.id,
      loadFailure: (_) => throw UnexpectedStateError(), // TODO
    );

    final failureOrGameHistory =
        await _gameHistoryFacade.fetchGameHistoryOnline(uid: uid.getOrCrash());

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
}
