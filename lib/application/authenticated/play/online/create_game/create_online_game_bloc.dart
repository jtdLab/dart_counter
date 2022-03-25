import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_online_game_bloc.freezed.dart';
part 'create_online_game_event.dart';

// TODO doc

@injectable
class CreateOnlineGameBloc
    extends Bloc<CreateOnlineGameEvent, OnlineGameSnapshot> {
  final IPlayOnlineService _playOnlineService;

  CreateOnlineGameBloc(
    this._playOnlineService,
    OnlineGameSnapshot initialSnapshot,
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
    on<_PlayerRemoved>((event, _) => _handlePlayerRemoved(event));
    on<_StartingPointsUpdated>(
      (event, _) => _handleStartingPointsUpdated(event),
    );
    on<_ModeUpdated>((event, _) => _handleModeUpdated(event));
    on<_SizeUpdated>((event, _) => _handleSizeUpdated(event));
    on<_TypeUpdated>((event, _) => _handleTypeUpdated(event));
    on<_GameStarted>((_, __) => _handleGameStarted());
  }

  /// Returns instance registered inside getIt.
  factory CreateOnlineGameBloc.getIt(
    OnlineGameSnapshot initialSnapshot,
  ) =>
      getIt<CreateOnlineGameBloc>(param1: [initialSnapshot]);

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of `OnlineGameSnapshot`
  @factoryMethod
  factory CreateOnlineGameBloc.injectable(
    IPlayOnlineService playOnlineService,
    @factoryParam List<Object> otherDependencies,
  ) =>
      CreateOnlineGameBloc(
        playOnlineService,
        otherDependencies[0] as OnlineGameSnapshot,
      );

  /// Handle incoming [_Started] event.
  Future<void> _handleStarted(
    Emitter<OnlineGameSnapshot> emit,
  ) async {
    await emit.forEach<OnlineGameSnapshot>(
      _playOnlineService.watchGame(),
      onData: (snapshot) => snapshot,
    );
  }

  /// Handle incoming [_GameCanceled] event.
  void _handleGameCanceled() {
    _playOnlineService.cancelGame();
  }

  /// Handle incoming [_PlayerReordered] event.
  void _handlePlayerReordered(
    _PlayerReordered event,
  ) {
    _playOnlineService.reorderPlayer(
      oldIndex: event.oldIndex,
      newIndex: event.newIndex,
    );
  }

  /// Handle incoming [_PlayerRemoved] event.
  void _handlePlayerRemoved(
    _PlayerRemoved event,
  ) {
    _playOnlineService.removePlayer(index: event.index);
  }

  /// Handle incoming [_StartingPointsUpdated] event.
  void _handleStartingPointsUpdated(
    _StartingPointsUpdated event,
  ) {
    _playOnlineService.setStartingPoints(
      startingPoints: event.newStartingPoints,
    );
  }

  /// Handle incoming [_ModeUpdated] event.
  void _handleModeUpdated(
    _ModeUpdated event,
  ) {
    _playOnlineService.setMode(mode: event.newMode);
  }

  /// Handle incoming [_SizeUpdated] event.
  void _handleSizeUpdated(
    _SizeUpdated event,
  ) {
    _playOnlineService.setSize(size: event.newSize);
  }

  /// Handle incoming [_TypeUpdated] event.
  void _handleTypeUpdated(
    _TypeUpdated event,
  ) {
    _playOnlineService.setType(type: event.newType);
  }

  /// Handle incoming [_GameStarted] event.
  void _handleGameStarted() {
    _playOnlineService.startGame();
  }
}