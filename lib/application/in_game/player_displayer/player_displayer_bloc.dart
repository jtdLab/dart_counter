import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/play/player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'player_displayer_event.dart';
part 'player_displayer_state.dart';
part 'player_displayer_bloc.freezed.dart';

@injectable
class PlayerDisplayerBloc
    extends Bloc<PlayerDisplayerEvent, PlayerDisplayerState> {
  final PlayBloc _playBloc;
  StreamSubscription? _playSubscription;

  PlayerDisplayerBloc(this._playBloc)
      : super(
          PlayerDisplayerState(
            player: (_playBloc.state as Success).game.currentTurn(),
          ),
        ) {
    _playSubscription = _playBloc.stream.listen(
      (event) {
        if (event is Success) {
          final player = event.game.currentTurn();
          add(PlayerDisplayerEvent.currentPlayerUpdated(newPlayer: player));
        }
      },
    );
  }

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
    final game = (_playBloc.state as Success).game;
    final players = game.players;

    final indexCurrentTurn = players.indexOf(state.player);
    final indexPrevTurn = (indexCurrentTurn - 1) % players.size;
    final prevPlayer = players.get(indexPrevTurn);
    yield PlayerDisplayerState(player: prevPlayer);
  }

  Stream<PlayerDisplayerState> _mapNextPlayerPressedToState() async* {
    final game = (_playBloc.state as Success).game;
    final players = game.players;

    final indexCurrentTurn = players.indexOf(state.player);
    final indexNextTurn = (indexCurrentTurn + 1) % players.size;
    final nextPlayer = players.get(indexNextTurn);
    yield PlayerDisplayerState(player: nextPlayer);
  }

  Stream<PlayerDisplayerState> _mapCurrentPlayerUpdatedToState(
      CurrentPlayerUpdated event) async* {
    yield PlayerDisplayerState(player: event.newPlayer);
  }

  @override
  Future<void> close() {
    _playSubscription?.cancel();
    return super.close();
  }
}
