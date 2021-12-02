import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'change_email_bloc.freezed.dart';
part 'change_email_event.dart';
part 'change_email_state.dart';

@lazySingleton
class ChangeEmailBloc extends Bloc<ChangeEmailEvent, ChangeEmailState>
    with AutoResetLazySingleton {
  final IUserService _userService;

  ChangeEmailBloc(
    this._userService,
  ) : super(
          ChangeEmailState.initial(
            email: EmailAddress.empty(),
            showErrorMessages: false,
          ),
        ) {
    on<_NewEmailChanged>(_mapEmailChangedToState);
    on<_ConfirmPressed>(_mapConfirmPressedToState);
  }

  void _mapEmailChangedToState(
    _NewEmailChanged event,
    Emitter<ChangeEmailState> emit,
  ) {
    final email = event.newNewEmail;

    state.mapOrNull(
      initial: (initial) {
        emit(initial.copyWith(email: EmailAddress(email)));
      },
      submitFailure: (_) {
        emit(
          ChangeEmailState.initial(
            email: EmailAddress(email),
            showErrorMessages: true,
          ),
        );
      },
    );
  }

  Future<void> _mapConfirmPressedToState(
    _ConfirmPressed event,
    Emitter<ChangeEmailState> emit,
  ) async {
    await state.mapOrNull(
      initial: (initial) async {
        UserFailure? userFailure;
        final email = initial.email;

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

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<ChangeEmailBloc>()) {
      getIt.resetLazySingleton<ChangeEmailBloc>();
    }

    return super.close();
  }
}