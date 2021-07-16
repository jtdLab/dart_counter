import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'change_email_event.dart';
part 'change_email_state.dart';
part 'change_email_bloc.freezed.dart';

@lazySingleton
class ChangeEmailBloc extends Bloc<ChangeEmailEvent, ChangeEmailState>
    with AutoResetLazySingleton {
  final IAuthFacade _authFacade;

  ChangeEmailBloc(
    this._authFacade,
  ) : super(
          ChangeEmailState.initial(),
        );

  @override
  Stream<ChangeEmailState> mapEventToState(
    ChangeEmailEvent event,
  ) async* {
    yield* event.map(
      newEmailChanged: (event) => _mapNewEmailChangedToState(event),
      confirmPressed: (_) => _mapConfirmPressedToState(),
    );
  }

  Stream<ChangeEmailState> _mapNewEmailChangedToState(
    NewEmailChanged event,
  ) async* {
    yield state.copyWith(
      newEmail: EmailAddress(event.newEmailString),
    );
  }

  // TODO more granular error handling
  Stream<ChangeEmailState> _mapConfirmPressedToState() async* {
    AuthFailure? authFailure;
    final isNewEmailValid = state.newEmail.isValid();
    if (isNewEmailValid) {
      yield state.copyWith(isSubmitting: true);
      authFailure = (await _authFacade.updateEmailAddress(
        newEmailAddress: state.newEmail,
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
}
