part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.loadInProgress() = UserLoadInProgress;
  const factory UserState.loadSuccess({
    required User user,
  }) = UserLoadSuccess;
  const factory UserState.loadFailure({
    required UserFailure failure,
  }) = UserLoadFailure;
}
