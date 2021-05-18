part of 'friend_button_bloc.dart';

@freezed
class FriendButtonEvent with _$FriendButtonEvent {
  const factory FriendButtonEvent.watchDataStarted() = _WatchDataStarted;
  const factory FriendButtonEvent.dataReceived(Either<FriendFailure, KtList<FriendRequest>> failureOrFriendRequest) = _DataReceived;
}