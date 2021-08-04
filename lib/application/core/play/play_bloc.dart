import 'dart:async';

import 'package:async/async.dart';
import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/domain/play/i_play_offline_facade.dart';
import 'package:dart_counter/domain/play/mode.dart';
import 'package:dart_counter/domain/play/type.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'play_bloc.freezed.dart';
part 'play_event.dart';
part 'play_state.dart';

@lazySingleton
class PlayBloc extends Bloc<PlayEvent, PlayState> with AutoResetLazySingleton {
  final IPlayOfflineFacade _playOfflineFacade;
  final IPlayOfflineFacade _playOnlineFacade;

  PlayBloc(
    this._playOfflineFacade,
    this._playOnlineFacade,
  ) : super(
          const PlayState.loading(),
        );

  StreamSubscription<Either<PlayFailure, GameSnapshot>>? _gameSubscription;

  @override
  Stream<PlayState> mapEventToState(
    PlayEvent event,
  ) async* {
    yield* event.map(
      gameCreated: (event) => _mapGameCreatedToState(event),
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
    _gameSubscription =
        StreamGroup.mergeBroadcast<Either<PlayFailure, GameSnapshot>>(
      [
        _playOfflineFacade.watchGame(),
        _playOnlineFacade.watchGame(),
      ],
    ).listen(
      (failureOrGame) {
        failureOrGame.fold(
          (failure) => add(
            PlayEvent.failureReceived(
              failure: failure,
            ),
          ),
          (game) => add(
            PlayEvent.gameReceived(
              game: game,
            ),
          ),
        );
      },
    );

    final online = event.online;
    yield PlayState.loading(online: online);
  }

  Stream<PlayState> _mapGameCanceledToState() async* {
    final online = state.map(
      loading: (_) => throw Error(),
      success: (success) => success.online,
    );

    if (online) {
      // TODO failure or unit
      await _playOnlineFacade.createGame();
    } else {
      // TODO failure or unit
      await _playOfflineFacade.createGame();
    }

    yield const PlayState.loading();
  }

  Stream<PlayState> _mapPlayerReorderedToState(
    PlayerReordered event,
  ) async* {
    final online = state.map(
      loading: (_) => throw Error(),
      success: (success) => success.online,
    );

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
      await _playOfflineFacade.reorderPlayer(
        oldIndex: oldIndex,
        newIndex: newIndex,
      );
    }
  }

  Stream<PlayState> _mapPlayerAddedToState() async* {
    final online = state.map(
      loading: (_) => throw Error(),
      success: (success) => success.online,
    );

    if (online) {
      // TODO failure or unit
      await _playOnlineFacade.addPlayer();
    } else {
      // TODO failure or unit
      await _playOfflineFacade.addPlayer();
    }
  }

  Stream<PlayState> _mapPlayerRemovedToState(
    PlayerRemoved event,
  ) async* {
    final online = state.map(
      loading: (_) => throw Error(),
      success: (success) => success.online,
    );

    final index = event.index;

    if (online) {
      // TODO failure or unit
      await _playOnlineFacade.removePlayer(
        index: index,
      );
    } else {
      // TODO failure or unit
      await _playOfflineFacade.removePlayer(
        index: index,
      );
    }
  }

  Stream<PlayState> _mapPlayerNameUpdatedToState(
    PlayerNameUpdated event,
  ) async* {
    final online = state.map(
      loading: (_) => throw Error(),
      success: (success) => success.online,
    );

    final index = event.index;
    final newName = event.newName;

    if (!online) {
      // TODO failure or unit
      await _playOfflineFacade.updateName(index: index, newName: newName);
    }
  }

  Stream<PlayState> _mapStartingPointsUpdatedToState(
    StartingPointsUpdated event,
  ) async* {
    final online = state.map(
      loading: (_) => throw Error(),
      success: (success) => success.online,
    );

    final newStartingPoints = event.newStartingPoints;

    if (online) {
      // TODO failure or unit
      await _playOnlineFacade.setStartingPoints(
        startingPoints: newStartingPoints,
      );
    } else {
      // TODO failure or unit
      await _playOfflineFacade.setStartingPoints(
        startingPoints: newStartingPoints,
      );
    }
  }

