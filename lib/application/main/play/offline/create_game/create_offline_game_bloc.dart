import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_offline_game_bloc.freezed.dart';
part 'create_offline_game_event.dart';

// TODO doc

@injectable
class CreateOfflineGameBloc
    extends Bloc<CreateOfflineGameEvent, OfflineGameSnapshot> {
  final IPlayOfflineService _playOfflineService;

  CreateOfflineGameBloc(
    this._playOfflineService,
    OfflineGameSnapshot initialSnapshot,
  ) : super(
          // Set initial state
          initialSnapshot,
        ) {
    // Register event handlers
    on<_Started>(
      (_, emit) async => _handleStarted(emit),
      transformer: restartable(),
    );
    on<_GameCanceled>((_, __) => _handleGameCanceled());
    on<_PlayerReordered>((event, _) => _handlePlayerReordered(event));
    on<_PlayerAdded>((_, __) => _handlePlayerAdded());
    on<_PlayerRemoved>((event, _) => _handlePlayerRemoved(event));
    on<_PlayerNameUpdated>((event, _) => _handlePlayerNameUpdated(event));
    on<_StartingPointsUpdated>(
      (event, _) => _handleStartingPointsUpdated(event),
    );
    on<_ModeUpdated>((event, _) => _handleModeUpdated(event));
    on<_SizeUpdated>((event, _) => _handleSizeUpdated(event));
    on<_TypeUpdated>((event, _) => _handleTypeUpdated(event));
    on<_GameStarted>((_, __) => _handleGameStarted());
    on<_DartBotAdded>((_, __) => _handleDartBotAdded());
    on<_DartBotRemoved>((_, __) => _handleDartBotRemoved());
    on<_DartBotTargetAverageUpdated>(
      (event, _) => _handleDartBotTargetAverageUpdated(event),
    );
  }

  /// Returns instance registered inside getIt.
  factory CreateOfflineGameBloc.getIt(
    OfflineGameSnapshot initialSnapshot,
  ) =>
      getIt<CreateOfflineGameBloc>(param1: [initialSnapshot]);

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of `OfflineGameSnapshot`
  @factoryMethod
  factory CreateOfflineGameBloc.injectable(
    IPlayOfflineService playOfflineService,
    @factoryParam List<Object> otherDependencies,
  ) =>
      CreateOfflineGameBloc(
        playOfflineService,
        otherDependencies[0] as OfflineGameSnapshot,
      );

  /// Handle incoming [_Started] event.
  Future<void> _handleStarted(
    Emitter<OfflineGameSnapshot> emit,
  ) async {
    await emit.forEach<OfflineGameSnapshot>(
      _playOfflineService.watchGame(),
      onData: (snapshot) => snapshot,
    );
  }

  /// Handle incoming [_GameCanceled] event.
  void _handleGameCanceled() {
    _playOfflineService.cancelGame();
  }

  /// Handle incoming [_PlayerReordered] event.
  void _handlePlayerReordered(
    _PlayerReordered event,
  ) {
    _playOfflineService.reorderPlayer(
      oldIndex: event.oldIndex,
      newIndex: event.newIndex,
    );
  }

  /// Handle incoming [_PlayerAdded] event.
  void _handlePlayerAdded() {
    _playOfflineService.addPlayer();
  }

  /// Handle incoming [_PlayerRemoved] event.
  void _handlePlayerRemoved(
    _PlayerRemoved event,
  ) {
    _playOfflineService.removePlayer(index: event.index);
  }

  /// Handle incoming [_PlayerNameUpdated] event.
  void _handlePlayerNameUpdated(
    _PlayerNameUpdated event,
  ) {
    _playOfflineService.updateName(index: event.index, newName: event.newName);
  }

  /// Handle incoming [_StartingPointsUpdated] event.
  void _handleStartingPointsUpdated(
    _StartingPointsUpdated event,
  ) {
    _playOfflineService.setStartingPoints(
      startingPoints: event.newStartingPoints,
    );
  }

  /// Handle incoming [_ModeUpdated] event.
  void _handleModeUpdated(
    _ModeUpdated event,
  ) {
    _playOfflineService.setMode(mode: event.newMode);
  }

  /// Handle incoming [_SizeUpdated] event.
  void _handleSizeUpdated(
    _SizeUpdated event,
  ) {
    _playOfflineService.setSize(size: event.newSize);
  }

  /// Handle incoming [_TypeUpdated] event.
  void _handleTypeUpdated(
    _TypeUpdated event,
  ) {
    _playOfflineService.setType(type: event.newType);
  }

  /// Handle incoming [_GameStarted] event.
  void _handleGameStarted() {
    _playOfflineService.startGame();
  }

  /// Handle incoming [_DartBotAdded] event.
  void _handleDartBotAdded() {
    _playOfflineService.addDartBot();
  }

  /// Handle incoming [_DartBotRemoved] event.
  void _handleDartBotRemoved() {
    _playOfflineService.removeDartBot();
  }

  /// Handle incoming [_DartBotTargetAverageUpdated] event.
  void _handleDartBotTargetAverageUpdated(
    _DartBotTargetAverageUpdated event,
  ) {
    _playOfflineService.setDartBotTargetAverage(
      targetAverage: event.newTargetAverage,
    );
  }
}
