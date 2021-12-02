import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PlayOfflineWatcherCubit extends Cubit<OfflineGameSnapshot> {
  final IPlayOfflineService _playOfflineService;

  late final StreamSubscription _gameSnapshotStreamSubscription;

  PlayOfflineWatcherCubit(
    this._playOfflineService,
    IUserService userService,
  ) : super(
          _playOfflineService.createGame(
            owner: userService
                .getUser()
                // TODO better error
                .getOrElse(() => throw Error()),
          ),
        ) {
    _gameSnapshotStreamSubscription = _playOfflineService
        .watchGame()
        .listen((gameSnapshot) => emit(gameSnapshot));
  }

  @override
  Future<void> close() {
    _gameSnapshotStreamSubscription.cancel();

    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<PlayOfflineWatcherCubit>()) {
      getIt.resetLazySingleton<PlayOfflineWatcherCubit>();
    }

    return super.close();
  }
}
