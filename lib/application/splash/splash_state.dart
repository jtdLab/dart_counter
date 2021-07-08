part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = Initial;

  const factory SplashState.unauthenticated() = Unauthenticated;

  const factory SplashState.authenticated({
    required bool invitationsReceived,
    required bool friendRequestsReceived,
    required bool userReceived,
  }) = Authenticated;
}
