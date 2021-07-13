import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/application/core/user/user_bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'game_history_event.dart';
part 'game_history_state.dart';
part 'game_history_bloc.freezed.dart';

@lazySingleton
class GameHistoryBloc extends Bloc<GameHistoryEvent, GameHistoryState>
    with AutoResetLazySingleton {
  final UserBloc _userBloc;

  GameHistoryBloc(
    this._userBloc,
  ) : super(
          GameHistoryState(
            gameHistory: _userBloc.state.map(
              loading: (_) => throw UnexpectedStateError(),
              success: (success) => success.user.gameHistoryOnline,
            ),
          ),
        ) {
    _gameHistorySubscription = _userBloc.stream.map((state) {
      return state.map(
        loading: (_) => throw UnexpectedStateError(),
        success: (success) => success.user.gameHistoryOnline,
      );
    }).listen((gameHistory) {
      add(GameHistoryEvent.gameHistoryReceived(gameHistory: gameHistory));
    });
  }

  StreamSubscription<List10<Game>>? _gameHistorySubscription;

  @override
  Stream<GameHistoryState> mapEventToState(
    GameHistoryEvent event,
  ) async* {
    yield* event.map(
      gameHistoryReceived: (event) => _mapGameHistoryReceivedToState(event),
      gameSelected: (event) => _mapGameSelectedToState(event),
    );
  }

  Stream<GameHistoryState> _mapGameHistoryReceivedToState(
    GameHistoryReceived event,
  ) async* {
    yield state.copyWith(gameHistory: event.gameHistory);
  }

  Stream<GameHistoryState> _mapGameSelectedToState(
    GameSelected event,
  ) async* {
    yield state.copyWith(selectedGame: event.game);
  }

  @override
  Future<void> close() {
    _gameHistorySubscription?.cancel();
    return super.close();
  }
}
