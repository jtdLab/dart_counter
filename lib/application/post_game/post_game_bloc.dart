import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_game_event.dart';
part 'post_game_state.dart';
part 'post_game_bloc.freezed.dart';

class PostGameBloc extends Bloc<PostGameEvent, PostGameState> {
  PostGameBloc() : super(_Initial());

  @override
  Stream<PostGameState> mapEventToState(
    PostGameEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
