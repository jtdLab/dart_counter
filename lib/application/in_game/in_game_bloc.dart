import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
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
  final PlayBloc _playBloc;

  InGameBloc(
    this._playBloc,
  ) : super(
          InGameState(
            game: _playBloc.state.map(
              loading: (_) => throw UnexpectedStateError(),
              success: (success) => success.game,
            ),
            showCheckoutDetails: false,
          ),
        ) {
    _gameSubscription = _playBloc.stream.map((state) {
      return state.map(
        loading: (_) => throw UnexpectedStateError(),
        success: (success) => success.game,
      );
    }).listen((game) {
      add(InGameEvent.gameReceived(game: game));
    });
  }

  StreamSubscription<GameSnapshot>? _gameSubscription;

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
    _playBloc.add(const PlayEvent.gameCanceled());
  }

  Stream<InGameState> _mapUndoThrowPressedToState() async* {
    _playBloc.add(const PlayEvent.throwUndone());
  }

  Stream<InGameState> _mapPerformThrowPressedToState(
    PerformThrowPressed event,
  ) async* {
    _playBloc.add(PlayEvent.throwPerformed(t: event.t));
  }

  Stream<InGameState> _mapShowCheckoutDetailsRequestedToState() async* {
    yield state.copyWith(showCheckoutDetails: true);
  }

  Stream<InGameState> _mapGameReceivedToState(
    GameReceived event,
  ) async* {
    final players = event.game.players;

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

        final game = event.game;
        if (game is OfflineGameSnapshot) {
          yield state.copyWith(
            game: game.copyWith(
              players: newPlayers as KtList<AbstractOfflinePlayerSnapshot>,
            ),
            showCheckoutDetails: false,
          );
        } else if (game is OnlineGameSnapshot) {
          yield state.copyWith(
            game: game.copyWith(
              players: newPlayers as KtList<OnlinePlayerSnapshot>,
            ),
            showCheckoutDetails: false,
          );
        }
      }
    } else {
      yield state.copyWith(
        game: event.game,
        showCheckoutDetails: false,
      );
    }
  }

  @override
  Future<void> close() {
    _gameSubscription?.cancel();
    return super.close();
  }
}
