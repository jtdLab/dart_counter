import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/data_watcher/data_watcher_bloc.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/core/core.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@lazySingleton
class SignInBloc extends Bloc<SignInEvent, SignInState>
    with AutoResetLazySingleton {
  final IAuthService _authService;

  final DataWatcherBloc _dataWatcherBloc;

  SignInBloc(
    this._authService,
    this._dataWatcherBloc,
  ) : super(SignInState.initial());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (event) => _mapEmailChangedToState(event),
      passwordChanged: (event) => _mapPasswordChangedToState(event),
      signInPressed: (_) => _mapSignInPressedToState(),
      signInWithFacebookPressed: (_) => _mapSignInWithFacebookPressedToState(),
      signInWithGooglePressed: (_) => _mapSignInWithGooglePressedToState(),
      signInWithApplePressed: (_) => _mapSignInWithApplePressedToState(),
    );
  }

  Stream<SignInState> _mapEmailChangedToState(
    EmailChanged event,
  ) async* {
    yield state.copyWith(
      email: EmailAddress(event.newEmailString),
      authFailure: null,
    );
  }

  Stream<SignInState> _mapPasswordChangedToState(
    PasswordChanged event,
  ) async* {
    yield state.copyWith(
      password: Password(event.newPasswordString),
      authFailure: null,
    );
  }

  Stream<SignInState> _mapSignInPressedToState() async* {
    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();
    yield state.copyWith(
      isSubmitting: true,
      authFailure: null,
    );

    if (isEmailValid && isPasswordValid) {
      yield* _signIn(
        () => _authService.signInWithEmailAndPassword(
          emailAddress: state.email,
          password: state.password,
        ),
      );
    } else {
      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailure: const AuthFailure.invalidEmailAndPasswordCombination(),
        isSignedIn: false,
      );
    }
  }

  Stream<SignInState> _mapSignInWithFacebookPressedToState() async* {
    yield* _signIn(() => _authService.signInWithFacebook());
  }

  Stream<SignInState> _mapSignInWithGooglePressedToState() async* {
    yield* _signIn(() => _authService.signInWithGoogle());
  }

  Stream<SignInState> _mapSignInWithApplePressedToState() async* {
    yield* _signIn(() => _authService.signInWithApple());
  }

  Stream<SignInState> _signIn(
    Future<Either<AuthFailure, Unit>> Function() signInFuture,
  ) async* {
    yield state.copyWith(
      isSubmitting: true,
      authFailure: null,
    );

    await Future.delayed(const Duration(milliseconds: 500));

    final signInResult = await signInFuture();
    AuthFailure? authFailure = signInResult.fold(
      (failure) => failure,
      (_) => null,
    );

    if (authFailure == null) {
      // TODO missing load success most of the times
      final state = await _dataWatcherBloc.stream.firstWhere(
        (element) =>
            element is DataWatcherLoadSuccess ||
            element is DataWatcherLoadFailure,
      );

      if (state is DataWatcherLoadFailure) {
        // couldnt load data
        await _authService.signOut();
        authFailure = const AuthFailure.serverError();
      }
    }

    yield state.copyWith(
      isSubmitting: authFailure == null,
      showErrorMessages: true,
      authFailure: authFailure,
      isSignedIn: authFailure == null,
    );
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<SignInBloc>()) {
      getIt.resetLazySingleton<SignInBloc>();
    }

    return super.close();
  }
}
