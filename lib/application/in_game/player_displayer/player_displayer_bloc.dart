import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/in_game/in_game_bloc.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/play/player.dart';
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
          PlayerDisplayerState(
            player: _inGameBloc.state.game.currentTurn(),
          ),
        ) {
    _gameSubscription =
        _inGameBloc.stream.map((state) => state.game).listen((game) {
      add(
        PlayerDisplayerEvent.currentPlayerUpdated(
          newPlayer: game.currentTurn(),
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
      currentPlayerUpdated: (event) => _mapCurrentPlayerUpdatedToState(event),
    );
  }

  Stream<PlayerDisplayerState> _mapPreviousPlayerPressedToState() async* {
    final game = _inGameBloc.state.game;
    final size = game.players.size;
    final indexCurrentSelected = game.players.indexOf(state.player);
    final indexPrev = (indexCurrentSelected - 1) % size;
    final prev = game.players.get(indexPrev);
    yield PlayerDisplayerState(player: prev);
  }

  Stream<PlayerDisplayerState> _mapNextPlayerPressedToState() async* {
    final game = _inGameBloc.state.game;
    final size = game.players.size;
    final indexCurrentSelected = game.players.indexOf(state.player);
    final indexNext = (indexCurrentSelected + 1) % size;
    final next = game.players.get(indexNext);
    yield PlayerDisplayerState(player: next);
  }

  Stream<PlayerDisplayerState> _mapCurrentPlayerUpdatedToState(
    CurrentPlayerUpdated event,
  ) async* {
    yield PlayerDisplayerState(player: event.newPlayer);
  }

  @override
  Future<void> close() {
    _gameSubscription?.cancel();
    return super.close();
  }
}
