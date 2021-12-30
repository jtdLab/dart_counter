import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

@lazySingleton
class SignUpBloc extends Bloc<SignUpEvent, SignUpState>
    with AutoResetLazySingleton {
  final IAuthService _authService;

  SignUpBloc(
    this._authService,
  ) : super(
          SignUpState.initial(
            email: EmailAddress.empty(),
            username: Username.empty(),
            password: Password.empty(),
            passwordAgain: Password.empty(),
            showErrorMessages: false,
          ),
        ) {
    on<_EmailChanged>(_mapEmailChangedToState);
    on<_UsernameChanged>(_mapUsernameChangedToState);
    on<_PasswordChanged>(_mapPasswordChangedToState);
    on<_PasswordAgainChanged>(_mapPasswordAgainChangedToState);
    on<_SignUpPressed>((_, emit) async => _mapSignUpPressedToState(emit));
  }

  void _mapEmailChangedToState(
    _EmailChanged event,
    Emitter<SignUpState> emit,
  ) {
    state.mapOrNull(
      initial: (initial) {
        emit(initial.copyWith(email: EmailAddress(event.newEmail)));
      },
    );
  }

  void _mapUsernameChangedToState(
    _UsernameChanged event,
    Emitter<SignUpState> emit,
  ) {
    state.mapOrNull(
      initial: (initial) {
        emit(initial.copyWith(username: Username(event.newUsername)));
      },
    );
  }

  void _mapPasswordChangedToState(
    _PasswordChanged event,
    Emitter<SignUpState> emit,
  ) {
    state.mapOrNull(
      initial: (initial) {
        emit(initial.copyWith(password: Password(event.newPassword)));
      },
    );
  }

  void _mapPasswordAgainChangedToState(
    _PasswordAgainChanged event,
    Emitter<SignUpState> emit,
  ) {
    state.mapOrNull(
      initial: (initial) {
        emit(initial.copyWith(passwordAgain: Password(event.newPasswordAgain)));
      },
    );
  }

  Future<void> _mapSignUpPressedToState(
    Emitter<SignUpState> emit,
  ) async {
    await state.mapOrNull(
      initial: (initial) async {
        final isEmailValid = initial.email.isValid();
        final isUsernameValid = initial.username.isValid();
        final isPasswordValid = initial.password.isValid();
        final isPasswordAgainValid = initial.passwordAgain.isValid();
        final passwordsMatch = initial.password == initial.passwordAgain;

        if (isEmailValid &&
            isUsernameValid &&
            isPasswordValid &&
            isPasswordAgainValid &&
            passwordsMatch) {
          emit(const SignUpState.loadInProgress());

          await Future.delayed(const Duration(milliseconds: 500));

          final signUpResult =
              await _authService.signUpWithEmailAndUsernameAndPassword(
            emailAddress: initial.email,
            username: initial.username,
            password: initial.password,
          );
          signUpResult.fold(
            (failure) {
              emit(SignUpState.loadFailure(authFailure: failure));
              emit(initial.copyWith(showErrorMessages: true));
            },
            (_) {},
          );
        } else {
          emit(initial.copyWith(showErrorMessages: true));
        }
      },
    );
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<SignUpBloc>()) {
      getIt.resetLazySingleton<SignUpBloc>();
    }

    return super.close();
  }
}
