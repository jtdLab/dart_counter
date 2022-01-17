/**
 * import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../in_game_event.dart';
import '../in_game_state.dart';

part 'speech_input_area_bloc.freezed.dart';
part 'speech_input_area_event.dart';
part 'speech_input_area_state.dart';

// TODO design + implement + test
class SpeechInputAreaBloc
    extends Bloc<SpeechInputAreaEvent, SpeechInputAreaState>
    with AutoResetLazySingleton {
  /**
  *  final Cubit<AbstractGameSnapshot> _playWatcherCubit;
  final Bloc<InGameEvent, InGameState> _inGameBloc;
  */

  SpeechInputAreaBloc(
      /**
    *  this._playWatcherCubit,
    this._inGameBloc,
    */
      )
      : super(const SpeechInputAreaState.initial()) {
    on<_UndoThrowPressed>((_, emit) => _mapUndoThrowPressedToState(emit));
  }

  void _mapUndoThrowPressedToState(
    Emitter<SpeechInputAreaState> emit,
  ) {
    // TODO impl
  }
}

 */