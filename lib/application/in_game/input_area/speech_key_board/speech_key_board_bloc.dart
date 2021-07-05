import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'speech_key_board_event.dart';
part 'speech_key_board_state.dart';
part 'speech_key_board_bloc.freezed.dart';

class SpeechKeyBoardBloc extends Bloc<SpeechKeyBoardEvent, SpeechKeyBoardState> {
  SpeechKeyBoardBloc() : super(_Initial());

  @override
  Stream<SpeechKeyBoardState> mapEventToState(
    SpeechKeyBoardEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
