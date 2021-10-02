import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/domain/play/i_play_offline_facade.dart';
import 'package:dart_counter/domain/play/i_play_online_facade.dart';
import 'package:dart_counter/domain/play/player_snapshot.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'in_game_bloc.freezed.dart';
part 'in_game_event.dart';
part 'in_game_state.dart';

@lazySingleton
class InGameBloc extends Bloc<InGameEvent, InGameState>
    with AutoResetLazySingleton {
  final IPlayOfflineFacade _playOfflineFacade;
  final IPlayOnlineFacade _playOnlineFacade;

  final PlayBloc _playBloc;

  StreamSubscription? _gameSnapshotsSubscription;

  InGameBloc(
    this._playOfflineFacade,
    this._playOnlineFacade,
    this._playBloc,
  ) : super(
          _playBloc.state.maybeMap(
            gameInProgress: (gameInProgress) => InGameState.initial(
              gameSnapshot: gameInProgress.gameSnapshot,
              showCheckoutDetails: false,
            ),
            orElse: () => throw Error(), // TODO name better
          ),
        ) {
    _gameSnapshotsSubscription = _playBloc.stream.listen((playState) {
      if (playState is PlayGameInProgress) {
        add(InGameEvent.gameReceived(gameSnapshot: playState.gameSnapshot));
      }
    });
  }

  @override
  Stream<InGameState> mapEventToState(
    InGameEvent event,
  ) async* {
    yield* event.map(
      gameCanceled: (_) => _mapGameCanceledToState(),
      undoThrowPressed: (_) => _mapUndoThrowPressedToState(),
      performThrowPressed: (event) => _mapPerformThrowPressedToState(event),
      showCheckoutDetailsRequested: (_) =>
          _mapShowCheckoutDetailsRequestedToState(),
      gameReceived: (event) => _mapGameReceivedToState(event),
    );
  }

  Stream<InGameState> _mapGameCanceledToState() async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      if (online) {
        _playOnlineFacade.cancelGame();
      } else {
        _playOfflineFacade.cancelGame();
      }
    }
  }

  Stream<InGameState> _mapUndoThrowPressedToState() async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      if (online) {
        _playOnlineFacade.undoThrow();
      } else {
        _playOfflineFacade.undoThrow();
      }
    }
  }

  Stream<InGameState> _mapPerformThrowPressedToState(
    PerformThrowPressed event,
  ) async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      final t = event.t;

      if (online) {
        _playOnlineFacade.performThrow(t: t);
      } else {
        _playOfflineFacade.performThrow(t: t);
      }
    }
  }

  Stream<InGameState> _mapShowCheckoutDetailsRequestedToState() async* {
    yield state.copyWith(showCheckoutDetails: true);
  }

  // TODO what is this implementation
  Stream<InGameState> _mapGameReceivedToState(
    GameReceived event,
  ) async* {
    final players = event.gameSnapshot.players;

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
  }

  @override
  Future<void> close() {
    _gameSnapshotsSubscription?.cancel();
    return super.close();
  }
}
