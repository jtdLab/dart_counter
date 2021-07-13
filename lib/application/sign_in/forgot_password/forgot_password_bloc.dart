import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

@lazySingleton
class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> with AutoResetLazySingleton {
  final IAuthFacade _authFacade;

  ForgotPasswordBloc(this._authFacade)
      : super(
          ForgotPasswordState.initial(
            email: EmailAddress(''),
            isSubmitting: false,
          ),
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
      EmailChanged event) async* {
    yield (state as InitialState).copyWith(
      email: EmailAddress(event.emailString),
    );
  }

  Stream<ForgotPasswordState> _mapConfirmPressedToState() async* {
    final EmailAddress emailAddress = (state as InitialState).email;
    yield (state as InitialState).copyWith(isSubmitting: true);
    final failureOrUnit =
        await _authFacade.resetPassword(emailAddress: emailAddress);
    // TODO error when first invalid email and then 2nd try valid email the bloc crashes
    yield failureOrUnit.fold(
      (failure) => const ForgotPasswordState.failure(),
      (_) => const ForgotPasswordState.success(),
    );
  }
}
