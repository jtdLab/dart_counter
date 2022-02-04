import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'change_email_bloc.freezed.dart';
part 'change_email_event.dart';
part 'change_email_state.dart';

@injectable
class ChangeEmailBloc extends Bloc<ChangeEmailEvent, ChangeEmailState> {
  final IUserService _userService;

  ChangeEmailBloc(
    this._userService,
  ) : super(
          // Set initial state
          ChangeEmailState.initial(
            newEmail: EmailAddress.empty(),
            showErrorMessages: false,
          ),
        ) {
    // Register event handlers
    on<_NewEmailChanged>(_handleEmailChanged);
    on<_ConfirmPressed>(_handleConfirmPressed);
  }

  /// Handle incoming [_NewEmailChanged] event.
  void _handleEmailChanged(
    _NewEmailChanged event,
    Emitter<ChangeEmailState> emit,
  ) {
    final email = event.newNewEmail;

    state.mapOrNull(
      initial: (initial) {
        emit(initial.copyWith(newEmail: EmailAddress(email)));
      },
      submitFailure: (_) {
        emit(
          ChangeEmailState.initial(
            newEmail: EmailAddress(email),
            showErrorMessages: true,
          ),
        );
      },
    );
  }

  /// Handle incoming [_ConfirmPressed] event.
  Future<void> _handleConfirmPressed(
    _ConfirmPressed event,
    Emitter<ChangeEmailState> emit,
  ) async {
    await state.mapOrNull(
      initial: (initial) async {
        UserFailure? userFailure;
        final email = initial.newEmail;

        if (email.isValid()) {
          emit(const ChangeEmailState.submitInProgress());

          await Future.delayed(const Duration(seconds: 1));
          userFailure = (await _userService.updateEmailAddress(
            newEmailAddress: email,
          ))
              .fold(
            (userFailure) => userFailure,
            (_) => null,
          );
        } else {
          userFailure = const UserFailure.invalidEmail();
        }

        if (userFailure == null) {
          emit(const ChangeEmailState.submitSuccess());
        } else {
          emit(ChangeEmailState.submitFailure(userFailure: userFailure));
        }
      },
    );
  }

  /**
   * @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<ChangeEmailBloc>()) {
      getIt.resetLazySingleton<ChangeEmailBloc>();
    }

    return super.close();
  }
   */
}
