import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_game_event.dart';
part 'create_game_state.dart';
part 'create_game_bloc.freezed.dart';

class CreateGameBloc extends Bloc<CreateGameEvent, CreateGameState> {
  CreateGameBloc() : super(const CreateGameState.initial());

  @override
  Stream<CreateGameState> mapEventToState(
    CreateGameEvent event,
  ) async* {
    
    // TODO: implement mapEventToState
  }
}
