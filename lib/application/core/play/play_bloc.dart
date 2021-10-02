import 'dart:async';

import 'package:async/async.dart';
import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/domain/play/i_play_offline_facade.dart';
import 'package:dart_counter/domain/play/i_play_online_facade.dart';
import 'package:dart_counter/domain/play/mode.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:dart_counter/domain/play/type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'play_bloc.freezed.dart';
part 'play_event.dart';
part 'play_state.dart';

@lazySingleton
class PlayBloc extends Bloc<PlayEvent, PlayState> with AutoResetLazySingleton {
  final IPlayOfflineFacade _playOfflineFacade;
  final IPlayOnlineFacade _playOnlineFacade;

  PlayBloc(
    this._playOfflineFacade,
    this._playOnlineFacade,
  ) : super(
          const PlayState.initial(),
        );

  StreamSubscription? _gameSubscription;

  @override
  Stream<PlayState> mapEventToState(
    PlayEvent event,
  ) async* {
    yield* event.map(
      gameCreated: (event) => _mapGameCreatedToState(event),
      gameJoined: (event) => _mapGameJoinedState(event),
      gameCanceled: (_) => _mapGameCanceledToState(),
      playerReordered: (event) => _mapPlayerReorderedToState(event),
      playerAdded: (_) => _mapPlayerAddedToState(),
      playerRemoved: (event) => _mapPlayerRemovedToState(event),
      playerNameUpdated: (event) => _mapPlayerNameUpdatedToState(event),
      startingPointsUpdated: (event) => _mapStartingPointsUpdatedToState(event),
      modeUpdated: (event) => _mapModeUpdatedToState(event),
      sizeUpdated: (event) => _mapSizeUpdatedToState(event),
      typeUpdated: (event) => _mapTypeUpdatedToState(event),
      gameStarted: (_) => _mapGameStartedToState(),
      throwPerformed: (event) => _mapThrowPerformedToState(event),
      throwUndone: (_) => _mapThrowUndoneToState(),
      dartBotAdded: (_) => _mapDartBotAddedToState(),
      dartBotRemoved: (_) => _mapDartBotRemovedToState(),
      dartBotTargetAverageUpdated: (event) =>
          _mapDartBotTargetAverageUpdatedToState(event),
      gameReceived: (event) => _mapGameReceivedToState(event),
      failureReceived: (event) => _mapFailureReceivedToState(event),
    );
  }

  Stream<PlayState> _mapGameCreatedToState(
    GameCreated event,
  ) async* {
    _gameSubscription = StreamGroup.mergeBroadcast<GameSnapshot>(
      [
        _playOfflineFacade.watchGame(),
        _playOnlineFacade.watchGame(),
      ],
    ).listen(
      (game) => add(PlayEvent.gameReceived(game: game)),
    );

    final online = event.online;
    yield PlayState.initial(online: online);

    if (online) {
      await _playOnlineFacade.createGame();
    } else {
      _playOfflineFacade.createGame();
    }
  }

  Stream<PlayState> _mapGameJoinedState(
    GameJoined event,
  ) async* {
    yield const PlayState.initial(online: true);

    final gameId = event.gameId;
    await _playOnlineFacade.joinGame(gameId: gameId);

    /**
    *  _playOnlineFacade.watchGame().listen(
          (game) => add(PlayEvent.gameReceived(game: game)),
        );
    */
  }

  Stream<PlayState> _mapGameCanceledToState() async* {
    final state = this.state;

    if (state is PlayGameInProgress) {
      final online = state.online;
      if (online) {
        // TODO failure or unit
        await _playOnlineFacade.cancelGame();
      } else {
        // TODO failure or unit
        _playOfflineFacade.cancelGame();
      }

      //yield const PlayState.loading();
    }
  }

  Stream<PlayState> _mapPlayerReorderedToState(
    PlayerReordered event,
  ) async* {
    final state = this.state;
    if (state is PlayGameInProgress) {
      final online = state.online;

      final oldIndex = event.oldIndex;
      final newIndex = event.newIndex;

      if (online) {
        // TODO failure or unit
        await _playOnlineFacade.reorderPlayer(
          oldIndex: oldIndex,
          newIndex: newIndex,
        );
      } else {
        // TODO failure or unit
        _playOfflineFacade.reorderPlayer(
          oldIndex: oldIndex,
          newIndex: newIndex,
        );
      }
    }
  }

  Stream<PlayState> _mapPlayerAddedToState() async* {
    final state = this.state;
    if (state is PlayGameInProgress) {
      final online = state.online;

      if (!online) {
        // TODO failure or unit
        _playOfflineFacade.addPlayer();
      }
    }
  }

