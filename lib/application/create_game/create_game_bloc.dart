import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_game_bloc.freezed.dart';
part 'create_game_event.dart';
part 'create_game_state.dart';

@lazySingleton
class CreateGameBloc extends Bloc<CreateGameEvent, CreateGameState>
    with AutoResetLazySingleton {
  final IPlayOfflineService _playOfflineService;
  final IPlayOnlineService _playOnlineService;

  final PlayBloc _playBloc;

  StreamSubscription? _gameSnapshotsSubscription;

  CreateGameBloc(
    this._playOfflineService,
    this._playOnlineService,
    this._playBloc,
  ) : super(
          _playBloc.state.maybeMap(
            gameInProgress: (gameInProgress) => CreateGameState.initial(
              gameSnapshot: gameInProgress.gameSnapshot,
            ),
            orElse: () => throw Error(), // TODO name better
          ),
        ) {
    _gameSnapshotsSubscription = _playBloc.stream.listen((playState) {
      if (playState is PlayGameInProgress) {
        add(CreateGameEvent.gameReceived(gameSnapshot: playState.gameSnapshot));
      }
    });
  }

  @override
  Stream<CreateGameState> mapEventToState(
    CreateGameEvent event,
  ) async* {
    yield* event.map(
      gameCanceled: (_) => _mapGameCanceledToState(),
      playerReordered: (event) => _mapPlayerReorederedToState(event),
      playerAdded: (_) => _mapPlayerAddedToState(),
      playerRemoved: (event) => _mapPlayerRemovedToState(event),
      playerNameUpdated: (event) => _mapPlayerNameUpdatedToState(event),
      startingPointsUpdated: (event) => _mapStartingPointsUpdatedToState(event),
      modeUpdated: (event) => _mapModeUpdatedToState(event),
      sizeUpdated: (event) => _mapSizeUpdatedToState(event),
      typeUpdated: (event) => _mapTypeUpdatedToState(event),
      gameStarted: (_) => _mapGameStartedToState(),
      dartBotAdded: (_) => _mapDartBotAddedToState(),
      dartBotRemoved: (_) => _mapDartBotRemovedToState(),
      dartBotTargetAverageUpdated: (event) =>
          _mapDartBotTargetAverageSetToState(event),
      gameReceived: (event) => _mapGameReceivedToState(event),
    );
  }

  Stream<CreateGameState> _mapGameCanceledToState() async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      if (online) {
        _playOnlineService.cancelGame();
      } else {
        _playOfflineService.cancelGame();
      }
    }
  }

  Stream<CreateGameState> _mapPlayerReorederedToState(
    _PlayerReordered event,
  ) async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      final oldIndex = event.oldIndex;
      final newIndex = event.newIndex;

      if (online) {
        _playOnlineService.reorderPlayer(oldIndex: oldIndex, newIndex: newIndex);
      } else {
        _playOfflineService.reorderPlayer(
          oldIndex: oldIndex,
          newIndex: newIndex,
        );
      }
    }
  }

  Stream<CreateGameState> _mapPlayerAddedToState() async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      if (online) {
        // TODO send invitation
      } else {
        _playOfflineService.addPlayer();
      }
    }
  }

  Stream<CreateGameState> _mapPlayerRemovedToState(
    _PlayerRemoved event,
  ) async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      final index = event.index;

      if (online) {
        _playOnlineService.removePlayer(index: index);
      } else {
        _playOfflineService.removePlayer(index: index);
      }
    }
  }

  Stream<CreateGameState> _mapPlayerNameUpdatedToState(
    _PlayerNameUpdated event,
  ) async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      final index = event.index;
      final newName = event.newName;

      if (!online) {
        _playOfflineService.updateName(index: index, newName: newName);
      }
    }
  }

  Stream<CreateGameState> _mapStartingPointsUpdatedToState(
    _StartingPointsUpdated event,
  ) async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      final newStartingPoints = event.newStartingPoints;

      if (online) {
        _playOnlineService.setStartingPoints(startingPoints: newStartingPoints);
      } else {
        _playOfflineService.setStartingPoints(startingPoints: newStartingPoints);
      }
    }
  }

  Stream<CreateGameState> _mapModeUpdatedToState(
    _ModeUpdated event,
  ) async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      final newMode = event.newMode;

      if (online) {
        _playOnlineService.setMode(mode: newMode);
      } else {
        _playOfflineService.setMode(mode: newMode);
      }
    }
  }

  Stream<CreateGameState> _mapSizeUpdatedToState(
    _SizeUpdated event,
  ) async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      final newSize = event.newSize;

      if (online) {
        _playOnlineService.setSize(size: newSize);
      } else {
        _playOfflineService.setSize(size: newSize);
      }
    }
  }

  Stream<CreateGameState> _mapTypeUpdatedToState(
    _TypeUpdated event,
  ) async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      final newType = event.newType;

      if (online) {
        _playOnlineService.setType(type: newType);
      } else {
        _playOfflineService.setType(type: newType);
      }
    }
  }

  Stream<CreateGameState> _mapGameStartedToState() async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      if (online) {
        _playOnlineService.startGame();
      } else {
        _playOfflineService.startGame();
      }
    }
  }

  Stream<CreateGameState> _mapDartBotAddedToState() async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      if (!online) {
        _playOfflineService.addDartBot();
      }
    }
  }

  Stream<CreateGameState> _mapDartBotRemovedToState() async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      if (!online) {
        _playOfflineService.removeDartBot();
      }
    }
  }

  Stream<CreateGameState> _mapDartBotTargetAverageSetToState(
    _DartBotTargetAverageUpdated event,
  ) async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      final newTargetAverage = event.newTargetAverage;

      if (!online) {
        _playOfflineService.setDartBotTargetAverage(
          targetAverage: newTargetAverage,
        );
      }
    }
  }

  Stream<CreateGameState> _mapGameReceivedToState(
    _GameReceived event,
  ) async* {
    final gameSnapshot = event.gameSnapshot;
    yield state.copyWith(gameSnapshot: gameSnapshot);
  }

  @override
  Future<void> close() {
    _gameSnapshotsSubscription?.cancel();

    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<CreateGameBloc>()) {
      getIt.resetLazySingleton<CreateGameBloc>();
    }

    return super.close();
  }
}
