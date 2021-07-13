import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/application/core/game/game_bloc.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_game_event.dart';
part 'create_game_state.dart';
part 'create_game_bloc.freezed.dart';

@lazySingleton
class CreateGameBloc extends Bloc<CreateGameEvent, CreateGameState> with AutoResetLazySingleton {
  final IPlayFacade _playFacade;

  final GameBloc _gameBloc;

  CreateGameBloc(
    this._playFacade,
    this._gameBloc,
  ) : super(
          CreateGameState(
            game: _gameBloc.state.map(
              loading: (_) => throw UnexpectedStateError(),
              success: (success) => success.game,
            ),
          ),
        ) {
    _gameSubscription = _gameBloc.stream.map((state) {
      return state.map(
        loading: (_) => throw UnexpectedStateError(),
        success: (success) => success.game,
      );
    }).listen((game) {
      add(CreateGameEvent.gameReceived(game: game));
    });
  }

  StreamSubscription<Game>? _gameSubscription;

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
      throwPerformed: (event) => _mapThrowPerformedToState(event),
      throwUndone: (_) => _mapThrowUndoneToState(),
      dartBotAdded: (_) => _mapDartBotAddedToState(),
      dartBotRemoved: (_) => _mapDartBotRemovedToState(),
      dartBotTargetAverageUpdated: (event) =>
          _mapDartBotTargetAverageSetToState(event),
      gameReceived: (event) => _mapGameReceivedToState(event),
    );
  }

  Stream<CreateGameState> _mapGameCanceledToState() async* {
    final failureOrUnit = await _playFacade.cancelGame();
    if (failureOrUnit.isLeft()) {
      throw Error(); // TODO
    }
  }

  Stream<CreateGameState> _mapPlayerReorederedToState(
    PlayerReordered event,
  ) async* {
    final oldIndex = event.oldIndex;
    final newIndex = event.newIndex;
    final failureOrUnit = await _playFacade.reorderPlayer(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
    if (failureOrUnit.isLeft()) {
      throw Error(); // TODO
    }
  }

  Stream<CreateGameState> _mapPlayerAddedToState() async* {
    final failureOrUnit = await _playFacade.addPlayer();
    if (failureOrUnit.isLeft()) {
      throw Error(); // TODO
    }
  }

  Stream<CreateGameState> _mapPlayerRemovedToState(
    PlayerRemoved event,
  ) async* {
    final index = event.index;

    final failureOrUnit = await _playFacade.removePlayer(
      index: index,
    );
    if (failureOrUnit.isLeft()) {
      throw Error(); // TODO
    }
  }

  Stream<CreateGameState> _mapPlayerNameUpdatedToState(
    PlayerNameUpdated event,
  ) async* {
    final index = event.index;
    final newName = event.newName;

    final failureOrUnit = await _playFacade.updateName(
      index: index,
      newName: newName,
    );

    if (failureOrUnit.isLeft()) {
      throw Error(); // TODO
    }
  }

  Stream<CreateGameState> _mapStartingPointsUpdatedToState(
    StartingPointsUpdated event,
  ) async* {
    final newStartingPoints = event.newStartingPoints;

    final failureOrUnit = await _playFacade.setStartingPoints(
      startingPoints: newStartingPoints,
    );

    if (failureOrUnit.isLeft()) {
      throw Error(); // TODO
    }
  }

  Stream<CreateGameState> _mapModeUpdatedToState(
    ModeUpdated event,
  ) async* {
    final newMode = event.newMode;

    final failureOrUnit = await _playFacade.setMode(
      mode: newMode,
    );

    if (failureOrUnit.isLeft()) {
      throw Error(); // TODO
    }
  }

  Stream<CreateGameState> _mapSizeUpdatedToState(
    SizeUpdated event,
  ) async* {
    final newSize = event.newSize;

    final failureOrUnit = await _playFacade.setSize(
      size: newSize,
    );

    if (failureOrUnit.isLeft()) {
      throw Error(); // TODO
    }
  }

  Stream<CreateGameState> _mapTypeUpdatedToState(
    TypeUpdated event,
  ) async* {
    final newType = event.newType;

    final failureOrUnit = await _playFacade.setType(
      type: newType,
    );

    if (failureOrUnit.isLeft()) {
      throw Error(); // TODO
    }
  }

  Stream<CreateGameState> _mapGameStartedToState() async* {
    final failureOrUnit = await _playFacade.startGame();

    if (failureOrUnit.isLeft()) {
      throw Error(); // TODO
    }
  }

  Stream<CreateGameState> _mapThrowPerformedToState(
      ThrowPerformed event) async* {
    final t = event.t;
    final failureOrUnit = await _playFacade.performThrow(t: t);

    if (failureOrUnit.isLeft()) {
      throw Error(); // TODO
    }
  }

  Stream<CreateGameState> _mapThrowUndoneToState() async* {
    final failureOrUnit = await _playFacade.undoThrow();

    if (failureOrUnit.isLeft()) {
      throw Error(); // TODO
    }
  }

  Stream<CreateGameState> _mapDartBotAddedToState() async* {
    final failureOrUnit = await _playFacade.addDartBot();

    if (failureOrUnit.isLeft()) {
      throw Error(); // TODO
    }
  }

  Stream<CreateGameState> _mapDartBotRemovedToState() async* {
    final failureOrUnit = await _playFacade.removeDartBot();

    if (failureOrUnit.isLeft()) {
      throw Error(); // TODO
    }
  }

  Stream<CreateGameState> _mapDartBotTargetAverageSetToState(
    DartBotTargetAverageUpdated event,
  ) async* {
    final newTargetAverage = event.newTargetAverage;
    final failureOrUnit = await _playFacade.setDartBotTargetAverage(
        targetAverage: newTargetAverage);

    if (failureOrUnit.isLeft()) {
      throw Error(); // TODO
    }
  }

  Stream<CreateGameState> _mapGameReceivedToState(
    GameReceived event,
  ) async* {
    yield state.copyWith(game: event.game);
  }

  @override
  Future<void> close() {
    _gameSubscription?.cancel();
    return super.close();
  }
}
