import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'optical_key_board_event.dart';
part 'optical_key_board_state.dart';
part 'optical_key_board_bloc.freezed.dart';

@lazySingleton
class OpticalKeyBoardBloc
    extends Bloc<OpticalKeyBoardEvent, OpticalKeyBoardState>
    with AutoResetLazySingleton {
  OpticalKeyBoardBloc() : super(_Initial());

  @override
  Stream<OpticalKeyBoardState> mapEventToState(
    OpticalKeyBoardEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
