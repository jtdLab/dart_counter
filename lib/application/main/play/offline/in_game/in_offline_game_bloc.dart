import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/main/play/shared/in_game/in_game_event.dart';
import 'package:dart_counter/application/main/play/shared/in_game/in_game_state.dart';
import 'package:dart_counter/application/main/play/shared/in_game/key_board_type.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/play/shared/in_game/in_game_event.dart';
export 'package:dart_counter/application/main/play/shared/in_game/in_game_state.dart';

@lazySingleton
class InOfflineGameBloc extends Bloc<InGameEvent, InGameState>
    with AutoResetLazySingleton {
  final IPlayOfflineService _playOfflineService;

  InOfflineGameBloc(
    this._playOfflineService,
  ) : super(const InGameState.initial(keyBoardType: KeyBoardType.standard)) {
    on<KeyBoardTypeChanged>(
      (event, emit) => _mapKeyBoardTypeChangedToState(event, emit),
    );
    on<GameCanceled>((_, __) => _mapGameCanceledToState());
    on<UndoThrowPressed>((_, __) => _mapUndoThrowPressedToState());
    on<PerformThrowPressed>(
      (event, _) => _mapPerformThrowPressedToState(event),
    );
  }

  void _mapKeyBoardTypeChangedToState(
    KeyBoardTypeChanged event,
    Emitter<InGameState> emit,
  ) {
    emit(state.copyWith(keyBoardType: event.newKeyBoardType));
  }

  void _mapGameCanceledToState() {
    _playOfflineService.cancelGame();
  }

  void _mapUndoThrowPressedToState() {
    _playOfflineService.undoThrow();
  }

  void _mapPerformThrowPressedToState(
    PerformThrowPressed event,
  ) {
    _playOfflineService.performThrow(t: event.t);
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<InOfflineGameBloc>()) {
      getIt.resetLazySingleton<InOfflineGameBloc>();
    }

    return super.close();
  }
}
