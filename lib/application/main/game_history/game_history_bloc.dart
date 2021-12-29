import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/application_error.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/abstract_game.dart';
import 'package:dart_counter/domain/game_history/i_game_history_service.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'game_history_bloc.freezed.dart';
part 'game_history_event.dart';
part 'game_history_state.dart';

@lazySingleton
class GameHistoryBloc extends Bloc<GameHistoryEvent, GameHistoryState>
    with AutoResetLazySingleton {
  final IUserService _userService;
  final IGameHistoryService _gameHistoryService;

  GameHistoryBloc(
    this._userService,
    this._gameHistoryService,
  ) : super(const GameHistoryState.loadInProgress()) {
    on<FetchGameHistoryAllRequested>(
      (_, emit) async => _mapFetchGameHistoryAllRequestedToState(emit),
    );
    on<FetchGameHistoryOfflineRequested>(
      (_, emit) async => _mapFetchGameHistoryOfflineRequestedToState(emit),
    );
    on<FetchGameHistoryOnlineRequested>(
      (event, emit) async =>
          _mapFetchGameHistoryOnlineRequestedToState(event, emit),
    );
    on<GameSelected>(
      (event, emit) async => _mapGameSelectedToState(event, emit),
    );
  }

  Future<void> _mapFetchGameHistoryAllRequestedToState(
    Emitter<GameHistoryState> emit,
  ) async {
    final failureOrUser = _userService.getUser();
    final uid = failureOrUser.fold(
      (failure) => throw ApplicationError.unexpectedMissingUser(),
      (user) => user.id,
    );

    final failureOrOnlineGameHistory =
        await _gameHistoryService.fetchGameHistoryOnline(uid: uid.getOrCrash());
    final failureOrOfflineGameHistory =
        await _gameHistoryService.fetchGameHistoryOffline();

    emit(
      failureOrOnlineGameHistory.fold(
        (failure) => GameHistoryState.loadFailure(failure: failure),
        (onlineGameHistory) => failureOrOfflineGameHistory.fold(
          (failure) => GameHistoryState.loadFailure(failure: failure),
          (offlineGameHistory) {
            final allGameHistory = <AbstractGame>[];

            allGameHistory.addAll(onlineGameHistory.getOrCrash().asList());
            allGameHistory.addAll(offlineGameHistory.getOrCrash().asList());

            allGameHistory.sort(
              (game, game1) => game.createdAt.compareTo(game1.createdAt),
            );

            return GameHistoryState.loadSuccess(
              gameHistory: List10(allGameHistory.take(10).toImmutableList()),
            );
          },
        ),
      ),
    );
  }

  Future<void> _mapFetchGameHistoryOfflineRequestedToState(
    Emitter<GameHistoryState> emit,
  ) async {
    final failureOrGameHistory =
        await _gameHistoryService.fetchGameHistoryOffline();

    emit(
      failureOrGameHistory.fold(
        (failure) => GameHistoryState.loadFailure(failure: failure),
        (gameHistory) => GameHistoryState.loadSuccess(gameHistory: gameHistory),
      ),
    );
  }

  Future<void> _mapFetchGameHistoryOnlineRequestedToState(
    FetchGameHistoryOnlineRequested event,
    Emitter<GameHistoryState> emit,
  ) async {
    var uid = event.userId;

    if (uid == null) {
      final failureOrUser = _userService.getUser();
      uid = failureOrUser.fold(
        (failure) => throw throw ApplicationError.unexpectedMissingUser(),
        (user) => user.id,
      );
    }

    final failureOrGameHistory = await _gameHistoryService
        .fetchGameHistoryOnline(uid: uid!.getOrCrash());
    emit(
      failureOrGameHistory.fold(
        (failure) => GameHistoryState.loadFailure(failure: failure),
        (gameHistory) => GameHistoryState.loadSuccess(gameHistory: gameHistory),
      ),
    );
  }

  void _mapGameSelectedToState(
    GameSelected event,
    Emitter<GameHistoryState> emit,
  ) {
    final state = this.state;

    if (state is GameHistoryLoadSuccess) {
      emit(state.copyWith(selectedGame: event.game));
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
