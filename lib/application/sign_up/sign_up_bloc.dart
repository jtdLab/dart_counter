import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/data_watcher/data_watcher_bloc.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';


@lazySingleton
class SignUpBloc extends Bloc<SignUpEvent, SignUpState>
    with AutoResetLazySingleton {
  final IAuthService _authService;

  final DataWatcherBloc _dataWatcherBloc;

  SignUpBloc(
    this._authService,
    this._dataWatcherBloc,
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
      email: EmailAddress(event.newEmailString),
      authFailure: null,
    );
  }

  Stream<SignUpState> _mapUsernameChangedToState(
    UsernameChanged event,
  ) async* {
    yield state.copyWith(
      username: Username(event.newUsernameString),
      authFailure: null,
    );
  }

  Stream<SignUpState> _mapPasswordChangedToState(
    PasswordChanged event,
  ) async* {
    yield state.copyWith(
      password: Password(event.newPasswordString),
      authFailure: null,
    );
  }

  Stream<SignUpState> _mapPasswordAgainChangedToState(
    PasswordAgainChanged event,
  ) async* {
    yield state.copyWith(
      passwordAgain: Password(event.newPasswordAgainString),
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
    yield state.copyWith(
      isSubmitting: true,
      authFailure: null,
    );

    if (isEmailValid &&
        isUsernameValid &&
        isPasswordValid &&
        isPasswordAgainValid &&
        passwordsMatch) {
      await Future.delayed(const Duration(milliseconds: 500));
      final signUpResult =
          await _authService.singUpWithEmailAndUsernameAndPassword(
        emailAddress: state.email,
        username: state.username,
        password: state.password,
      );
      authFailure = signUpResult.fold(
        (failure) => failure,
        (_) => null,
      );

      if (authFailure == null) {
        final state = await _dataWatcherBloc.stream.firstWhere(
          (element) =>
              element is DataWatcherLoadSuccess ||
              element is DataWatcherLoadFailure,
        );

        if (state is DataWatcherLoadFailure) {
          await _authService.signOut();
          // TODO delete user or go to sign in -> user is created but sign in failed
          authFailure = const AuthFailure.serverError(); // TODO data load error
        }
      }

      yield state.copyWith(
        isSubmitting: authFailure == null,
        showErrorMessages: true,
        authFailure: authFailure,
        isSignedUp: authFailure == null,
      );
    } else {
      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailure: authFailure,
        isSignedUp: false,
      );
    }
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<SignUpBloc>()) {
      getIt.resetLazySingleton<SignUpBloc>();
    }

    return super.close();
  }
}
