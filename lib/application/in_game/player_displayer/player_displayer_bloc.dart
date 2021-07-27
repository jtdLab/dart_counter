import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/in_game/in_game_bloc.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/play/player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'player_displayer_event.dart';
part 'player_displayer_state.dart';
part 'player_displayer_bloc.freezed.dart';

@lazySingleton
class PlayerDisplayerBloc
    extends Bloc<PlayerDisplayerEvent, PlayerDisplayerState>
    with AutoResetLazySingleton {
  final InGameBloc _inGameBloc;

  PlayerDisplayerBloc(
    this._inGameBloc,
  ) : super(
          PlayerDisplayerState(
            players: _inGameBloc.state.game.players,
          ),
        ) {
    _gameSubscription = _inGameBloc.stream.map((state) => state.game).listen(
      (game) {
        add(
          PlayerDisplayerEvent.playersReceived(
            players: game.players,
          ),
        );
      },
    );
  }

  StreamSubscription<Game>? _gameSubscription;

  @override
  Stream<PlayerDisplayerState> mapEventToState(
    PlayerDisplayerEvent event,
  ) async* {
    yield* event.map(
      playersReceived: (event) => _mapPlayersReceivedToState(event),
    );
  }

  Stream<PlayerDisplayerState> _mapPlayersReceivedToState(
    PlayersReceived event,
  ) async* {
    yield PlayerDisplayerState(players: event.players);
  }

  @override
  Future<void> close() {
    _gameSubscription?.cancel();
    return super.close();
  }
}
