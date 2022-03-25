import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

// TODO doc
@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthService _authService;

  AuthBloc(
    this._authService,
  ) : super(
          // Set inital state
          _authService.isAuthenticated()
              ? const AuthState.authenticated()
              : const AuthState.unauthenticated(),
        ) {
    // Register event handlers
    on<_Started>(
      (event, emit) async => _handleStarted(event, emit),
      transformer: restartable(),
    );
  }

  /// Returns instance registered inside getIt.
  factory AuthBloc.getIt() => getIt<AuthBloc>();

  /// Handle incoming [_Started] event.
  Future<void> _handleStarted(
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

  /**
  *  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<AuthBloc>()) {
      getIt.resetLazySingleton<AuthBloc>();
    }

    return super.close();
  }
  */
}
