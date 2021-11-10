part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({
    required User user,
    required int unreadInvitations,
    required int unreadFriendRequests,
    AbstractGameSnapshot? gameSnapshot,
    AbstractTrainingGameSnapshot? trainingGameSnapshot,
    required bool loading,
    PlayFailure? failure,
  }) = HomeInitial;
}
