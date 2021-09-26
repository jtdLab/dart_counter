import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'friends_event.dart';
part 'friends_state.dart';
part 'friends_bloc.freezed.dart';

class FriendsBloc extends Bloc<FriendsEvent, FriendsState> {
  FriendsBloc() : super(_Initial());


  @override
  Stream<FriendsState> mapEventToState(
    FriendsEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
