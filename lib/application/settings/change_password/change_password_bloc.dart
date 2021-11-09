import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
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
  final IAuthService _authService;

  ChangePasswordBloc(
    this._authService,
  ) : super(
          ChangePasswordState.initial(
            oldPassword: Password.empty(),
            newPassword: Password.empty(),
            newPasswordAgain: Password.empty(),
            showErrorMessages: false,
          ),
        ) {
    on<_OldPasswordChanged>(_mapOldPasswordChangedToState);
    on<_NewPasswordChanged>(_mapNewPasswordChangedToState);
    on<_NewPasswordAgainChanged>(_mapNewPasswordAgainChangedToState);
    on<_ConfirmPressed>(_mapConfirmPressedToState);
  }

  void _mapOldPasswordChangedToState(
    _OldPasswordChanged event,
    Emitter<ChangePasswordState> emit,
  ) {
    final oldPassword = event.newOldPassword;

    state.maybeMap(
      initial: (initial) {
        emit(
          initial.copyWith(
            oldPassword: Password(oldPassword),
          ),
        );
      },
      submitFailure: (_) {
        emit(
          ChangePasswordState.initial(
            oldPassword: Password(oldPassword),
            newPassword: Password.empty(),
            newPasswordAgain: Password.empty(),
            showErrorMessages: true,
          ),
        );
      },
      orElse: () => throw UnexpectedStateError(event: event, state: state),
    );
  }

  void _mapNewPasswordChangedToState(
    _NewPasswordChanged event,
    Emitter<ChangePasswordState> emit,
  ) {
    final newPassword = event.newNewPassword;

    state.maybeMap(
      initial: (initial) {
        emit(initial.copyWith(newPassword: Password(newPassword)));
      },
      submitFailure: (_) {
        emit(
          ChangePasswordState.initial(
            oldPassword: Password.empty(),
            newPassword: Password(newPassword),
            newPasswordAgain: Password.empty(),
            showErrorMessages: true,
          ),
        );
      },
      orElse: () => throw UnexpectedStateError(event: event, state: state),
    );
  }

  void _mapNewPasswordAgainChangedToState(
    _NewPasswordAgainChanged event,
    Emitter<ChangePasswordState> emit,
  ) {
    final newPasswordAgain = event.newNewPasswordAgain;

    state.maybeMap(
      initial: (initial) {
        emit(initial.copyWith(newPasswordAgain: Password(newPasswordAgain)));
      },
      submitFailure: (_) {
        emit(
          ChangePasswordState.initial(
            oldPassword: Password.empty(),
            newPassword: Password.empty(),
            newPasswordAgain: Password(newPasswordAgain),
            showErrorMessages: true,
          ),
        );
      },
      orElse: () => throw UnexpectedStateError(event: event, state: state),
    );
  }

  Future<void> _mapConfirmPressedToState(
    _ConfirmPressed event,
    Emitter<ChangePasswordState> emit,
  ) async {
    await state.maybeMap(
      initial: (initial) async {
        AuthFailure? authFailure;

        final oldPassword = initial.oldPassword;
        final newPassword = initial.newPassword;
        final newPasswordAgain = initial.newPasswordAgain;
        final newPasswordsEqual = newPassword == newPasswordAgain;

        if (oldPassword.isValid()) {
          if (newPassword.isValid()) {
            if (newPasswordsEqual) {
              emit(const ChangePasswordSubmitInProgress());

              await Future.delayed(const Duration(seconds: 1));
              authFailure = (await _authService.updatePassword(
                oldPassword: oldPassword,
                newPassword: newPassword,
              ))
                  .fold(
                (failure) => failure,
                (_) => null,
              );
            } else {
              authFailure = const AuthFailure.passwordsNotMatching();
            }
          } else {
            authFailure = const AuthFailure.invalidNewPassword();
          }
        } else {
          authFailure = const AuthFailure.invalidOldPassword();
        }

        if (authFailure == null) {
          emit(const ChangePasswordSubmitSuccess());
        } else {
          emit(ChangePasswordSubmitFailure(authFailure: authFailure));
        }
      },
      orElse: () => throw UnexpectedStateError(event: event, state: state),
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
