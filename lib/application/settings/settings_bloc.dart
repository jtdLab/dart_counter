import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final IAuthFacade _authFacade;
  final IUserFacade _userFacade;

  SettingsBloc(this._authFacade, this._userFacade)
      : super(
          SettingsState(
            signedOut: false,
            user: _userFacade
                .watchCurrentUser()
                .valueWrapper! // TODO
                .value
                .fold(
                  (failure) => throw Error(), // TODO
                  (user) => user,
                ),
          ),
        );

  StreamSubscription<Either<UserFailure, User>>? _userStreamSubscription;

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    yield* event.map(
      watchStarted: (_) => _mapWatchStartedToState(),
      userReceived: (event) => _mapWatchUserReceivedToState(event),
      signOutPressed: (_) => _mapSignOutPressedToState(),
    );
  }

  Stream<SettingsState> _mapWatchStartedToState() async* {
    _userStreamSubscription =
        _userFacade.watchCurrentUser().listen((failureOrUser) {
      failureOrUser.fold(
        (failure) => throw Error(), // TODO
        (user) => add(
          SettingsEvent.userReceived(
            user: user,
          ),
        ),
      );
    });
  }

  Stream<SettingsState> _mapWatchUserReceivedToState(
      UserReceived event) async* {
    yield state.copyWith(user: event.user);
  }

  Stream<SettingsState> _mapSignOutPressedToState() async* {
    await _authFacade.signOut();
    yield state.copyWith(signedOut: true);
  }

  @override
  Future<void> close() {
    _userStreamSubscription?.cancel();
    return super.close();
  }
}
