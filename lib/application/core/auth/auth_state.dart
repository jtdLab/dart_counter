part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated({
    required UniqueId appUserId,
  }) = Authenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;
}
