import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/core/core.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@lazySingleton
class SignInBloc extends Bloc<SignInEvent, SignInState>
    with AutoResetLazySingleton {
  final IAuthService _authService;

  SignInBloc(
    this._authService,
  ) : super(
          SignInState.initial(
            email: EmailAddress.empty(),
            password: Password.empty(),
          ),
        ) {
    on<_EmailChanged>(_mapEmailChangedToState);
    on<_PasswordChanged>(_mapPasswordChangedToState);
    on<_SignInPressed>((_, emit) async => _mapSignInPressedToState(emit));
    on<_SignInWithFacebookPressed>(
      (_, emit) async => _mapSignInWithFacebookPressedToState(emit),
    );
    on<_SignInWithGooglePressed>(
      (_, emit) async => _mapSignInWithGooglePressedToState(emit),
    );
    on<_SignInWithApplePressed>(
      (_, emit) async => _mapSignInWithApplePressedToState(emit),
    );
  }

  void _mapEmailChangedToState(
    _EmailChanged event,
    Emitter<SignInState> emit,
  ) {
    state.mapOrNull(
      initial: (initial) {
        emit(initial.copyWith(email: EmailAddress(event.newEmail)));
      },
    );
  }

  void _mapPasswordChangedToState(
    _PasswordChanged event,
    Emitter<SignInState> emit,
  ) {
    state.mapOrNull(
      initial: (initial) {
        emit(initial.copyWith(password: Password(event.newPassword)));
      },
    );
  }

  Future<void> _mapSignInPressedToState(
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
              authFailure: AuthFailure.invalidEmailAndPasswordCombination(),
            ),
          );
          emit(initial);
        }
      },
    );
  }

  Future<void> _mapSignInWithFacebookPressedToState(
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

  Future<void> _mapSignInWithGooglePressedToState(
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

  Future<void> _mapSignInWithApplePressedToState(
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

        // TODO in service or here ?
        await Future.delayed(const Duration(milliseconds: 500));

        final signInResult = await signInFuture();

        signInResult.fold(
          (authFailure) {
            emit(SignInState.loadFailure(authFailure: authFailure));
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
