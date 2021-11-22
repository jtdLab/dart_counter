import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/data_watcher/data_watcher_bloc.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/injection.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

@lazySingleton
class SettingsBloc extends Bloc<SettingsEvent, SettingsState>
    with AutoResetLazySingleton {
  final IAuthService _authService;
  final IUserService _userService;

  StreamSubscription? _userSubscription;

  SettingsBloc(
    this._authService,
    this._userService,
  ) : super(
          SettingsState.initial(
            user: _userService.getUser().toOption().toNullable()!,
            localeChanged: false,
          ),
        ) {
    _userSubscription = _userService.watchUser().listen(
          (failureOrUser) => failureOrUser.fold(
            (_) {},
            (user) => add(SettingsEvent.dataReceived(user: user)),
          ),
        );
  }

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    yield* event.map(
      dataReceived: (event) => _mapDataReceivedToState(event),
      localeChanged: (_) => _mapLocaleChangedToState(),
      signOutPressed: (_) => _mapSignOutPressedToState(),
    );
  }

  Stream<SettingsState> _mapDataReceivedToState(
    SettingsDataReceived event,
  ) async* {
    yield state.copyWith(user: event.user);
  }

  Stream<SettingsState> _mapLocaleChangedToState() async* {
    // TODO only work around because easylocalization doesnt rebuilt properly
    yield state.copyWith(localeChanged: true);
    yield state.copyWith(localeChanged: false);
  }

  Stream<SettingsState> _mapSignOutPressedToState() async* {
    await _authService.signOut();
  }

  @override
  Future<void> close() {
    _userSubscription?.cancel();

    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<SettingsBloc>()) {
      getIt.resetLazySingleton<SettingsBloc>();
    }

    return super.close();
  }
}
