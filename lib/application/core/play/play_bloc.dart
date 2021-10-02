import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/domain/play/i_play_offline_facade.dart';
import 'package:dart_counter/domain/play/i_play_online_facade.dart';
import 'package:dart_counter/domain/play/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'play_bloc.freezed.dart';
part 'play_event.dart';
part 'play_state.dart';

@lazySingleton
class PlayBloc extends Bloc<PlayEvent, PlayState> with AutoResetLazySingleton {
  final IPlayOfflineFacade _playOfflineFacade;
  final IPlayOnlineFacade _playOnlineFacade;

  StreamSubscription? _gameSnapshotsSubscription;

  PlayBloc(
    this._playOfflineFacade,
    this._playOnlineFacade,
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
    );
  }

  Stream<PlayState> _mapGameCreatedToState(
    PlayGameCreated event,
  ) async* {
    final online = event.online;

    final GameSnapshot gameSnapshot;
    if (online) {
      final gameSnapshots = _playOnlineFacade.watchGame();
      _gameSnapshotsSubscription = gameSnapshots.listen((gameSnapshot) {
        add(PlayEvent.gameSnapshotReceived(gameSnapshot: gameSnapshot));
      });
      gameSnapshot = await gameSnapshots.first;
    } else {
      final gameSnapshots = _playOfflineFacade.watchGame();
      _gameSnapshotsSubscription = gameSnapshots.listen((gameSnapshot) {
        add(PlayEvent.gameSnapshotReceived(gameSnapshot: gameSnapshot));
      });
      gameSnapshot = await gameSnapshots.first;
    }

    yield PlayState.gameInProgress(gameSnapshot: gameSnapshot);
  }

  Stream<PlayState> _mapGameJoinedState() async* {
    final gameSnapshots = _playOnlineFacade.watchGame();
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

        if (gameSnapshot.status == Status.canceled ||
            gameSnapshot.status == Status.finished) {
          yield const PlayState.initial();
        }
      },
    );
  }

  @override
  Future<void> close() {
    _gameSnapshotsSubscription?.cancel();
    return super.close();
  }
}
