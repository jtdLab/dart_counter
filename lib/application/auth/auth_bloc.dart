import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/auth/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(
    this._authFacade,
  ) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final User? user = await _authFacade.getSignedInUser();
        if (user != null) {
          yield const AuthState.authenticated();
        } else {
          yield const AuthState.unauthenticated();
        }
      },
      signedOut: (e) async* {
        await _authFacade.signOut();
        yield const AuthState.unauthenticated();
      },
    );
  }
}
