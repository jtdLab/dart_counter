import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, void> {
  final IAuthService _authService;

  SettingsBloc(
    this._authService,
  ) : super(
          // Set initial state
          null,
        ) {
    // Register event handlers

    on<_SignOutPressed>((_, __) async => _handleSignOutPressed());
  }

  /// Returns instance registered inside getIt.
  factory SettingsBloc.getIt() => getIt<SettingsBloc>();

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
