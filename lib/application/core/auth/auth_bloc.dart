import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> with AutoResetLazySingleton {
  final IAuthFacade _authFacade;

  AuthBloc(
    this._authFacade,
  ) : super(
          _authFacade.isAuthenticated()
              ? AuthState.authenticated(appUserId: _authFacade.userId()!)
              : const AuthState.unauthenticated(),
        ) {
    _isAuthenticatedSubscription =
        _authFacade.watchIsAuthenticated().listen((isAuthenticated) {
      add(AuthEvent.authenticationChanged(isAuthenticated: isAuthenticated));
    });
  }

  StreamSubscription<bool>? _isAuthenticatedSubscription;

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authenticationChanged: (event) => _mapAuthenticationChangedToState(event),
    );
  }

  Stream<AuthState> _mapAuthenticationChangedToState(
    AuthenticationChanged event,
  ) async* {
    final isAuthenticated = event.isAuthenticated;

    if (isAuthenticated) {
      final appUserId = _authFacade.userId()!;
      yield AuthState.authenticated(appUserId: appUserId);
    } else {
      yield const AuthState.unauthenticated();
    }
  }

  @override
  Future<void> close() {
    _isAuthenticatedSubscription?.cancel();
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<AuthBloc>()) {
      getIt.resetLazySingleton<AuthBloc>();
    }
    return super.close();
  }
}
