import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'optical_key_board_event.dart';
part 'optical_key_board_state.dart';
part 'optical_key_board_bloc.freezed.dart';

class OpticalKeyBoardBloc extends Bloc<OpticalKeyBoardEvent, OpticalKeyBoardState> {
  OpticalKeyBoardBloc() : super(_Initial());

  @override
  Stream<OpticalKeyBoardState> mapEventToState(
    OpticalKeyBoardEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
