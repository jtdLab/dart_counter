import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_online_game_bloc.freezed.dart';
part 'create_online_game_event.dart';
part 'create_online_game_state.dart';

@injectable
class CreateOnlineGameBloc
    extends Bloc<CreateOnlineGameEvent, CreateOnlineGameState> {
  final IPlayOnlineService _playOnlineService;

  CreateOnlineGameBloc(
    this._playOnlineService,
  ) : super(const CreateOnlineGameState.initial()) {
    on<_GameCanceled>((_, __) => _mapGameCanceledToState());
    on<_PlayerReordered>(_mapPlayerReorderedToState);
    on<_PlayerRemoved>(_mapPlayerRemovedToState);
    on<_StartingPointsUpdated>(_mapStartingPointsUpdatedToState);
    on<_ModeUpdated>(_mapModeUpdatedToState);
    on<_SizeUpdated>(_mapSizeUpdatedToState);
    on<_TypeUpdated>(_mapTypeUpdatedToState);
    on<_GameStarted>((_, __) => _mapGameStartedToState());
  }

  void _mapGameCanceledToState() {
    _playOnlineService.cancelGame();
  }

  void _mapPlayerReorderedToState(
    _PlayerReordered event,
    Emitter<CreateOnlineGameState> emit,
  ) {
    _playOnlineService.reorderPlayer(
      oldIndex: event.oldIndex,
      newIndex: event.newIndex,
    );
  }

  void _mapPlayerRemovedToState(
    _PlayerRemoved event,
    Emitter<CreateOnlineGameState> emit,
  ) {
    _playOnlineService.removePlayer(index: event.index);
  }

  void _mapStartingPointsUpdatedToState(
    _StartingPointsUpdated event,
    Emitter<CreateOnlineGameState> emit,
  ) {
    _playOnlineService.setStartingPoints(
      startingPoints: event.newStartingPoints,
    );
  }

  void _mapModeUpdatedToState(
    _ModeUpdated event,
    Emitter<CreateOnlineGameState> emit,
  ) {
    _playOnlineService.setMode(mode: event.newMode);
  }

  void _mapSizeUpdatedToState(
    _SizeUpdated event,
    Emitter<CreateOnlineGameState> emit,
  ) {
    _playOnlineService.setSize(size: event.newSize);
  }

  void _mapTypeUpdatedToState(
    _TypeUpdated event,
    Emitter<CreateOnlineGameState> emit,
  ) {
    _playOnlineService.setType(type: event.newType);
  }

  void _mapGameStartedToState() {
    _playOnlineService.startGame();
  }
}
