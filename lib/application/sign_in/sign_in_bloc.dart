import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@lazySingleton
class SignInBloc extends Bloc<SignInEvent, SignInState>
    with AutoResetLazySingleton {
  final IAuthFacade _authFacade;

  SignInBloc(
    this._authFacade,
  ) : super(SignInState.initial());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (event) => _mapEmailChangedToState(event),
      passwordChanged: (event) => _mapPasswordChangedToState(event),
      signInPressed: (_) => _mapSignInPressedToState(),
      signInWithFacebookPressed: (_) => _mapSignInWithFacebookPressedToState(),
      signInWithGooglePressed: (_) => _mapSignInWithGooglePressedToState(),
      signInWithApplePressed: (_) => _mapSignInWithApplePressedToState(),
    );
  }

  Stream<SignInState> _mapEmailChangedToState(
    EmailChanged event,
  ) async* {
    yield state.copyWith(
      email: EmailAddress(event.emailString),
      authFailure: null,
    );
  }

  Stream<SignInState> _mapPasswordChangedToState(
    PasswordChanged event,
  ) async* {
    yield state.copyWith(
      password: Password(event.passwordString),
      authFailure: null,
    );
  }

  Stream<SignInState> _mapSignInPressedToState() async* {
    AuthFailure? authFailure;
    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();
    yield state.copyWith(
      isSubmitting: true,
      authFailure: null,
    );

    if (isEmailValid && isPasswordValid) {
      authFailure = (await _authFacade.singInWithEmailAndPassword(
        emailAddress: state.email,
        password: state.password,
      ))
          .fold(
        (failure) => failure,
        (_) => null,
      );
    } else {
      authFailure = const AuthFailure.invalidEmailAndPasswordCombination();
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailure: authFailure,
    );
  }

  Stream<SignInState> _mapSignInWithFacebookPressedToState() async* {
    final authFailure = (await _authFacade.signInWithFacebook()).fold(
      (failure) => failure,
      (r) => null,
    );
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailure: authFailure,
    );
  }

  Stream<SignInState> _mapSignInWithGooglePressedToState() async* {
    final authFailure = (await _authFacade.signInWithGoogle()).fold(
      (failure) => failure,
      (r) => null,
    );
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailure: authFailure,
    );
  }

  Stream<SignInState> _mapSignInWithApplePressedToState() async* {
    final authFailure = (await _authFacade.signInWithApple()).fold(
      (failure) => failure,
      (r) => null,
    );
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailure: authFailure,
    );
  }
}
