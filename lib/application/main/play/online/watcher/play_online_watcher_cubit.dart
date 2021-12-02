import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PlayOnlineWatcherCubit extends Cubit<OnlineGameSnapshot> {
  final IPlayOnlineService _playOnlineService;

  late final StreamSubscription _gameSnapshotStreamSubscription;

  PlayOnlineWatcherCubit(
    this._playOnlineService,
  ) : super(_playOnlineService.getGame()) {
    _gameSnapshotStreamSubscription = _playOnlineService
        .watchGame()
        .listen((gameSnapshot) => emit(gameSnapshot));
  }

  @override
  Future<void> close() {
    _gameSnapshotStreamSubscription.cancel();

    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<PlayOnlineWatcherCubit>()) {
      getIt.resetLazySingleton<PlayOnlineWatcherCubit>();
    }

    return super.close();
  }
}
