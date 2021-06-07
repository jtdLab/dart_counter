import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'in_game_event.dart';
part 'in_game_state.dart';
part 'in_game_bloc.freezed.dart';

class InGameBloc extends Bloc<InGameEvent, InGameState> {
  final IPlayFacade _playFacade;

  InGameBloc(this._playFacade) : super(const InGameState.initial());

  StreamSubscription<Game>? _gameStreamSubscription;

  @override
  Stream<InGameState> mapEventToState(
    InGameEvent event,
  ) async* {
    yield* event.map(
      watchDataStarted: (e) async* {
        _gameStreamSubscription = _playFacade
            .watchGame()
            .listen((game) => add(InGameEvent.snapshotReceived(game: game)));
      },
      snapshotReceived: (e) async* {
        yield InGameState(game: e.game);
      },
      cancelPressed: (e) async* {
        _playFacade.cancelGame();
      },
      undoThrowPressed: (e) async* {
        _playFacade.undoThrow();
      },
      performThrowPressed: (e) async* {
        _playFacade.performThrow(t: e.t);
      },
      checkPressed: (e) async* {},
      erasePressed: (e) async* {},
      digitPressed: (e) async* {},
    );
  }

  @override
  Future<void> close() async {
    await _gameStreamSubscription?.cancel();
    return super.close();
  }
}
