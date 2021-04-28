import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';
part 'sign_up_form_bloc.freezed.dart';

@injectable
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final IAuthFacade _authFacade;

  SignUpFormBloc(this._authFacade) : super(SignUpFormState.initial());

  @override
  Stream<SignUpFormState> mapEventToState(
    SignUpFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          email: EmailAddress(e.emailString),
          authFailureOrSuccess: null,
        );
      },
      usernameChanged: (e) async* {
        yield state.copyWith(
          username: Username(e.usernameString),
          authFailureOrSuccess: null,
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordString),
          authFailureOrSuccess: null,
        );
      },
      passwordAgainChanged: (e) async* {
        yield state.copyWith(
          passwordAgain: Password(e.passwordAgainString),
          authFailureOrSuccess: null,
        );
      },
      signUpPressed: (e) async* {
        Either<AuthFailure, Unit>? failureOrSuccess;
        final isEmailValid = state.username.isValid();
        final isUsernameValid = state.username.isValid();
        final isPasswordValid = state.password.isValid();
        final isPasswordAgainValid = state.passwordAgain.isValid();
        const passwordsMatch = true;
        //state.passwordAgain == state.password; // TODO: check if value equality is correctly generated

        if (isEmailValid &&
            isUsernameValid &&
            isPasswordValid &&
            isPasswordAgainValid &&
            passwordsMatch) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccess: null,
          );
          failureOrSuccess = await _authFacade.singUpWithEmailAndPassword(
              emailAddress: state.email, password: state.password);

          if (failureOrSuccess.isRight()) {
            // TODO: create user in database
            // if creation failed failure set failureOrSuccess = authfailure.servererror
          }
        }
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccess: failureOrSuccess,
        );
      },
    );
  }
}
