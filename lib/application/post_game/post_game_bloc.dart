import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/application/core/game/game_bloc.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'post_game_bloc.freezed.dart';
part 'post_game_event.dart';
part 'post_game_state.dart';

@lazySingleton
class PostGameBloc extends Bloc<PostGameEvent, PostGameState>
    with AutoResetLazySingleton {
  final GameBloc _gameBloc;

  PostGameBloc(
    this._gameBloc,
  ) : super(
          PostGameState(
            game: _gameBloc.state.map(
              loading: (_) => throw UnexpectedStateError(),
              success: (success) => success.game,
            ),
          ),
        ) {
    _gameSubscription = _gameBloc.stream.map((state) {
      return state.map(
        loading: (_) => throw UnexpectedStateError(),
        success: (success) => success.game,
      );
    }).listen((game) {
      add(PostGameEvent.gameReceived(game: game));
    });
  }

  StreamSubscription<Game>? _gameSubscription;

  @override
  Stream<PostGameState> mapEventToState(
    PostGameEvent event,
  ) async* {
    yield* event.map(
      gameReceived: (event) => _mapGameReceivedToState(event),
    );
  }

  Stream<PostGameState> _mapGameReceivedToState(
    GameReceived event,
  ) async* {
    yield state.copyWith(game: event.game);
  }

  @override
  Future<void> close() {
    _gameSubscription?.cancel();
    return super.close();
  }
}
