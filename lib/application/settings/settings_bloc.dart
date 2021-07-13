import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/application/core/user/user_bloc.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final IAuthFacade _authFacade;

  final UserBloc _userBloc;

  SettingsBloc(this._authFacade, this._userBloc)
      : super(
          SettingsState(
            user: _userBloc.state.map(
              loading: (_) => throw UnexpectedStateError(),
              success: (success) => success.user,
            ),
            localeChanged: false,
          ),
        ) {
    _userSubscription = _userBloc.stream.map((state) {
      return state.map(
        loading: (_) => throw UnexpectedStateError(),
        success: (success) => success.user,
      );
    }).listen((user) {
      add(SettingsEvent.userReceived(user: user));
    });
  }

  StreamSubscription<User>? _userSubscription;

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    yield* event.map(
      userReceived: (event) => _mapWatchUserReceivedToState(event),
      localeChanged: (_) => _mapLocaleChangedToState(),
      signOutPressed: (_) => _mapSignOutPressedToState(),
    );
  }

  Stream<SettingsState> _mapWatchUserReceivedToState(
    UserReceived event,
  ) async* {
    yield state.copyWith(user: event.user);
  }

  Stream<SettingsState> _mapLocaleChangedToState() async* {
    // TODO only work around cause easylocalisation doesnt rebuilt properly
    yield state.copyWith(localeChanged: true);
    yield state.copyWith(localeChanged: false);
  }

  Stream<SettingsState> _mapSignOutPressedToState() async* {
    await _authFacade.signOut();
  }

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }
}
