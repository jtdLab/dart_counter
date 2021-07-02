import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'in_game_event.dart';
part 'in_game_state.dart';
part 'in_game_bloc.freezed.dart';

@injectable
class InGameBloc extends Bloc<InGameEvent, InGameState> {
  final IPlayFacade _playFacade;

  InGameBloc(this._playFacade)
      : super(
          InGameState(
            game: _playFacade
                .watchGame()
                .valueWrapper! // TODO
                .value,
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
    );
  }

  Stream<InGameState> _mapWatchStartedToState() async* {
    _gameSubscription = _playFacade.watchGame().listen((game) {
      add(InGameEvent.receivedGame(game: game));
    });
  }

  Stream<InGameState> _mapReceivedGameToState(ReceivedGame event) async* {
    yield InGameState(game: event.game);
  }

  Stream<InGameState> _mapGameCanceledToState() async* {
    final failureOrUnit = await _playFacade.cancelGame();
    if (failureOrUnit.isLeft()) {
      throw Error(); // TODO
    }
  }

  @override
  Future<void> close() {
    _gameSubscription?.cancel();
    return super.close();
  }
}
