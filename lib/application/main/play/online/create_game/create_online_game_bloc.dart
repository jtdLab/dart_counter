import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_online_game_bloc.freezed.dart';
part 'create_online_game_event.dart';

// TODO doc

@injectable
class CreateOnlineGameBloc extends Bloc<CreateOnlineGameEvent, void> {
  final IPlayOnlineService _playOnlineService;

  CreateOnlineGameBloc(
    this._playOnlineService,
  ) : super(
          // Set initial state
          null,
        ) {
    // Register event handlers
    on<_GameCanceled>((_, __) => _mapGameCanceledToState());
    on<_PlayerReordered>((event, _) => _mapPlayerReorderedToState(event));
    on<_PlayerRemoved>((event, _) => _mapPlayerRemovedToState(event));
    on<_StartingPointsUpdated>(
      (event, _) => _mapStartingPointsUpdatedToState(event),
    );
    on<_ModeUpdated>((event, _) => _mapModeUpdatedToState(event));
    on<_SizeUpdated>((event, _) => _mapSizeUpdatedToState(event));
    on<_TypeUpdated>((event, _) => _mapTypeUpdatedToState(event));
    on<_GameStarted>((_, __) => _mapGameStartedToState());
  }

  /// Returns instance registered inside getIt.
  factory CreateOnlineGameBloc.getIt() => getIt<CreateOnlineGameBloc>();

  /// Handle incoming [_GameCanceled] event.
  void _mapGameCanceledToState() {
    _playOnlineService.cancelGame();
  }

  /// Handle incoming [_PlayerReordered] event.
  void _mapPlayerReorderedToState(
    _PlayerReordered event,
  ) {
    _playOnlineService.reorderPlayer(
      oldIndex: event.oldIndex,
      newIndex: event.newIndex,
    );
  }

  /// Handle incoming [_PlayerRemoved] event.
  void _mapPlayerRemovedToState(
    _PlayerRemoved event,
  ) {
    _playOnlineService.removePlayer(index: event.index);
  }

  /// Handle incoming [_StartingPointsUpdated] event.
  void _mapStartingPointsUpdatedToState(
    _StartingPointsUpdated event,
  ) {
    _playOnlineService.setStartingPoints(
      startingPoints: event.newStartingPoints,
    );
  }

  /// Handle incoming [_ModeUpdated] event.
  void _mapModeUpdatedToState(
    _ModeUpdated event,
  ) {
    _playOnlineService.setMode(mode: event.newMode);
  }

  /// Handle incoming [_SizeUpdated] event.
  void _mapSizeUpdatedToState(
    _SizeUpdated event,
  ) {
    _playOnlineService.setSize(size: event.newSize);
  }

  /// Handle incoming [_TypeUpdated] event.
  void _mapTypeUpdatedToState(
    _TypeUpdated event,
  ) {
    _playOnlineService.setType(type: event.newType);
  }

  /// Handle incoming [_GameStarted] event.
  void _mapGameStartedToState() {
    _playOnlineService.startGame();
  }
}
