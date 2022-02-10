import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/application_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/abstract_game.dart';
import 'package:dart_counter/domain/game_history/i_game_history_service.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'game_history_bloc.freezed.dart';
part 'game_history_event.dart';
part 'game_history_state.dart';

@injectable
class GameHistoryBloc extends Bloc<GameHistoryEvent, GameHistoryState> {
  final IUserService _userService;
  final IGameHistoryService _gameHistoryService;

  GameHistoryBloc(
    this._userService,
    this._gameHistoryService,
  ) : super(
          // Set initial state
          const GameHistoryState.loadInProgress(),
        ) {
    // Register event handlers
    on<_FetchGameHistoryAllRequested>(
      (_, emit) async => _handleFetchGameHistoryAllRequested(emit),
    );
    on<_FetchGameHistoryOfflineRequested>(
      (_, emit) async => _handleFetchGameHistoryOfflineRequested(emit),
    );
    on<_FetchGameHistoryOnlineRequested>(
      (event, emit) async =>
          _handleFetchGameHistoryOnlineRequested(event, emit),
    );
    on<_GameSelected>(
      (event, emit) => _handleGameSelected(event, emit),
    );
  }

  /// Handle incoming [_FetchGameHistoryAllRequested] event.
  Future<void> _handleFetchGameHistoryAllRequested(
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
              (game, game1) => game1.createdAt.compareTo(game.createdAt),
            );

            return GameHistoryState.loadSuccess(
              gameHistory: List10(allGameHistory.take(10).toImmutableList()),
            );
          },
        ),
      ),
    );
  }

  /// Handle incoming [_FetchGameHistoryOfflineRequested] event.
  Future<void> _handleFetchGameHistoryOfflineRequested(
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

  /// Handle incoming [_FetchGameHistoryOnlineRequested] event.
  Future<void> _handleFetchGameHistoryOnlineRequested(
    _FetchGameHistoryOnlineRequested event,
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

  /// Handle incoming [_GameSelected] event.
  void _handleGameSelected(
    _GameSelected event,
    Emitter<GameHistoryState> emit,
  ) {
    final state = this.state;

    if (state is GameHistoryLoadSuccess) {
      emit(state.copyWith(selectedGame: event.game));
    }
  }

  /**
  *  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<GameHistoryBloc>()) {
      getIt.resetLazySingleton<GameHistoryBloc>();
    }

    return super.close();
  }
  */
}
