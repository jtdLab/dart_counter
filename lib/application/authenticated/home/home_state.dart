// coverage:ignore-file

part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loadInProgress() = HomeLoadInProgress;
  const factory HomeState.loadSuccess({
    required User user,
    required int unreadGameInvitations,
    required int unreadFriendRequests,
  }) = HomeLoadSuccess;
  const factory HomeState.loadFailure() = HomeLoadFailure;
}
