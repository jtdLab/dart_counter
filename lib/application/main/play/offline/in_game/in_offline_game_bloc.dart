import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/main/play/shared/in_game/in_game_event.dart';
import 'package:dart_counter/application/main/play/shared/in_game/in_game_state.dart';
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
  ) : super(const InGameState.initial()) {
    on<GameCanceled>((_, __) async => _mapGameCanceledToState());
    on<UndoThrowPressed>((_, __) async => _mapUndoThrowPressedToState());
    on<PerformThrowPressed>(
      (event, _) async => _mapPerformThrowPressedToState(event),
    );
  }

  Future<void> _mapGameCanceledToState() async {
    // TODO fold result
    await _playOfflineService.cancelGame();
  }

  Future<void> _mapUndoThrowPressedToState() async {
    // TODO fold result
    await _playOfflineService.undoThrow();
  }

  Future<void> _mapPerformThrowPressedToState(
    PerformThrowPressed event,
  ) async {
    // TODO fold result
    await _playOfflineService.performThrow(t: event.t);
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
