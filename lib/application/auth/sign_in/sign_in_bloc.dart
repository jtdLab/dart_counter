import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

// TODO desc
@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthService _authService;

  SignInBloc(
    this._authService,
  ) : super(
          // Set initial state
          SignInState.initial(
            email: EmailAddress.empty(),
            password: Password.empty(),
          ),
        ) {
    // Register event handlers
    on<_EmailChanged>(_handleEmailChanged);
    on<_PasswordChanged>(_handlePasswordChanged);
    on<_SignInPressed>((_, emit) async => _handleSignInPressed(emit));
    on<_SignInWithFacebookPressed>(
      (_, emit) async => _handleSignInWithFacebookPressed(emit),
    );
    on<_SignInWithGooglePressed>(
      (_, emit) async => _handleSignInWithGooglePressed(emit),
    );
    on<_SignInWithApplePressed>(
      (_, emit) async => _handleSignInWithApplePressed(emit),
    );
  }

  /// Handle incoming [_EmailChanged] event.
  void _handleEmailChanged(
    _EmailChanged event,
    Emitter<SignInState> emit,
  ) {
    state.mapOrNull(
      initial: (initial) {
        emit(initial.copyWith(email: EmailAddress(event.newEmail)));
      },
    );
  }

  /// Handle incoming [_PasswordChanged] event.
  void _handlePasswordChanged(
    _PasswordChanged event,
    Emitter<SignInState> emit,
  ) {
    state.mapOrNull(
      initial: (initial) {
        emit(initial.copyWith(password: Password(event.newPassword)));
      },
    );
  }

  /// Handle incoming [_SignInPressed] event.
  Future<void> _handleSignInPressed(
    Emitter<SignInState> emit,
  ) async {
    await state.mapOrNull(
      initial: (initial) async {
        final isEmailValid = initial.email.isValid();
        final isPasswordValid = initial.password.isValid();

        if (isEmailValid && isPasswordValid) {
          await _signIn(
            () => _authService.signInWithEmailAndPassword(
              emailAddress: initial.email,
              password: initial.password,
            ),
            emit: emit,
          );
        } else {
          emit(
            const SignInState.loadFailure(
              failure: AuthFailure.invalidEmailAndPasswordCombination(),
            ),
          );
          emit(initial);
        }
      },
    );
  }

  /// Handle incoming [_SignInWithFacebookPressed] event.
  Future<void> _handleSignInWithFacebookPressed(
    Emitter<SignInState> emit,
  ) async {
    await state.mapOrNull(
      initial: (initial) async {
        await _signIn(
          () => _authService.signInWithFacebook(),
          emit: emit,
        );
      },
    );
  }

  /// Handle incoming [_SignInWithGooglePressed] event.
  Future<void> _handleSignInWithGooglePressed(
    Emitter<SignInState> emit,
  ) async {
    await state.mapOrNull(
      initial: (initial) async {
        await _signIn(
          () => _authService.signInWithGoogle(),
          emit: emit,
        );
      },
    );
  }

  /// Handle incoming [_SignInWithApplePressed] event.
  Future<void> _handleSignInWithApplePressed(
    Emitter<SignInState> emit,
  ) async {
    await state.mapOrNull(
      initial: (initial) async {
        await _signIn(
          () => _authService.signInWithApple(),
          emit: emit,
        );
      },
    );
  }

  /// Awaits [signInFuture] and then emits [SignInLoadFailure] if sign-in failed.
  Future<void> _signIn(
    Future<Either<AuthFailure, Unit>> Function() signInFuture, {
    required Emitter<SignInState> emit,
  }) async {
    await state.maybeMap(
      initial: (initial) async {
        emit(const SignInState.loadInProgress());

        await Future.delayed(const Duration(milliseconds: 500));

        final signInResult = await signInFuture();

        signInResult.fold(
          (authFailure) {
            emit(SignInState.loadFailure(failure: authFailure));
            emit(initial);
          },
          (_) {},
        );
      },
      orElse: () {},
    );
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<SignInBloc>()) {
      getIt.resetLazySingleton<SignInBloc>();
    }

    return super.close();
  }
}
