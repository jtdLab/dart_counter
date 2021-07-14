import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

@lazySingleton
class SignUpBloc extends Bloc<SignUpEvent, SignUpState>
    with AutoResetLazySingleton {
  final IAuthFacade _authFacade;

  SignUpBloc(
    this._authFacade,
  ) : super(SignUpState.initial());

  @override
  Stream<SignUpState> mapEventToState(
    SignUpEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (event) => _mapEmailChangedToState(event),
      usernameChanged: (event) => _mapUsernameChangedToState(event),
      passwordChanged: (event) => _mapPasswordChangedToState(event),
      passwordAgainChanged: (event) => _mapPasswordAgainChangedToState(event),
      signUpPressed: (_) => _mapSignUpPressedToState(),
    );
  }

  Stream<SignUpState> _mapEmailChangedToState(
    EmailChanged event,
  ) async* {
    yield state.copyWith(
      email: EmailAddress(event.emailString),
      authFailure: null,
    );
  }

  Stream<SignUpState> _mapUsernameChangedToState(
    UsernameChanged event,
  ) async* {
    yield state.copyWith(
      username: Username(event.usernameString),
      authFailure: null,
    );
  }

  Stream<SignUpState> _mapPasswordChangedToState(
    PasswordChanged event,
  ) async* {
    yield state.copyWith(
      password: Password(event.passwordString),
      authFailure: null,
    );
  }

  Stream<SignUpState> _mapPasswordAgainChangedToState(
    PasswordAgainChanged event,
  ) async* {
    yield state.copyWith(
      passwordAgain: Password(event.passwordAgainString),
      authFailure: null,
    );
  }

  Stream<SignUpState> _mapSignUpPressedToState() async* {
    AuthFailure? authFailure;
    final isEmailValid = state.email.isValid();
    final isUsernameValid = state.username.isValid();
    final isPasswordValid = state.password.isValid();
    final isPasswordAgainValid = state.passwordAgain.isValid();
    final passwordsMatch = state.password == state.passwordAgain;

    if (isEmailValid &&
        isUsernameValid &&
        isPasswordValid &&
        isPasswordAgainValid &&
        passwordsMatch) {
      yield state.copyWith(
        isSubmitting: true,
      );
      authFailure = (await _authFacade.singUpWithEmailAndUsernameAndPassword(
        emailAddress: state.email,
        username: state.username,
        password: state.password,
      ))
          .fold(
        (failure) => failure,
        (_) => null,
      );
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailure: authFailure,
    );
  }
}
