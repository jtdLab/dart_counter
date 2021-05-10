part of 'user_watcher_bloc.dart';

@freezed
class UserWatcherState with _$UserWatcherState {
  const factory UserWatcherState.initial() = _Initial;
  const factory UserWatcherState.loadSuccess(User user) = _LoadSuccess;
  const factory UserWatcherState.loadFailure(UserFailure userFailure) = _LoadFailure;
}
