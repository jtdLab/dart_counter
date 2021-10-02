import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/domain/play/i_play_offline_facade.dart';
import 'package:dart_counter/domain/play/i_play_online_facade.dart';
import 'package:dart_counter/domain/play/mode.dart';
import 'package:dart_counter/domain/play/type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_game_bloc.freezed.dart';
part 'create_game_event.dart';
part 'create_game_state.dart';

@lazySingleton
class CreateGameBloc extends Bloc<CreateGameEvent, CreateGameState>
    with AutoResetLazySingleton {
  final IPlayOfflineFacade _playOfflineFacade;
  final IPlayOnlineFacade _playOnlineFacade;

  final PlayBloc _playBloc;

  StreamSubscription? _gameSnapshotsSubscription;

  CreateGameBloc(
    this._playOfflineFacade,
    this._playOnlineFacade,
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
        _playOnlineFacade.cancelGame();
      } else {
        _playOfflineFacade.cancelGame();
      }
    }
  }

  Stream<CreateGameState> _mapPlayerReorederedToState(
    PlayerReordered event,
  ) async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      final oldIndex = event.oldIndex;
      final newIndex = event.newIndex;

      if (online) {
        _playOnlineFacade.reorderPlayer(oldIndex: oldIndex, newIndex: newIndex);
      } else {
        _playOfflineFacade.reorderPlayer(
            oldIndex: oldIndex, newIndex: newIndex);
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
        _playOfflineFacade.addPlayer();
      }
    }
  }

  Stream<CreateGameState> _mapPlayerRemovedToState(
    PlayerRemoved event,
  ) async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      final index = event.index;

      if (online) {
        _playOnlineFacade.removePlayer(index: index);
      } else {
        _playOfflineFacade.removePlayer(index: index);
      }
    }
  }

  Stream<CreateGameState> _mapPlayerNameUpdatedToState(
    PlayerNameUpdated event,
  ) async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      final index = event.index;
      final newName = event.newName;

      if (!online) {
        _playOfflineFacade.updateName(index: index, newName: newName);
      }
    }
  }

  Stream<CreateGameState> _mapStartingPointsUpdatedToState(
    StartingPointsUpdated event,
  ) async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      final newStartingPoints = event.newStartingPoints;

      if (online) {
        _playOnlineFacade.setStartingPoints(startingPoints: newStartingPoints);
      } else {
        _playOfflineFacade.setStartingPoints(startingPoints: newStartingPoints);
      }
    }
  }

  Stream<CreateGameState> _mapModeUpdatedToState(
    ModeUpdated event,
  ) async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      final newMode = event.newMode;

      if (online) {
        _playOnlineFacade.setMode(mode: newMode);
      } else {
        _playOfflineFacade.setMode(mode: newMode);
      }
    }
  }

  Stream<CreateGameState> _mapSizeUpdatedToState(
    SizeUpdated event,
  ) async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      final newSize = event.newSize;

      if (online) {
        _playOnlineFacade.setSize(size: newSize);
      } else {
        _playOfflineFacade.setSize(size: newSize);
      }
    }
  }

  Stream<CreateGameState> _mapTypeUpdatedToState(
    TypeUpdated event,
  ) async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      final newType = event.newType;

      if (online) {
        _playOnlineFacade.setType(type: newType);
      } else {
        _playOfflineFacade.setType(type: newType);
      }
    }
  }

  Stream<CreateGameState> _mapGameStartedToState() async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      if (online) {
        _playOnlineFacade.startGame();
      } else {
        _playOfflineFacade.startGame();
      }
    }
  }

  Stream<CreateGameState> _mapDartBotAddedToState() async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      if (!online) {
        _playOfflineFacade.addDartBot();
      }
    }
  }

  Stream<CreateGameState> _mapDartBotRemovedToState() async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      if (!online) {
        _playOfflineFacade.removeDartBot();
      }
    }
  }

  Stream<CreateGameState> _mapDartBotTargetAverageSetToState(
    DartBotTargetAverageUpdated event,
  ) async* {
    final playState = _playBloc.state;
    if (playState is PlayGameInProgress) {
      final online = playState.gameSnapshot is OnlineGameSnapshot;

      final newTargetAverage = event.newTargetAverage;

      if (!online) {
        _playOfflineFacade.setDartBotTargetAverage(
          targetAverage: newTargetAverage,
        );
      }
    }
  }

  Stream<CreateGameState> _mapGameReceivedToState(
    GameReceived event,
  ) async* {
    yield state.copyWith(gameSnapshot: event.gameSnapshot);
  }

  @override
  Future<void> close() {
    _gameSnapshotsSubscription?.cancel();
    return super.close();
  }
}
