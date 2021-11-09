import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/data_watcher/data_watcher_bloc.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
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
  final IAuthFacade _authFacade;

  final DataWatcherBloc _dataWatcherBloc;

  StreamSubscription? _dataWatcherSubscription;

  SettingsBloc(
    this._authFacade,
    this._dataWatcherBloc,
  ) : super(
          _dataWatcherBloc.state.maybeMap(
            loadSuccess: (loadSuccess) => SettingsState.initial(
              user: loadSuccess.user,
              localeChanged: false,
            ),
            orElse: () =>
                throw UnexpectedStateError(state: _dataWatcherBloc.state),
          ),
        ) {
    _dataWatcherSubscription =
        _dataWatcherBloc.stream.listen((dataWatcherState) {
      if (dataWatcherState is DataWatcherLoadSuccess) {
        add(
          SettingsEvent.dataReceived(
            user: dataWatcherState.user,
          ),
        );
      }
    });
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
    await _authFacade.signOut();
  }

  @override
  Future<void> close() {
    _dataWatcherSubscription?.cancel();

    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<SettingsBloc>()) {
      getIt.resetLazySingleton<SettingsBloc>();
    }

    return super.close();
  }
}
