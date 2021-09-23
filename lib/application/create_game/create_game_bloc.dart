import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/domain/friend/i_friend_facade.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
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
  final PlayBloc _playBloc;
  final IFriendFacade _friendFacade;

  CreateGameBloc(
    this._playBloc,
    this._friendFacade,
  ) : super(
          CreateGameState(
            game: _playBloc.state.map(
              loading: (_) => throw UnexpectedStateError(),
              success: (success) => success.game,
            ),
          ),
        ) {
    _gameSubscription = _playBloc.stream.map((state) {
      return state.map(
        loading: (_) => throw UnexpectedStateError(),
        success: (success) => success.game,
      );
    }).listen((game) {
      add(CreateGameEvent.gameReceived(game: game));
    });
  }

  StreamSubscription<GameSnapshot>? _gameSubscription;

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
    _playBloc.add(const PlayEvent.gameCanceled());
  }

  Stream<CreateGameState> _mapPlayerReorederedToState(
    PlayerReordered event,
  ) async* {
    final oldIndex = event.oldIndex;
    final newIndex = event.newIndex;
    _playBloc.add(
      PlayEvent.playerReordered(
        oldIndex: oldIndex,
        newIndex: newIndex,
      ),
    );
  }

  Stream<CreateGameState> _mapPlayerAddedToState() async* {
    final online = _playBloc.state.map(
      loading: (_) => false,
      success: (success) => success.online,
    );

    if (online) {
      // TODO send invitation

    }

    _playBloc.add(const PlayEvent.playerAdded());
  }

  Stream<CreateGameState> _mapPlayerRemovedToState(
    PlayerRemoved event,
  ) async* {
    final index = event.index;

    _playBloc.add(
      PlayEvent.playerRemoved(index: index),
    );
  }

  Stream<CreateGameState> _mapPlayerNameUpdatedToState(
    PlayerNameUpdated event,
  ) async* {
    final index = event.index;
    final newName = event.newName;

    _playBloc.add(
      PlayEvent.playerNameUpdated(
        index: index,
        newName: newName,
      ),
    );
  }

  Stream<CreateGameState> _mapStartingPointsUpdatedToState(
    StartingPointsUpdated event,
  ) async* {
    final newStartingPoints = event.newStartingPoints;

    _playBloc.add(
      PlayEvent.startingPointsUpdated(
        newStartingPoints: newStartingPoints,
      ),
    );
  }

  Stream<CreateGameState> _mapModeUpdatedToState(
    ModeUpdated event,
  ) async* {
    final newMode = event.newMode;

    _playBloc.add(
      PlayEvent.modeUpdated(
        newMode: newMode,
      ),
    );
  }

  Stream<CreateGameState> _mapSizeUpdatedToState(
    SizeUpdated event,
  ) async* {
    final newSize = event.newSize;

    _playBloc.add(
      PlayEvent.sizeUpdated(
        newSize: newSize,
      ),
    );
  }

  Stream<CreateGameState> _mapTypeUpdatedToState(
    TypeUpdated event,
  ) async* {
    final newType = event.newType;

    _playBloc.add(
      PlayEvent.typeUpdated(
        newType: newType,
      ),
    );
  }

  Stream<CreateGameState> _mapGameStartedToState() async* {
    _playBloc.add(
      const PlayEvent.gameStarted(),
    );
  }

  Stream<CreateGameState> _mapDartBotAddedToState() async* {
    _playBloc.add(
      const PlayEvent.dartBotAdded(),
    );
  }

  Stream<CreateGameState> _mapDartBotRemovedToState() async* {
    _playBloc.add(
      const PlayEvent.dartBotRemoved(),
    );
  }

  Stream<CreateGameState> _mapDartBotTargetAverageSetToState(
    DartBotTargetAverageUpdated event,
  ) async* {
    final newTargetAverage = event.newTargetAverage;

    _playBloc.add(
      PlayEvent.dartBotTargetAverageUpdated(
        newTargetAverage: newTargetAverage,
      ),
    );
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
