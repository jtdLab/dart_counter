import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/in_game/in_game_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'speech_input_area_event.dart';
part 'speech_input_area_state.dart';
part 'speech_input_area_bloc.freezed.dart';

// TODO design + implement
@lazySingleton
class SpeechInputAreaBloc
    extends Bloc<SpeechInputAreaEvent, SpeechInputAreaState>
    with AutoResetLazySingleton {
  final InGameBloc _inGameBloc;

  SpeechInputAreaBloc(
    this._inGameBloc,
  ) : super(
          const SpeechInputAreaState.initial(),
        );

  @override
  Stream<SpeechInputAreaState> mapEventToState(
    SpeechInputAreaEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
