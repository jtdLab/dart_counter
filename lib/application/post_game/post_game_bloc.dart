import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'post_game_bloc.freezed.dart';
part 'post_game_event.dart';
part 'post_game_state.dart';

@lazySingleton
class PostGameBloc extends Bloc<PostGameEvent, PostGameState>
    with AutoResetLazySingleton {
  final PlayBloc _playBloc;

  PostGameBloc(
    this._playBloc,
  ) : super(
          _playBloc.state.maybeMap(
            gameInProgress: (gameInProgress) => PostGameState.initial(
              gameSnapshot: gameInProgress.gameSnapshot,
            ),
            orElse: () => throw Error(), // TODO name better
          ),
        ) {
    _playBloc.add(const PlayEvent.resetRequested());
  }

  @override
  Stream<PostGameState> mapEventToState(
    PostGameEvent event,
  ) async* {}

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<PostGameBloc>()) {
      getIt.resetLazySingleton<PostGameBloc>();
    }
    
    return super.close();
  }
}
