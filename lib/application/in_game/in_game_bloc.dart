import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'in_game_event.dart';
part 'in_game_state.dart';
part 'in_game_bloc.freezed.dart';

@lazySingleton
class InGameBloc extends Bloc<InGameEvent, InGameState>
    with AutoResetLazySingleton {
  final IPlayFacade _playFacade;

  InGameBloc(this._playFacade)
      : super(
          InGameState(
            game: _playFacade
                .watchGame()
                .valueWrapper! // TODO
                .value,
            showCheckoutDetails: false,
          ),
        );

  StreamSubscription<Game>? _gameSubscription;

  @override
  Stream<InGameState> mapEventToState(
    InGameEvent event,
  ) async* {
    yield* event.map(
      watchStarted: (_) => _mapWatchStartedToState(),
      receivedGame: (event) => _mapReceivedGameToState(event),
      gameCanceled: (_) => _mapGameCanceledToState(),
      showCheckoutDetailsRequested: (_) =>
          _mapShowCheckoutDetailsRequestedToState(),
    );
  }

  Stream<InGameState> _mapWatchStartedToState() async* {
    _gameSubscription = _playFacade.watchGame().listen((game) {
      add(InGameEvent.receivedGame(game: game));
    });
  }

  Stream<InGameState> _mapReceivedGameToState(ReceivedGame event) async* {
    yield InGameState(game: event.game, showCheckoutDetails: false);
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

  @override
  Future<void> close() {
    _gameSubscription?.cancel();
    return super.close();
  }
}
