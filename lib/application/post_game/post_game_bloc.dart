import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'post_game_event.dart';
part 'post_game_state.dart';
part 'post_game_bloc.freezed.dart';

@injectable
class PostGameBloc extends Bloc<PostGameEvent, PostGameState> {
  final IPlayFacade _playFacade;

  PostGameBloc(this._playFacade)
      : super(
          PostGameState(
            game: _playFacade
                .watchGame()
                .valueWrapper! // TODO
                .value,
          ),
        );

  StreamSubscription<Game>? _gameSubscription;

  @override
  Stream<PostGameState> mapEventToState(
    PostGameEvent event,
  ) async* {
    yield* event.map(
      watchStarted: (_) => _mapWatchStartedToState(),
      receivedGame: (event) => _mapReceivedGameToState(event),
    );
  }

  Stream<PostGameState> _mapWatchStartedToState() async* {
    _gameSubscription = _playFacade.watchGame().listen((game) {
      add(PostGameEvent.receivedGame(game: game));
    });
  }

  Stream<PostGameState> _mapReceivedGameToState(ReceivedGame event) async* {
    yield PostGameState(game: event.game);
  }

  @override
  Future<void> close() {
    _gameSubscription?.cancel();
    return super.close();
  }
}
