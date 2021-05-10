import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/user/i_user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'friends_watcher_event.dart';
part 'friends_watcher_state.dart';
part 'friends_watcher_bloc.freezed.dart';

class FriendsWatcherBloc extends Bloc<FriendsWatcherEvent, FriendsWatcherState> {
  final IUserRepository _userRepository;
  final IAuthFacade _authFacade;

  FriendsWatcherBloc(this._userRepository, this._authFacade)
      : super(const FriendsWatcherState.initial());

  @override
  Stream<FriendsWatcherState> mapEventToState(
    FriendsWatcherEvent event,
  ) async* {
    
  }
}
