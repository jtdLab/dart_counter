part of 'user_data_bloc.dart';

@freezed
class UserDataState with _$UserDataState {
  const factory UserDataState.loadInProgress() = UserDataLoadInProgress;
  const factory UserDataState.loadSuccess() = UserDataLoadSuccess;
  const factory UserDataState.loadFailure() = UserDataLoadFailure;
}
