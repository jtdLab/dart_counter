part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loadInProgress() = HomeLoadInProgress;

  const factory HomeState.loadSuccess({
    required User user,
    required int unreadInvitations,
    required int unreadFriendRequests,
    AbstractGameSnapshot? gameSnapshot,
    AbstractTrainingGameSnapshot? trainingGameSnapshot,
    PlayFailure? failure,
  }) = HomeLoadSuccess;

  const factory HomeState.loadFailure() = HomeLoadFailure;
  // TODO should hold failure
}
