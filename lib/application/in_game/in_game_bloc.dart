import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'in_game_bloc.freezed.dart';
part 'in_game_event.dart';
part 'in_game_state.dart';

@lazySingleton
class InGameBloc extends Bloc<InGameEvent, InGameState>
    with AutoResetLazySingleton {
  final IPlayOfflineService _playOfflineService;
  final IPlayOnlineService _playOnlineService;

  StreamSubscription? _gameSnapshotsSubscription;

  InGameBloc(
    this._playOfflineService,
    this._playOnlineService,
  ) : super(
          throw Error(),
          /**
           * _playBloc.state.maybeMap(
            gameInProgress: (gameInProgress) => InGameState.initial(
              gameSnapshot: gameInProgress.gameSnapshot,
              inputOrDarts: left(0),
            ),
            orElse: () => throw Error(), // TODO name better
          ),
           */
        ) {
    // TODO
    /**
    *  _gameSnapshotsSubscription = _playBloc.stream.listen((playState) {
      if (playState is PlayGameInProgress) {
        add(InGameEvent.gameReceived(gameSnapshot: playState.gameSnapshot));
      }
    });
    */
  }

  @override
  Stream<InGameState> mapEventToState(
    InGameEvent event,
  ) async* {
    yield* event.map(
      gameCanceled: (_) => _mapGameCanceledToState(),
      undoThrowPressed: (_) => _mapUndoThrowPressedToState(),
      performThrowPressed: (event) => _mapPerformThrowPressedToState(event),
      inputOrDartsChanged: (event) => _mapInputOrDartsChangedToState(event),
      gameReceived: (event) => _mapGameReceivedToState(event),
    );
  }

  Stream<InGameState> _mapGameCanceledToState() async* {
    /**
  *    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      if (online) {
        _playOnlineService.cancelGame();
      } else {
        _playOfflineService.cancelGame();
      }
    }
  */
  }

  Stream<InGameState> _mapUndoThrowPressedToState() async* {
    // TODO maybe add last throw and cut last input digit or if darts
    // remove last darts and preset inputOrDarts to this value
    /**
    *  final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      if (online) {
        _playOnlineService.undoThrow();
      } else {
        _playOfflineService.undoThrow();
      }
    }
    */
  }

  Stream<InGameState> _mapPerformThrowPressedToState(
    PerformThrowPressed event,
  ) async* {
    /**
     * final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      final t = event.t;

      if (online) {
        final failureOrUnit = await _playOnlineService.performThrow(t: t);
        if (failureOrUnit.isRight()) {
          yield state.copyWith(inputOrDarts: left(0));
        }
      } else {
        _playOfflineService.performThrow(t: t);
        // TODO wait for result if throw as sucess ful
        yield state.copyWith(inputOrDarts: left(0));
      }
    }
     */
  }

  Stream<InGameState> _mapGameReceivedToState(
    GameReceived event,
  ) async* {
    yield state.copyWith(
      prevGameSnapshot: state.gameSnapshot,
      gameSnapshot: event.gameSnapshot,
    );
    // TODO what is this implementation
    /**
     * final players = event.gameSnapshot.players;

    if (players.size == 3) {
      final currentTurnIndex =
          players.indexOfFirst((player) => player.isCurrentTurn);
      if (currentTurnIndex == -1) {
        throw Error(); // TODO
      } else {
        final newPlayers = KtMutableList<AbstractPlayerSnapshot>.empty();
        for (int i = 0; i < players.size; i++) {
          newPlayers.add(players[(i + currentTurnIndex) % players.size]);
        }

        final game = event.gameSnapshot;
        if (game is OfflineGameSnapshot) {
          yield state.copyWith(
            gameSnapshot: game.copyWith(
              players: newPlayers as KtList<AbstractOfflinePlayerSnapshot>,
            ),
            showCheckoutDetails: false,
          );
        } else if (game is OnlineGameSnapshot) {
          yield state.copyWith(
            gameSnapshot: game.copyWith(
              players: newPlayers as KtList<OnlinePlayerSnapshot>,
            ),
            showCheckoutDetails: false,
          );
        }
      }
    } else {
      yield state.copyWith(
        gameSnapshot: event.gameSnapshot,
        showCheckoutDetails: false,
      );
    }
     */
  }

  Stream<InGameState> _mapInputOrDartsChangedToState(
    InputOrDartsChanged event,
  ) async* {
    yield state.copyWith(inputOrDarts: event.newInputOrDarts);
  }

  @override
  Future<void> close() {
    _gameSnapshotsSubscription?.cancel();

    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<InGameBloc>()) {
      getIt.resetLazySingleton<InGameBloc>();
    }

    return super.close();
  }
}
