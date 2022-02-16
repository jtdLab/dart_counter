import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/application_error.dart';
import 'package:dart_counter/application/main/core/user/user_cubit.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/abstract_game.dart';
import 'package:dart_counter/domain/game_history/i_game_history_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'game_history_bloc.freezed.dart';
part 'game_history_event.dart';
part 'game_history_state.dart';

@injectable
class GameHistoryBloc extends Bloc<GameHistoryEvent, GameHistoryState> {
  final IGameHistoryService _gameHistoryService;

  final UserCubit _userCubit;

  GameHistoryBloc(
    this._gameHistoryService,
    this._userCubit,
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

  /// Returns instance registered inside getIt.
  factory GameHistoryBloc.getIt(
    UserCubit userCubit,
  ) =>
      getIt<GameHistoryBloc>(param1: [userCubit]);

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of [UserCubit].
  @factoryMethod
  factory GameHistoryBloc.injectable(
    IGameHistoryService gameHistoryService,
    @factoryParam List<Object>? otherDependencies,
  ) =>
      GameHistoryBloc(
        gameHistoryService,
        otherDependencies![0] as UserCubit,
      );

  /// Handle incoming [_FetchGameHistoryAllRequested] event.
  Future<void> _handleFetchGameHistoryAllRequested(
    Emitter<GameHistoryState> emit,
  ) async {
    final userOption = _userCubit.state.maybeWhen(
      loadSuccess: (user) => user,
      orElse: () => null,
    );

    if (userOption == null) {
      throw ApplicationError.unexpectedMissingUser();
    }
    final uid = userOption.id;

    final failureOrOnlineGameHistory =
        await _gameHistoryService.getGameHistoryOnline(uid: uid.getOrCrash());
    final failureOrOfflineGameHistory =
        await _gameHistoryService.getGameHistoryOffline();

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
        await _gameHistoryService.getGameHistoryOffline();

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
      final userOption = _userCubit.state.maybeWhen(
        loadSuccess: (user) => user,
        orElse: () => null,
      );

      if (userOption == null) {
        throw ApplicationError.unexpectedMissingUser();
      }

      uid = userOption.id;
    }

    final failureOrGameHistory =
        await _gameHistoryService.getGameHistoryOnline(uid: uid.getOrCrash());
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
