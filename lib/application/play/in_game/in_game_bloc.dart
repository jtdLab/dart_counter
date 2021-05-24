import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'in_game_event.dart';
part 'in_game_state.dart';
part 'in_game_bloc.freezed.dart';

class InGameBloc extends Bloc<InGameEvent, InGameState> {
  InGameBloc() : super(_Initial());

  @override
  Stream<InGameState> mapEventToState(
    InGameEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
