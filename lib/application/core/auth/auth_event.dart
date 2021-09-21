part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authenticationChanged({
    required bool isAuthenticated,
  }) = AuthenticationChanged;
}