  Stream<PlayState> _mapPlayerRemovedToState(
    PlayerRemoved event,
  ) async* {
    final state = this.state;
    if (state is PlayGameInProgress) {
      final online = state.online;

      final index = event.index;

      if (online) {
        await _playOnlineFacade.removePlayer(
          index: index,
        );
      } else {
        _playOfflineFacade.removePlayer(
          index: index,
        );
      }
    }
  }

  Stream<PlayState> _mapPlayerNameUpdatedToState(
    PlayerNameUpdated event,
  ) async* {
    final state = this.state;
    if (state is PlayGameInProgress) {
      final online = state.online;

      final index = event.index;
      final newName = event.newName;

      if (!online) {
        _playOfflineFacade.updateName(index: index, newName: newName);
      }
    }
  }

  Stream<PlayState> _mapStartingPointsUpdatedToState(
    StartingPointsUpdated event,
  ) async* {
    final state = this.state;
    if (state is PlayGameInProgress) {
      final online = state.online;

      final newStartingPoints = event.newStartingPoints;

      if (online) {
        await _playOnlineFacade.setStartingPoints(
          startingPoints: newStartingPoints,
        );
      } else {
        _playOfflineFacade.setStartingPoints(
          startingPoints: newStartingPoints,
        );
      }
    }
  }

  Stream<PlayState> _mapModeUpdatedToState(
    ModeUpdated event,
  ) async* {
    final state = this.state;
    if (state is PlayGameInProgress) {
      final online = state.online;

      final newMode = event.newMode;

      if (online) {
        await _playOnlineFacade.setMode(mode: newMode);
      } else {
        _playOfflineFacade.setMode(mode: newMode);
      }
    }
  }

  Stream<PlayState> _mapSizeUpdatedToState(
    SizeUpdated event,
  ) async* {
    final state = this.state;
    if (state is PlayGameInProgress) {
      final online = state.online;

      final newSize = event.newSize;

      if (online) {
        await _playOnlineFacade.setSize(size: newSize);
      } else {
        _playOfflineFacade.setSize(size: newSize);
      }
    }
  }

  Stream<PlayState> _mapTypeUpdatedToState(
    TypeUpdated event,
  ) async* {
    final state = this.state;
    if (state is PlayGameInProgress) {
      final online = state.online;

      final newType = event.newType;

      if (online) {
        await _playOnlineFacade.setType(type: newType);
      } else {
        _playOfflineFacade.setType(type: newType);
      }
    }
  }

  Stream<PlayState> _mapGameStartedToState() async* {
    final state = this.state;
    if (state is PlayGameInProgress) {
      final online = state.online;

      if (online) {
        await _playOnlineFacade.startGame();
      } else {
        _playOfflineFacade.startGame();
      }
    }
  }

  Stream<PlayState> _mapThrowPerformedToState(
    ThrowPerformed event,
  ) async* {
    final state = this.state;
    if (state is PlayGameInProgress) {
      final online = state.online;
      final t = event.t;

      if (online) {
        await _playOnlineFacade.performThrow(t: t);
      } else {
        _playOfflineFacade.performThrow(t: t);
      }
    }
  }

  Stream<PlayState> _mapThrowUndoneToState() async* {
    final state = this.state;
    if (state is PlayGameInProgress) {
      final online = state.online;

      if (online) {
        await _playOnlineFacade.undoThrow();
      } else {
        _playOfflineFacade.undoThrow();
      }
    }
  }

  Stream<PlayState> _mapDartBotAddedToState() async* {
    final state = this.state;
    if (state is PlayGameInProgress) {
      final online = state.online;

      if (!online) {
        _playOfflineFacade.addDartBot();
      }
    }
  }

  Stream<PlayState> _mapDartBotRemovedToState() async* {
    final state = this.state;
    if (state is PlayGameInProgress) {
      final online = state.online;
      if (!online) {
        _playOfflineFacade.removeDartBot();
      }
    }
  }

  Stream<PlayState> _mapDartBotTargetAverageUpdatedToState(
    DartBotTargetAverageUpdated event,
  ) async* {
    final state = this.state;
    if (state is PlayGameInProgress) {
      final online = state.online;

      final newTargetAverage = event.newTargetAverage;

      if (!online) {
        _playOfflineFacade.setDartBotTargetAverage(
          targetAverage: newTargetAverage,
        );
      }
    }
  }

  Stream<PlayState> _mapGameReceivedToState(
    GameReceived event,
  ) async* {
    yield state.map(
      initial: (initial) {
        final online = initial.online;
        if (online == null) {
          return PlayState.initial(online: online);
        } else {
          return PlayState.gameInProgress(online: online, game: event.game);
        }
      },
      gameInProgress: (gameInProgress) => gameInProgress.copyWith(
        game: event.game,
      ),
    );
  }

  Stream<PlayState> _mapFailureReceivedToState(
    FailureReceived event,
  ) async* {
    // TODO implement
    // switch over failure types
  }

  @override
  Future<void> close() {
    _gameSubscription?.cancel();
    return super.close();
  }
}
