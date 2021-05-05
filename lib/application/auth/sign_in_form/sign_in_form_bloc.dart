import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
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
        await Future.delayed(
            const Duration(milliseconds: 750)); // TODO rly wanted ??
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
