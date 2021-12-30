import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
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
  final IAuthService _authService;

  ForgotPasswordBloc(
    this._authService,
  ) : super(
          ForgotPasswordState.initial(
            email: EmailAddress.empty(),
            showErrorMessages: false,
          ),
        ) {
    on<_EmailChanged>(_mapEmailChangedToState);
    on<_ConfirmPressed>(_mapConfirmPressedToState);
  }

  void _mapEmailChangedToState(
    _EmailChanged event,
    Emitter<ForgotPasswordState> emit,
  ) {
    final email = event.newEmail;

    state.mapOrNull(
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
    );
  }

  Future<void> _mapConfirmPressedToState(
    _ConfirmPressed event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    await state.mapOrNull(
      initial: (initial) async {
        AuthFailure? authFailure;
        final email = initial.email;

        if (email.isValid()) {
          emit(const ForgotPasswordState.submitInProgress());

          await Future.delayed(const Duration(seconds: 1));

          authFailure = (await _authService.sendPasswordResetEmail(
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
          emit(const ForgotPasswordState.submitSuccess());
        } else {
          emit(ForgotPasswordState.submitFailure(authFailure: authFailure));
        }
      },
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
