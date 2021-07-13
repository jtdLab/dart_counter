part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.signedOut() = SignedOut;
   const factory AuthState.signedIn() = SignedIn;
}
