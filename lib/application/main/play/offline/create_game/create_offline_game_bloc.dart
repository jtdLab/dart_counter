import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_offline_game_bloc.freezed.dart';
part 'create_offline_game_event.dart';

// TODO doc

@injectable
class CreateOfflineGameBloc extends Bloc<CreateOfflineGameEvent, void> {
  final IPlayOfflineService _playOfflineService;

  CreateOfflineGameBloc(
    this._playOfflineService,
  ) : super(
          // Set initial state
          null,
        ) {
    // Register event handlers
    on<_GameCanceled>((_, __) => _mapGameCanceledToState());
    on<_PlayerReordered>((event, _) => _mapPlayerReorderedToState(event));
    on<_PlayerAdded>((_, __) => _mapPlayerAddedToState());
    on<_PlayerRemoved>((event, _) => _mapPlayerRemovedToState(event));
    on<_PlayerNameUpdated>((event, _) => _mapPlayerNameUpdatedToState(event));
    on<_StartingPointsUpdated>(
      (event, _) => _mapStartingPointsUpdatedToState(event),
    );
    on<_ModeUpdated>((event, _) => _mapModeUpdatedToState(event));
    on<_SizeUpdated>((event, _) => _mapSizeUpdatedToState(event));
    on<_TypeUpdated>((event, _) => _mapTypeUpdatedToState(event));
    on<_GameStarted>((_, __) => _mapGameStartedToState());
    on<_DartBotAdded>((_, __) => _mapDartBotAddedToState());
    on<_DartBotRemoved>((_, __) => _mapDartBotRemovedToState());
    on<_DartBotTargetAverageUpdated>(
      (event, _) => _mapDartBotTargetAverageUpdatedToState(event),
    );
  }

  /// Handle incoming [_GameCanceled] event.
  void _mapGameCanceledToState() {
    _playOfflineService.cancelGame();
  }

  /// Handle incoming [_PlayerReordered] event.
  void _mapPlayerReorderedToState(
    _PlayerReordered event,
  ) {
    _playOfflineService.reorderPlayer(
      oldIndex: event.oldIndex,
      newIndex: event.newIndex,
    );
  }

  /// Handle incoming [_PlayerAdded] event.
  void _mapPlayerAddedToState() {
    _playOfflineService.addPlayer();
  }

  /// Handle incoming [_PlayerRemoved] event.
  void _mapPlayerRemovedToState(
    _PlayerRemoved event,
  ) {
    _playOfflineService.removePlayer(index: event.index);
  }

  /// Handle incoming [_PlayerNameUpdated] event.
  void _mapPlayerNameUpdatedToState(
    _PlayerNameUpdated event,
  ) {
    _playOfflineService.updateName(index: event.index, newName: event.newName);
  }

  /// Handle incoming [_StartingPointsUpdated] event.
  void _mapStartingPointsUpdatedToState(
    _StartingPointsUpdated event,
  ) {
    _playOfflineService.setStartingPoints(
      startingPoints: event.newStartingPoints,
    );
  }

  /// Handle incoming [_ModeUpdated] event.
  void _mapModeUpdatedToState(
    _ModeUpdated event,
  ) {
    _playOfflineService.setMode(mode: event.newMode);
  }

  /// Handle incoming [_SizeUpdated] event.
  void _mapSizeUpdatedToState(
    _SizeUpdated event,
  ) {
    _playOfflineService.setSize(size: event.newSize);
  }

  /// Handle incoming [_TypeUpdated] event.
  void _mapTypeUpdatedToState(
    _TypeUpdated event,
  ) {
    _playOfflineService.setType(type: event.newType);
  }

  /// Handle incoming [_GameStarted] event.
  void _mapGameStartedToState() {
    _playOfflineService.startGame();
  }

  /// Handle incoming [_DartBotAdded] event.
  void _mapDartBotAddedToState() {
    _playOfflineService.addDartBot();
  }

  /// Handle incoming [_DartBotRemoved] event.
  void _mapDartBotRemovedToState() {
    _playOfflineService.removeDartBot();
  }

  /// Handle incoming [_DartBotTargetAverageUpdated] event.
  void _mapDartBotTargetAverageUpdatedToState(
    _DartBotTargetAverageUpdated event,
  ) {
    _playOfflineService.setDartBotTargetAverage(
      targetAverage: event.newTargetAverage,
    );
  }
}
