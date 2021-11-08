import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'forgot_password_bloc.freezed.dart';
part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

@lazySingleton
class ForgotPasswordBloc extends Bloc<ForgotPasswordEvent, ForgotPasswordState>
    with AutoResetLazySingleton {
  final IAuthFacade _authFacade;

  ForgotPasswordBloc(
    this._authFacade,
  ) : super(
          ForgotPasswordState.initial(
            email: EmailAddress.empty(),
            showErrorMessages: false,
          ),
        ) {
    on<EmailChanged>(_mapEmailChangedToState);
    on<ConfirmPressed>(_mapConfirmPressedToState);
  }

  void _mapEmailChangedToState(
    EmailChanged event,
    Emitter<ForgotPasswordState> emit,
  ) {
    final email = event.newEmail;

    state.maybeMap(
      initial: (initial) {
        emit(initial.copyWith(email: EmailAddress(email)));
      },
      submitFailure: (_) {
        emit(
          ForgotPasswordState.initial(
            email: EmailAddress(email),
            showErrorMessages: true,
          ),
        );
      },
      orElse: () => throw UnexpectedStateError(event: event, state: state),
    );
  }

  Future<void> _mapConfirmPressedToState(
    ConfirmPressed event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    await state.maybeMap(
      initial: (initial) async {
        AuthFailure? authFailure;
        final email = initial.email;

        if (email.isValid()) {
          emit(const ForgotPasswordSubmitInProgress());

          await Future.delayed(const Duration(seconds: 1));
          authFailure = (await _authFacade.sendPasswordResetEmail(
            emailAddress: email,
          ))
              .fold(
            (failure) => failure,
            (_) => null,
          );
        } else {
          authFailure = const AuthFailure.invalidEmail();
        }

        if (authFailure == null) {
          emit(const ForgotPasswordSubmitSuccess());
        } else {
          emit(ForgotPasswordSubmitFailure(authFailure: authFailure));
        }
      },
      orElse: () => throw UnexpectedStateError(event: event, state: state),
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