  Stream<PlayState> _mapModeUpdatedToState(
    ModeUpdated event,
  ) async* {
    final online = state.map(
      loading: (_) => throw Error(),
      success: (success) => success.online,
    );

    final newMode = event.newMode;

    if (online) {
      // TODO failure or unit
      await _playOnlineFacade.setMode(mode: newMode);
    } else {
      // TODO failure or unit
      await _playOfflineFacade.setMode(mode: newMode);
    }
  }

  Stream<PlayState> _mapSizeUpdatedToState(
    SizeUpdated event,
  ) async* {
    final online = state.map(
      loading: (_) => throw Error(),
      success: (success) => success.online,
    );

    final newSize = event.newSize;

    if (online) {
      // TODO failure or unit
      await _playOnlineFacade.setSize(size: newSize);
    } else {
      // TODO failure or unit
      await _playOfflineFacade.setSize(size: newSize);
    }
  }

  Stream<PlayState> _mapTypeUpdatedToState(
    TypeUpdated event,
  ) async* {
    final online = state.map(
      loading: (_) => throw Error(),
      success: (success) => success.online,
    );

    final newType = event.newType;

    if (online) {
      // TODO failure or unit
      await _playOnlineFacade.setType(type: newType);
    } else {
      // TODO failure or unit
      await _playOfflineFacade.setType(type: newType);
    }
  }

  Stream<PlayState> _mapGameStartedToState() async* {
    final online = state.map(
      loading: (_) => throw Error(),
      success: (success) => success.online,
    );

    if (online) {
      // TODO failure or unit
      await _playOnlineFacade.startGame();
    } else {
      // TODO failure or unit
      await _playOfflineFacade.startGame();
    }
  }

  Stream<PlayState> _mapThrowPerformedToState(
    ThrowPerformed event,
  ) async* {
    final online = state.map(
      loading: (_) => throw Error(),
      success: (success) => success.online,
    );

    Throw t = event.t;

    if (online) {
      // TODO failure or unit
      await _playOnlineFacade.performThrow(t: t);
    } else {
      // TODO failure or unit
      await _playOfflineFacade.performThrow(t: t);
    }
  }

  Stream<PlayState> _mapThrowUndoneToState() async* {
    final online = state.map(
      loading: (_) => throw Error(),
      success: (success) => success.online,
    );

    if (online) {
      // TODO failure or unit
      await _playOnlineFacade.undoThrow();
    } else {
      // TODO failure or unit
      await _playOfflineFacade.undoThrow();
    }
  }

  Stream<PlayState> _mapDartBotAddedToState() async* {
    final online = state.map(
      loading: (_) => throw Error(),
      success: (success) => success.online,
    );

    if (!online) {
      // TODO failure or unit
      await _playOfflineFacade.addDartBot();
    }
  }

  Stream<PlayState> _mapDartBotRemovedToState() async* {
    final online = state.map(
      loading: (_) => throw Error(),
      success: (success) => success.online,
    );

    if (!online) {
      // TODO failure or unit
      await _playOfflineFacade.removeDartBot();
    }
  }

  Stream<PlayState> _mapDartBotTargetAverageUpdatedToState(
    DartBotTargetAverageUpdated event,
  ) async* {
    final online = state.map(
      loading: (_) => throw Error(),
      success: (success) => success.online,
    );

    final newTargetAverage = event.newTargetAverage;

    if (!online) {
      // TODO failure or unit
      await _playOfflineFacade.setDartBotTargetAverage(
        targetAverage: newTargetAverage,
      );
    }
  }

  Stream<PlayState> _mapGameReceivedToState(
    GameReceived event,
  ) async* {
    yield state.map(
      loading: (loading) => PlayState.success(
        online: loading
            .online!, // TODO ! will throw but maybe UnexpectedStateError is better here
        game: event.game,
      ),
      success: (success) => success.copyWith(
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
