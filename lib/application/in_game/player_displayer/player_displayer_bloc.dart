import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/in_game/in_game_bloc.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'player_displayer_event.dart';
part 'player_displayer_state.dart';
part 'player_displayer_bloc.freezed.dart';

@lazySingleton
class PlayerDisplayerBloc
    extends Bloc<PlayerDisplayerEvent, PlayerDisplayerState>
    with AutoResetLazySingleton {
  final InGameBloc _inGameBloc;

  PlayerDisplayerBloc(this._inGameBloc)
      : super(
          const PlayerDisplayerState(
            index: 0,
          ),
        ) {
    _gameSubscription =
        _inGameBloc.stream.map((state) => state.game).listen((game) {
      add(
        PlayerDisplayerEvent.currentIndexUpdated(
          newIndex: game.players.indexOf(
            game.currentTurn(),
          ),
        ),
      );
    });
  }

  StreamSubscription<Game>? _gameSubscription;

  @override
  Stream<PlayerDisplayerState> mapEventToState(
    PlayerDisplayerEvent event,
  ) async* {
    yield* event.map(
      previousPlayerPressed: (_) => _mapPreviousPlayerPressedToState(),
      nextPlayerPressed: (_) => _mapNextPlayerPressedToState(),
      currentIndexUpdated: (event) => _mapCurrentIndexUpdatedToState(event),
    );
  }

  Stream<PlayerDisplayerState> _mapPreviousPlayerPressedToState() async* {
    final game = _inGameBloc.state.game;
    final size = game.players.size;
    final indexPrevTurn = (state.index - 1) % size;
    yield PlayerDisplayerState(index: indexPrevTurn);
  }

  Stream<PlayerDisplayerState> _mapNextPlayerPressedToState() async* {
    final game = _inGameBloc.state.game;
    final size = game.players.size;
    final indexNextTurn = (state.index + 1) % size;
    yield PlayerDisplayerState(index: indexNextTurn);
  }

  Stream<PlayerDisplayerState> _mapCurrentIndexUpdatedToState(
    CurrentIndexUpdated event,
  ) async* {
    yield PlayerDisplayerState(index: event.newIndex);
  }

  @override
  Future<void> close() {
    _gameSubscription?.cancel();
    return super.close();
  }
}
