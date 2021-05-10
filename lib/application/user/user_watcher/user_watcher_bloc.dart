import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/user/i_user_repository.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_watcher_event.dart';
part 'user_watcher_state.dart';
part 'user_watcher_bloc.freezed.dart';

@injectable
class UserWatcherBloc extends Bloc<UserWatcherEvent, UserWatcherState> {
  final IUserRepository _userRepository;
  final IAuthFacade _authFacade;

  UserWatcherBloc(this._userRepository, this._authFacade)
      : super(const UserWatcherState.initial());

  @override
  Stream<UserWatcherState> mapEventToState(
    UserWatcherEvent event,
  ) async* {
    yield* event.map(
      load: (e) async* {
        final uid = _authFacade.getSignedInUid();
        if (uid == null) {
          // TODO throw error
          throw Error();
        }
        final userFailureOrUser = await _userRepository.read(uid.getOrCrash());
        yield userFailureOrUser.fold(
          (userFailure) => UserWatcherState.loadFailure(userFailure),
          (user) => UserWatcherState.loadSuccess(user),
        );
      },
    );
  }
}
