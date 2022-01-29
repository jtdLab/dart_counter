import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthService _authService;

  AuthBloc(
    this._authService,
  ) : super(
          _authService.isAuthenticated()
              ? const AuthState.authenticated()
              : const AuthState.unauthenticated(),
        ) {
    on<_Started>(
      (event, emit) async => _mapAuthStartedToState(event, emit),
      transformer: restartable(),
    );
  }

  Future<void> _mapAuthStartedToState(
    _Started event,
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
