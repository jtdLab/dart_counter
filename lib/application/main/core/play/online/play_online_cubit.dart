import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/core/shared/play/play_state.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/domain/play/online/online_game_snapshot.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/core/shared/play/play_state.dart';

@injectable
class PlayOnlineCubit extends Cubit<PlayState<OnlineGameSnapshot>> {
  final IPlayOnlineService _playOnlineService;

  late StreamSubscription _subscription;

  PlayOnlineCubit(this._playOnlineService)
      : super(
          // Set initial state
          const PlayState.inactive(),
        );

  /// Returns instance registered inside getIt.
  factory PlayOnlineCubit.getIt() => getIt<PlayOnlineCubit>();

  Future<void> create() async {
    final failureOrInitialSnapshot = await _playOnlineService.createGame();
    failureOrInitialSnapshot.fold(
      (failure) {
        // TODO
      },
      (initialSnapshot) {
        emit(PlayState.active(gameSnapshot: initialSnapshot));
        _subscription = _playOnlineService.watchGame().listen(
              (snapshot) => emit(PlayState.active(gameSnapshot: snapshot)),
            );
      },
    );
  }

  void join() {
    /**
      *  final failureOrInitialSnapshot = await _playOnlineService.joinGame();
    failureOrInitialSnapshot.fold(
      (failure) {
        // TODO
      },
      (initialSnapshot) {
        emit(PlayState.active(gameSnapshot: initialSnapshot));
        _subscription = _playOnlineService.watchGame().listen(
              (snapshot) => emit(PlayState.active(gameSnapshot: snapshot)),
            );
      },
    );
      */
  }

  void finish() {
    _subscription.cancel();
    emit(const PlayState.inactive());
  }

  @override
  Future<void> close() {
    _subscription.cancel();

    return super.close();
  }
}
