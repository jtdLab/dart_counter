part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.loading() = Loading;
  const factory UserState.success({
    required User user,
  }) = Success;
}
