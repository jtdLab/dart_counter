import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> with AutoResetLazySingleton {
  final IAuthService _authService;

  AuthBloc(
    this._authService,
  ) : super(
          _authService.isAuthenticated()
              ? const AuthState.authenticated()
              : const AuthState.unauthenticated(),
        ) {
    on<_AuthStarted>(
      (event, emit) async => _mapAuthStartedToState(event, emit),
      transformer: restartable(),
    );
  }

  Future<void> _mapAuthStartedToState(
    _AuthStarted event,
    Emitter<AuthState> emit,
  ) async {
    await emit.forEach(
      _authService.watchIsAuthenticated(),
      onData: (bool isAuthenticated) => isAuthenticated
          ? const AuthState.authenticated()
          : const AuthState.unauthenticated(),
    );
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<AuthBloc>()) {
      getIt.resetLazySingleton<AuthBloc>();
    }

    return super.close();
  }
}
