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
      emailChanged: (e) async* {
        yield state.copyWith(
          email: EmailAddress(e.emailString),
          authFailure: null,
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordString),
          authFailure: null,
        );
      },
      signInPressed: (e) async* {
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
      },
      signInWithFacebookPressed: (e) async* {
        final authFailure = (await _authFacade.signInWithFacebook()).fold(
          (failure) => failure,
          (r) => null,
        );
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailure: authFailure,
        );
      },
      signInWithGooglePressed: (e) async* {
        final authFailure = (await _authFacade.signInWithGoogle()).fold(
          (failure) => failure,
          (r) => null,
        );
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailure: authFailure,
        );
      },
      signInWithApplePressed: (e) async* {
        final authFailure = (await _authFacade.signInWithApple()).fold(
          (failure) => failure,
          (r) => null,
        );
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailure: authFailure,
        );
      },
    );
  }
}
