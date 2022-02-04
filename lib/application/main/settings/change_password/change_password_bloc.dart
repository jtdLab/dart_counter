import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'change_password_bloc.freezed.dart';
part 'change_password_event.dart';
part 'change_password_state.dart';

@injectable
class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final IAuthService _authService;

  ChangePasswordBloc(
    this._authService,
  ) : super(
          // Set initial state
          ChangePasswordState.initial(
            oldPassword: Password.empty(),
            newPassword: Password.empty(),
            newPasswordAgain: Password.empty(),
            showErrorMessages: false,
          ),
        ) {
    // Register event handlers
    on<_OldPasswordChanged>(_handleOldPasswordChanged);
    on<_NewPasswordChanged>(_handleNewPasswordChanged);
    on<_NewPasswordAgainChanged>(_handleNewPasswordAgainChanged);
    on<_ConfirmPressed>(_handleConfirmPressed);
  }

  /// Handle incoming [_OldPasswordChanged] event.
  void _handleOldPasswordChanged(
    _OldPasswordChanged event,
    Emitter<ChangePasswordState> emit,
  ) {
    final oldPassword = event.newOldPassword;

    state.mapOrNull(
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
    );
  }

  /// Handle incoming [_NewPasswordChanged] event.
  void _handleNewPasswordChanged(
    _NewPasswordChanged event,
    Emitter<ChangePasswordState> emit,
  ) {
    final newPassword = event.newNewPassword;

    state.mapOrNull(
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
    );
  }

  /// Handle incoming [_NewPasswordAgainChanged] event.
  void _handleNewPasswordAgainChanged(
    _NewPasswordAgainChanged event,
    Emitter<ChangePasswordState> emit,
  ) {
    final newPasswordAgain = event.newNewPasswordAgain;

    state.mapOrNull(
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
    );
  }

  /// Handle incoming [_ConfirmPressed] event.
  Future<void> _handleConfirmPressed(
    _ConfirmPressed event,
    Emitter<ChangePasswordState> emit,
  ) async {
    await state.mapOrNull(
      initial: (initial) async {
        AuthFailure? authFailure;

        final oldPassword = initial.oldPassword;
        final newPassword = initial.newPassword;
        final newPasswordAgain = initial.newPasswordAgain;
        final newPasswordsEqual = newPassword == newPasswordAgain;

        if (oldPassword.isValid()) {
          if (newPassword.isValid()) {
            if (newPasswordsEqual) {
              emit(const ChangePasswordState.submitInProgress());

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
          emit(const ChangePasswordState.submitSuccess());
        } else {
          emit(ChangePasswordState.submitFailure(authFailure: authFailure));
        }
      },
    );
  }

  /**
   * @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<ChangePasswordBloc>()) {
      getIt.resetLazySingleton<ChangePasswordBloc>();
    }

    return super.close();
  }
   */
}
