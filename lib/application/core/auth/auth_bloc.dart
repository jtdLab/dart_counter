import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> with AutoResetLazySingleton {
  final IAuthFacade _authFacade;

  AuthBloc(
    this._authFacade,
  ) : super(
          _authFacade.getSignedInUid() != null
              ? const AuthState.signedIn()
              : const AuthState.signedOut(),
        ) {
    _signedInUidSubscription = _authFacade.watchSignedInUid().listen((uid) {
      add(AuthEvent.signedInUidReceived(uid: uid));
    });
  }

  StreamSubscription<UniqueId?>? _signedInUidSubscription;

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      signedInUidReceived: (event) => _mapSignedInUidReceivedToState(event),
    );
  }

  Stream<AuthState> _mapSignedInUidReceivedToState(
    SignedInUidReceived event,
  ) async* {
    final uid = event.uid;

    if (uid != null) {
      yield const AuthState.signedIn();
    } else {
      yield const AuthState.signedOut();
    }
  }

  @override
  Future<void> close() {
    _signedInUidSubscription?.cancel();
    return super.close();
  }
}
