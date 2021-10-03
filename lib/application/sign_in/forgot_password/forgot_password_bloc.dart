import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

@lazySingleton
class ForgotPasswordBloc extends Bloc<ForgotPasswordEvent, ForgotPasswordState>
    with AutoResetLazySingleton {
  final IAuthFacade _authFacade;

  ForgotPasswordBloc(
    this._authFacade,
  ) : super(
          ForgotPasswordState.initial(),
        );

  @override
  Stream<ForgotPasswordState> mapEventToState(
    ForgotPasswordEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (event) => _mapEmailChangedToState(event),
      confirmPressed: (_) => _mapConfirmPressedToState(),
    );
  }

  Stream<ForgotPasswordState> _mapEmailChangedToState(
    EmailChanged event,
  ) async* {
    yield state.copyWith(email: EmailAddress(event.emailString));
  }

  Stream<ForgotPasswordState> _mapConfirmPressedToState() async* {
    AuthFailure? authFailure;
    final isEmailValid = state.email.isValid();
    if (isEmailValid) {
      yield state.copyWith(isSubmitting: true);
      authFailure = (await _authFacade.sendPasswordResetEmail(
        emailAddress: state.email,
      ))
          .fold(
        (failure) => failure,
        (_) => null,
      );
    } else {
      authFailure = const AuthFailure.invalidEmail();
    }
    yield state.copyWith(
      showErrorMessages: true,
      isSubmitting: false,
      successful: authFailure == null,
      authFailure: authFailure,
    );
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<ForgotPasswordBloc>()) {
      getIt.resetLazySingleton<ForgotPasswordBloc>();
    }
    
    return super.close();
  }
}
