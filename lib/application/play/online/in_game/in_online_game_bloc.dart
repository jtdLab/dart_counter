import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/play/shared/in_game_event.dart';
import 'package:dart_counter/application/play/shared/in_game_state.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/domain/play/online/online_game_snapshot.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/play/shared/in_game_event.dart';
export 'package:dart_counter/application/play/shared/in_game_state.dart';

@lazySingleton
class InOnlineGameBloc extends Bloc<InGameEvent, InGameState>
    with AutoResetLazySingleton {
  final IPlayOnlineService _playOnlineService;

  InOnlineGameBloc(
    this._playOnlineService,
  ) : super(const InGameState.initial()) {
    on<GameCanceled>((_, __) async => _mapGameCanceledToState());
    on<UndoThrowPressed>((_, __) async => _mapUndoThrowPressedToState());
    on<PerformThrowPressed>(
      (event, _) async => _mapPerformThrowPressedToState(event),
    );
  }

  Future<void> _mapGameCanceledToState() async {
    // TODO fold result
    await _playOnlineService.cancelGame();
  }

  Future<void> _mapUndoThrowPressedToState() async {
    // TODO fold result
    await _playOnlineService.undoThrow();
  }

  Future<void> _mapPerformThrowPressedToState(
    PerformThrowPressed event,
  ) async {
    // TODO fold result
    await _playOnlineService.performThrow(t: event.t);
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
