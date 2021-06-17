part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.loadInProgress() = LoadInProgress;
  const factory UserState.loadSuccess({
    required User user,
  }) = LoadSuccess;
  const factory UserState.loadFailure() = LoadFailure;
}
