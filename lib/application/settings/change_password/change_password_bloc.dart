import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'change_password_bloc.freezed.dart';
part 'change_password_event.dart';
part 'change_password_state.dart';

@lazySingleton
class ChangePasswordBloc extends Bloc<ChangePasswordEvent, ChangePasswordState>
    with AutoResetLazySingleton {
  final IAuthFacade _authFacade;

  ChangePasswordBloc(
    this._authFacade,
  ) : super(
          ChangePasswordState.initial(),
        );

  @override
  Stream<ChangePasswordState> mapEventToState(
    ChangePasswordEvent event,
  ) async* {
    yield* event.map(
      oldPasswordChanged: (event) => _mapOldPasswordChangedToState(event),
      newPasswordChanged: (event) => _mapNewPasswordChangedToState(event),
      newPasswordAgainChanged: (event) =>
          _mapNewPasswordAgainChangedToState(event),
      confirmPressed: (_) => _mapConfirmPressedToState(),
    );
  }

  Stream<ChangePasswordState> _mapOldPasswordChangedToState(
    OldPasswordChanged event,
  ) async* {
    yield state.copyWith(
      oldPassword: Password(event.oldPasswordString),
    );
  }

  Stream<ChangePasswordState> _mapNewPasswordChangedToState(
    NewPasswordChanged event,
  ) async* {
    yield state.copyWith(
      newPassword: Password(event.newPasswordString),
    );
  }

  Stream<ChangePasswordState> _mapNewPasswordAgainChangedToState(
    NewPasswordAgainChanged event,
  ) async* {
    yield state.copyWith(
      newPasswordAgain: Password(event.newPasswordAgainString),
    );
  }

  // TODO more granular error handling
  Stream<ChangePasswordState> _mapConfirmPressedToState() async* {
    AuthFailure? authFailure;

    final oldPassword = state.oldPassword;
    final newPassword = state.newPassword;
    final newPasswordAgain = state.newPasswordAgain;
    final newPasswordsEqual = newPassword == newPasswordAgain;
    if (oldPassword.isValid() &&
        newPassword.isValid() &&
        newPasswordAgain.isValid() &&
        newPasswordsEqual) {
      yield state.copyWith(isSubmitting: true);
      await Future.delayed(const Duration(seconds: 1));
      authFailure = (await _authFacade.updatePassword(
        oldPassword: oldPassword,
        newPassword: newPassword,
      ))
          .fold(
        (failure) => failure,
        (_) => null,
      );
    } else {
      authFailure = const AuthFailure.serverError();
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
    if (getIt.isRegistered<ChangePasswordBloc>()) {
      getIt.resetLazySingleton<ChangePasswordBloc>();
    }

    return super.close();
  }
}
