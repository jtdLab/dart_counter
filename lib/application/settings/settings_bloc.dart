import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
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
  final IUserFacade _userFacade;

  StreamSubscription? _userSubscription;

  SettingsBloc(
    this._authFacade,
    this._userFacade,
  ) : super(
          _userFacade.getUser().fold(
                (failure) => throw Error(),
                (user) => SettingsState(
                  user: user,
                  localeChanged: false,
                ),
              ),
        ) {
    _userSubscription = _userFacade.watchUser().listen((failurOrUser) {
      return failurOrUser.fold(
        (failure) => throw Error(), // TODO failure
        (user) => add(SettingsEvent.userReceived(user: user)),
      );
    });
  }

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
    // TODO only work around cause easylocalization doesnt rebuilt properly
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
