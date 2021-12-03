import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/main/play/shared/in_game/in_game_event.dart';
import 'package:dart_counter/application/main/play/shared/in_game/in_game_state.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/play/shared/in_game/in_game_event.dart';
export 'package:dart_counter/application/main/play/shared/in_game/in_game_state.dart';

@lazySingleton
class InOnlineGameBloc extends Bloc<InGameEvent, InGameState>
    with AutoResetLazySingleton {
  final IPlayOnlineService _playOnlineService;

  InOnlineGameBloc(
    this._playOnlineService,
  ) : super(const InGameState.initial()) {
    on<GameCanceled>((_, __) => _mapGameCanceledToState());
    on<UndoThrowPressed>((_, __) => _mapUndoThrowPressedToState());
    on<PerformThrowPressed>(
      (event, _) => _mapPerformThrowPressedToState(event),
    );
  }

  void _mapGameCanceledToState() {
    _playOnlineService.cancelGame();
  }

  void _mapUndoThrowPressedToState() {
    _playOnlineService.undoThrow();
  }

  void _mapPerformThrowPressedToState(
    PerformThrowPressed event,
  ) {
    _playOnlineService.performThrow(t: event.t);
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<InOnlineGameBloc>()) {
      getIt.resetLazySingleton<InOnlineGameBloc>();
    }

    return super.close();
  }
}
