import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'speech_key_board_event.dart';
part 'speech_key_board_state.dart';
part 'speech_key_board_bloc.freezed.dart';

@lazySingleton
class SpeechKeyBoardBloc extends Bloc<SpeechKeyBoardEvent, SpeechKeyBoardState> with AutoResetLazySingleton {
  SpeechKeyBoardBloc() : super(_Initial());

  @override
  Stream<SpeechKeyBoardState> mapEventToState(
    SpeechKeyBoardEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
