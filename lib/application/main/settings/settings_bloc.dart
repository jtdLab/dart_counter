import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/core/application_error.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final IAuthService _authService;

  SettingsBloc(
    this._authService,
  ) : super(
          // Set initial state
          const SettingsState.initial(
            localeChanged: false,
          ),
        ) {
    // Register event handlers
    on<_LocaleChanged>((_, emit) => _handleLocaleChanged(emit));
    on<_SignOutPressed>((_, __) async => _handleSignOutPressed());
  }

  /// Returns instance registered inside getIt.
  factory SettingsBloc.getIt() => getIt<SettingsBloc>();

  /// Handle incoming [_LocaleChanged] event.
  void _handleLocaleChanged(Emitter<SettingsState> emit) {
    // TODO Only work around because EasyLocalization doesn't rebuilt properly.
    emit(state.copyWith(localeChanged: true));
    emit(state.copyWith(localeChanged: false));
  }

  /// Handle incoming [_SignOutPressed] event.
  Future<void> _handleSignOutPressed() async => _authService.signOut();

  /**
  *  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<SettingsBloc>()) {
      getIt.resetLazySingleton<SettingsBloc>();
    }

    return super.close();
  }
  */
}
