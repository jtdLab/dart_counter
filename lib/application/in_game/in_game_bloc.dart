import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/application/core/game/game_bloc.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:dart_counter/domain/play/player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'in_game_event.dart';
part 'in_game_state.dart';
part 'in_game_bloc.freezed.dart';

@lazySingleton
class InGameBloc extends Bloc<InGameEvent, InGameState>
    with AutoResetLazySingleton {
  final IPlayFacade _playFacade;
  final GameBloc _gameBloc;

  InGameBloc(
    this._playFacade,
    this._gameBloc,
  ) : super(
          InGameState(
            game: _gameBloc.state.map(
              loading: (_) => throw UnexpectedStateError(),
              success: (success) => success.game,
            ),
            showCheckoutDetails: false,
          ),
        ) {
    _gameSubscription = _gameBloc.stream.map((state) {
      return state.map(
        loading: (_) => throw UnexpectedStateError(),
        success: (success) => success.game,
      );
    }).listen((game) {
      add(InGameEvent.gameReceived(game: game));
    });
  }

  StreamSubscription<Game>? _gameSubscription;

  @override
  Stream<InGameState> mapEventToState(
    InGameEvent event,
  ) async* {
    yield* event.map(
      gameCanceled: (_) => _mapGameCanceledToState(),
      showCheckoutDetailsRequested: (_) =>
          _mapShowCheckoutDetailsRequestedToState(),
      gameReceived: (event) => _mapGameReceivedToState(event),
    );
  }

  Stream<InGameState> _mapGameCanceledToState() async* {
    final failureOrUnit = await _playFacade.cancelGame();
    if (failureOrUnit.isLeft()) {
      throw Error(); // TODO
    }
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
        final newPlayers = KtMutableList<Player>.empty();
        for (int i = 0; i < players.size; i++) {
          newPlayers.add(players[(i + currentTurnIndex) % players.size]);
        }

        yield state.copyWith(
          game: event.game.copyWith(players: newPlayers),
          showCheckoutDetails: false,
        );
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
