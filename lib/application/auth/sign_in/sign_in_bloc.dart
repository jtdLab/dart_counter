import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade _authFacade;

  SignInBloc(this._authFacade) : super(SignInState.initial());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          email: EmailAddress(e.emailString),
          authFailureOrSuccess: null,
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordString),
          authFailureOrSuccess: null,
        );
      },
      signInPressed: (e) async* {
        Either<AuthFailure, Unit>? authFailureOrSuccess;
        final isEmailValid = state.email.isValid();
        final isPasswordValid = state.password.isValid();
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccess: null,
        );

        if (isEmailValid && isPasswordValid) {
          authFailureOrSuccess = await _authFacade.singInWithEmailAndPassword(
              emailAddress: state.email, password: state.password);
        } else {
          authFailureOrSuccess =
              left(const AuthFailure.invalidEmailAndPasswordCombination());
        }

        yield state.copyWith(
          isSubmitting: authFailureOrSuccess.isRight(),
          showErrorMessages: true,
          authFailureOrSuccess: authFailureOrSuccess,
        );
      },
      signInWithFacebookPressed: (e) async* {
        final authFailureOrSuccess = await _authFacade.signInWithFacebook();
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccess: authFailureOrSuccess,
        );
      },
      signInWithGooglePressed: (e) async* {
        final authFailureOrSuccess = await _authFacade.signInWithGoogle();
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccess: authFailureOrSuccess,
        );
      },
      signInWithApplePressed: (e) async* {
        final authFailureOrSuccess = await _authFacade.signInWithApple();
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccess: authFailureOrSuccess,
        );
      },
    );
  }
}
