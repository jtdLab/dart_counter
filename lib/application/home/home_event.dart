part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.watchDataStarted() = _WatchDataStarted;
  const factory HomeEvent.invitationsReceived(Either<GameInvitationFailure, KtList<GameInvitation>> failureOrInvitations) = _InvitationsReceived;
  const factory HomeEvent.friendRequestsReceived(Either<FriendFailure, KtList<FriendRequest>> failureOrFriendRequests) = _FriendRequestsReceived;
  const factory HomeEvent.userReceived(Either<UserFailure, User> failureOrUser) = _UserReceived;
}
