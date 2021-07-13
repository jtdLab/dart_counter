import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'game_event.dart';
part 'game_state.dart';
part 'game_bloc.freezed.dart';

@lazySingleton
class GameBloc extends Bloc<GameEvent, GameState> with AutoResetLazySingleton {
  final IPlayFacade _playFacade;

  GameBloc(this._playFacade)
      : super(
          const GameState.loading(),
        ) {
          add(const GameEvent.watchStarted());
        }

  StreamSubscription<Either<PlayFailure, Game>>? _gameStreamSubscription;

  @override
  Stream<GameState> mapEventToState(
    GameEvent event,
  ) async* {
    yield* event.map(
      watchStarted: (_) => _mapWatchStartedToState(),
      gameReceived: (event) => _mapGameReceivedToState(event),
      failureReceived: (event) => _mapFailureReceivedToState(event),
    );
  }

  Stream<GameState> _mapWatchStartedToState() async* {
    _gameStreamSubscription = _playFacade.watchGame().listen((failureOrGame) {
      failureOrGame.fold(
        (failure) => add(
          GameEvent.failureReceived(
            failure: failure,
          ),
        ),
        (game) => add(
          GameEvent.gameReceived(
            game: game,
          ),
        ),
      );
    });
  }

  Stream<GameState> _mapGameReceivedToState(
    GameReceived event,
  ) async* {
    yield GameState.success(
      game: event.game,
    );
  }

  Stream<GameState> _mapFailureReceivedToState(
    FailureReceived event,
  ) async* {
    // TODO implement
    throw UnimplementedError();
  }

  @override
  Future<void> close() {
    _gameStreamSubscription?.cancel();
    return super.close();
  }
}
