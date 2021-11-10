import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'play_bloc.freezed.dart';
part 'play_event.dart';
part 'play_state.dart';

@lazySingleton
class PlayBloc extends Bloc<PlayEvent, PlayState> with AutoResetLazySingleton {
  final IPlayOfflineService _playOfflineService;
  final IPlayOnlineService _playOnlineService;

  StreamSubscription? _gameSnapshotsSubscription;

  PlayBloc(
    this._playOfflineService,
    this._playOnlineService,
  ) : super(
          const PlayState.initial(),
        );

  @override
  Stream<PlayState> mapEventToState(
    PlayEvent event,
  ) async* {
    yield* event.map(
      gameCreated: (event) => _mapGameCreatedToState(event),
      gameJoined: (_) => _mapGameJoinedState(),
      gameSnapshotReceived: (event) => _mapGameSnapshotReceivedToState(event),
      resetRequested: (_) => _mapResetRequestedToState(),
    );
  }

  Stream<PlayState> _mapGameCreatedToState(
    PlayGameCreated event,
  ) async* {
    final online = event.online;

    final AbstractGameSnapshot gameSnapshot;
    if (online) {
      final gameSnapshots = _playOnlineService.watchGame();
      _gameSnapshotsSubscription = gameSnapshots.listen((gameSnapshot) {
        add(PlayEvent.gameSnapshotReceived(gameSnapshot: gameSnapshot));
      });
      gameSnapshot = await gameSnapshots.first;
    } else {
      final gameSnapshots = _playOfflineService.watchGame();
      _gameSnapshotsSubscription = gameSnapshots.listen((gameSnapshot) {
        add(PlayEvent.gameSnapshotReceived(gameSnapshot: gameSnapshot));
      });
      gameSnapshot = await gameSnapshots.first;
    }

    yield PlayState.gameInProgress(gameSnapshot: gameSnapshot);
  }

  Stream<PlayState> _mapGameJoinedState() async* {
    final gameSnapshots = _playOnlineService.watchGame();
    _gameSnapshotsSubscription = gameSnapshots.listen((gameSnapshot) {
      add(PlayEvent.gameSnapshotReceived(gameSnapshot: gameSnapshot));
    });
    final gameSnapshot = await gameSnapshots.first;
    yield PlayState.gameInProgress(gameSnapshot: gameSnapshot);
  }

  Stream<PlayState> _mapGameSnapshotReceivedToState(
    PlayGameSnapshotReceived event,
  ) async* {
    yield* state.map(
      initial: (initial) async* {
        yield initial;
      },
      gameInProgress: (gameInProgress) async* {
        final gameSnapshot = event.gameSnapshot;
        yield gameInProgress.copyWith(
          gameSnapshot: gameSnapshot,
        );
      },
    );
  }

  Stream<PlayState> _mapResetRequestedToState() async* {
    yield const PlayState.initial();
  }

  @override
  Future<void> close() {
    _gameSnapshotsSubscription?.cancel();

    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<PlayBloc>()) {
      getIt.resetLazySingleton<PlayBloc>();
    }

    return super.close();
  }
}
