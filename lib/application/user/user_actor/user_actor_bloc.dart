import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_actor_event.dart';
part 'user_actor_state.dart';
part 'user_actor_bloc.freezed.dart';

@injectable
class UserActorBloc extends Bloc<UserActorEvent, UserActorState> {
  UserActorBloc() : super(const UserActorState.initial());

  @override
  Stream<UserActorState> mapEventToState(
    UserActorEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
