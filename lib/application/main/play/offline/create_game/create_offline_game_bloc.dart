import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_offline_game_bloc.freezed.dart';
part 'create_offline_game_event.dart';
part 'create_offline_game_state.dart';

@lazySingleton
class CreateOfflineGameBloc
    extends Bloc<CreateOfflineGameEvent, CreateOfflineGameState> {
  final IPlayOfflineService _playOfflineService;

  CreateOfflineGameBloc(
    this._playOfflineService,
  ) : super(const CreateOfflineGameState.initial()) {
    on<_GameCanceled>((_, __) => _mapGameCanceledToState());
    on<_PlayerReordered>(_mapPlayerReorderedToState);
    on<_PlayerAdded>((_, __) => _mapPlayerAddedToState());
    on<_PlayerRemoved>(_mapPlayerRemovedToState);
    on<_PlayerNameUpdated>(_mapPlayerNameUpdatedToState);
    on<_StartingPointsUpdated>(_mapStartingPointsUpdatedToState);
    on<_ModeUpdated>(_mapModeUpdatedToState);
    on<_SizeUpdated>(_mapSizeUpdatedToState);
    on<_TypeUpdated>(_mapTypeUpdatedToState);
    on<_GameStarted>((_, __) => _mapGameStartedToState());
    on<_DartBotAdded>((_, __) => _mapDartBotAddedToState());
    on<_DartBotRemoved>((_, __) => _mapDartBotRemovedToState());
    on<_DartBotTargetAverageUpdated>(_mapDartBotTargetAverageUpdatedToState);
  }

  void _mapGameCanceledToState() {
    _playOfflineService.cancelGame();
  }

  void _mapPlayerReorderedToState(
    _PlayerReordered event,
    Emitter<CreateOfflineGameState> emit,
  ) {
    _playOfflineService.reorderPlayer(
      oldIndex: event.oldIndex,
      newIndex: event.newIndex,
    );
  }

  void _mapPlayerAddedToState() {
    _playOfflineService.addPlayer();
  }

  void _mapPlayerRemovedToState(
    _PlayerRemoved event,
    Emitter<CreateOfflineGameState> emit,
  ) {
    _playOfflineService.removePlayer(index: event.index);
  }

  void _mapPlayerNameUpdatedToState(
    _PlayerNameUpdated event,
    Emitter<CreateOfflineGameState> emit,
  ) {
    _playOfflineService.updateName(index: event.index, newName: event.newName);
  }

  void _mapStartingPointsUpdatedToState(
    _StartingPointsUpdated event,
    Emitter<CreateOfflineGameState> emit,
  ) {
    _playOfflineService.setStartingPoints(
      startingPoints: event.newStartingPoints,
    );
  }

  void _mapModeUpdatedToState(
    _ModeUpdated event,
    Emitter<CreateOfflineGameState> emit,
  ) {
    _playOfflineService.setMode(mode: event.newMode);
  }

  void _mapSizeUpdatedToState(
    _SizeUpdated event,
    Emitter<CreateOfflineGameState> emit,
  ) {
    _playOfflineService.setSize(size: event.newSize);
  }

  void _mapTypeUpdatedToState(
    _TypeUpdated event,
    Emitter<CreateOfflineGameState> emit,
  ) {
    _playOfflineService.setType(type: event.newType);
  }

  void _mapGameStartedToState() {
    _playOfflineService.startGame();
  }

  void _mapDartBotAddedToState() {
    _playOfflineService.addDartBot();
  }

  void _mapDartBotRemovedToState() {
    _playOfflineService.removeDartBot();
  }

  void _mapDartBotTargetAverageUpdatedToState(
    _DartBotTargetAverageUpdated event,
    Emitter<CreateOfflineGameState> emit,
  ) {
    _playOfflineService.setDartBotTargetAverage(
      targetAverage: event.newTargetAverage,
    );
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<CreateOfflineGameBloc>()) {
      getIt.resetLazySingleton<CreateOfflineGameBloc>();
    }

    return super.close();
  }
}
