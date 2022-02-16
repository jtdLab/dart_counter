part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.loadInProgress() = UserLoadInProgress;
  const factory UserState.loadSuccess({
    required User user,
  }) = UserLoadSuccess;
  const factory UserState.loadFailure({
    required UserFailure failure,
  }) = UserLoadFailure;

  const UserState._();

  /// Returns the user if available
  ///
  /// else throws error.
  User get user {
    return maybeWhen(
      loadSuccess: id,
      orElse: () => throw Error(),
    );
  }
}
