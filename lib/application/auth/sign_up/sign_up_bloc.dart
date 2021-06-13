import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final IAuthFacade _authFacade;

  SignUpBloc(this._authFacade) : super(SignUpState.initial());

  @override
  Stream<SignUpState> mapEventToState(
    SignUpEvent event,
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
        Either<AuthFailure, Unit>? authFailureOrSuccess;
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
            authFailureOrSuccess: null,
          );
          authFailureOrSuccess =
              await _authFacade.singUpWithEmailAndUsernameAndPassword(
                  emailAddress: state.email,
                  username: state.username,
                  password: state.password);
        }

        yield state.copyWith(
          isSubmitting: authFailureOrSuccess?.isRight() ?? false,
          showErrorMessages: true,
          authFailureOrSuccess: authFailureOrSuccess,
        );
      },
    );
  }
}