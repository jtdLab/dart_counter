import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:dart_counter/domain/play/throw.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'play_event.dart';
part 'play_state.dart';
part 'play_bloc.freezed.dart';

@LazySingleton()
class PlayBloc extends Bloc<PlayEvent, PlayState> {
  final IPlayFacade _playFacade;

  StreamSubscription<Game>? _gameStreamSubscription;

  PlayBloc(this._playFacade) : super(const PlayState.inProgress()) {
    _gameStreamSubscription = _playFacade.watchGame().listen((game) {
      add(PlayEvent.gameReceived(game: game));
    });
  }

  @override
  Stream<PlayState> mapEventToState(
    PlayEvent event,
  ) async* {
    yield* event.map(
      gameJoined: (event) => _mapGameJoinedToState(event),
      gameCreated: (event) => _mapGameCreatedToState(event),
      playerReordered: (event) => _mapPlayerReorederedToState(event),
      playerAdded: (_) => _mapPlayerAddedToState(),
      playerRemoved: (event) => _mapPlayerRemovedToState(event),
      playerNameUpdated: (event) => _mapPlayerNameUpdatedToState(event),
      startingPointsSet: (event) => _mapStartingPointsSetToState(event),
      modeSet: (event) => _mapModeSetToState(event),
      sizeSet: (event) => _mapSizeSetToState(event),
      typeSet: (event) => _mapTypeSetToState(event),
      gameStarted: (_) => _mapGameStartedToState(),
      gameCanceled: (_) => _mapGameCanceledToState(),
      throwPerformed: (event) => _mapThrowPerformedToState(event),
      throwUndone: (_) => _mapThrowUndoneToState(),
      dartBotAdded: (_) => _mapDartBotAddedToState(),
      dartBotRemoved: (_) => _mapDartBotRemovedToState(),
      dartBotTargetAverageSet: (event) =>
          _mapDartBotTargetAverageSetToState(event),
      gameReceived: (event) => _mapGameReceivedToState(event),
    );
  }

  Stream<PlayState> _mapGameJoinedToState(GameJoined event) async* {
    final invitation = event.invitation;
    final failureOrUnit = await _playFacade.joinGame(invitation.lobbyCode);
    yield failureOrUnit.fold(
      (l) => const PlayState.failure(),
      (r) => const PlayState.inProgress(),
    );
  }

  Stream<PlayState> _mapGameCreatedToState(GameCreated event) async* {
    final online = event.online;
    final failureOrUnit = await _playFacade.createGame(online: online);
    yield failureOrUnit.fold(
      (l) => const PlayState.failure(),
      (r) => const PlayState.inProgress(),
    );
  }

  Stream<PlayState> _mapPlayerReorederedToState(PlayerReordered event) async* {
    final oldIndex = event.oldIndex;
    final newIndex = event.newIndex;
    final failureOrUnit = await _playFacade.reorderPlayer(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
    if (failureOrUnit.isLeft()) {
      yield const PlayState.failure();
    }
  }

  Stream<PlayState> _mapPlayerAddedToState() async* {
    final failureOrUnit = await _playFacade.addPlayer();
    if (failureOrUnit.isLeft()) {
      yield const PlayState.failure();
    }
  }

  Stream<PlayState> _mapPlayerRemovedToState(PlayerRemoved event) async* {
    final index = event.index;

    final failureOrUnit = await _playFacade.removePlayer(
      index: index,
    );
    if (failureOrUnit.isLeft()) {
      yield const PlayState.failure();
    }
  }

  Stream<PlayState> _mapPlayerNameUpdatedToState(
      PlayerNameUpdated event) async* {
    final index = event.index;
    final newName = event.newName;

    final failureOrUnit = await _playFacade.updateName(
      index: index,
      newName: newName,
    );

    if (failureOrUnit.isLeft()) {
      yield const PlayState.failure();
    }
  }

  Stream<PlayState> _mapStartingPointsSetToState(
      StartingPointsSet event) async* {
    final newStartingPoints = event.newStartingPoints;

    final failureOrUnit = await _playFacade.setStartingPoints(
      startingPoints: newStartingPoints,
    );

    if (failureOrUnit.isLeft()) {
      yield const PlayState.failure();
    }
  }

  Stream<PlayState> _mapModeSetToState(ModeSet event) async* {
    final newMode = event.newMode;

    final failureOrUnit = await _playFacade.setMode(
      mode: newMode,
    );

    if (failureOrUnit.isLeft()) {
      yield const PlayState.failure();
    }
  }

  Stream<PlayState> _mapSizeSetToState(SizeSet event) async* {
    final newSize = event.newSize;

    final failureOrUnit = await _playFacade.setSize(
      size: newSize,
    );

    if (failureOrUnit.isLeft()) {
      yield const PlayState.failure();
    }
  }

  Stream<PlayState> _mapTypeSetToState(TypeSet event) async* {
    final newType = event.newType;

    final failureOrUnit = await _playFacade.setType(
      type: newType,
    );

    if (failureOrUnit.isLeft()) {
      yield const PlayState.failure();
    }
  }

  Stream<PlayState> _mapGameStartedToState() async* {
    final failureOrUnit = await _playFacade.startGame();

    if (failureOrUnit.isLeft()) {
      yield const PlayState.failure();
    }
  }

  Stream<PlayState> _mapGameCanceledToState() async* {
    final failureOrUnit = await _playFacade.cancelGame();

    if (failureOrUnit.isLeft()) {
      yield const PlayState.failure();
    }
  }

  Stream<PlayState> _mapThrowPerformedToState(ThrowPerformed event) async* {
    final t = event.t;
    final failureOrUnit = await _playFacade.performThrow(t: t);

    if (failureOrUnit.isLeft()) {
      yield const PlayState.failure();
    }
  }

  Stream<PlayState> _mapThrowUndoneToState() async* {
    final failureOrUnit = await _playFacade.undoThrow();

    if (failureOrUnit.isLeft()) {
      yield const PlayState.failure();
    }
  }

  Stream<PlayState> _mapDartBotAddedToState() async* {
    final failureOrUnit = await _playFacade.addDartBot();

    if (failureOrUnit.isLeft()) {
      yield const PlayState.failure();
    }
  }

  Stream<PlayState> _mapDartBotRemovedToState() async* {
    final failureOrUnit = await _playFacade.removeDartBot();

    if (failureOrUnit.isLeft()) {
      yield const PlayState.failure();
    }
  }

  Stream<PlayState> _mapDartBotTargetAverageSetToState(
      DartBotTargetAverageSet event) async* {
    final newTargetAverage = event.newTargetAverage;
    final failureOrUnit = await _playFacade.setDartBotTargetAverage(
        targetAverage: newTargetAverage);

    if (failureOrUnit.isLeft()) {
      yield const PlayState.failure();
    }
  }

  Stream<PlayState> _mapGameReceivedToState(GameReceived event) async* {
    final game = event.game;
    final online = _playFacade.online;
    yield PlayState.success(online: online, game: game);
  }

  /**
  *  @override
  void onTransition(Transition<PlayEvent, PlayState> transition) {
    print('${transition.currentState.runtimeType} ${transition.nextState.runtimeType}');
    super.onTransition(transition);
  }
  */

  @override
  Future<void> close() {
    print('CLOSED PLAYBLOC');
    _gameStreamSubscription?.cancel();
    return super.close();
  }
}
