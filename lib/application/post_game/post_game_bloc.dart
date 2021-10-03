import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/domain/play/i_play_offline_facade.dart';
import 'package:dart_counter/domain/play/i_play_online_facade.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'post_game_bloc.freezed.dart';
part 'post_game_event.dart';
part 'post_game_state.dart';

@lazySingleton
class PostGameBloc extends Bloc<PostGameEvent, PostGameState>
    with AutoResetLazySingleton {
  final IPlayOfflineFacade _playOfflineFacade;
  final IPlayOnlineFacade _playOnlineFacade;

  final PlayBloc _playBloc;

  StreamSubscription? _gameSnapshotsSubscription;

  PostGameBloc(
    this._playOfflineFacade,
    this._playOnlineFacade,
    this._playBloc,
  ) : super(
          _playBloc.state.maybeMap(
            gameInProgress: (gameInProgress) => PostGameState.initial(
              gameSnapshot: gameInProgress.gameSnapshot,
            ),
            orElse: () => throw Error(), // TODO name better
          ),
        ) {
    _gameSnapshotsSubscription = _playBloc.stream.listen((playState) {
      if (playState is PlayGameInProgress) {
        add(PostGameEvent.gameReceived(gameSnapshot: playState.gameSnapshot));
      }
    });
  }

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
    yield state.copyWith(gameSnapshot: event.gameSnapshot);
  }

  @override
  Future<void> close() {
    _gameSnapshotsSubscription?.cancel();
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<PostGameBloc>()) {
      getIt.resetLazySingleton<PostGameBloc>();
    }
    return super.close();
  }
}
