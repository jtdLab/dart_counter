part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    required bool invitationsReceived,
    required bool friendRequestsReceived,
    required bool userReceived,
  }) = _SplashState;
}
