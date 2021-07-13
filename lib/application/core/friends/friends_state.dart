part of 'friends_bloc.dart';

@freezed
class FriendsState with _$FriendsState {
  const factory FriendsState.loading({
    KtList<FriendRequest>? friendRequests,
    int? unreadFriendRequests,
  }) = Loading;
  const factory FriendsState.success({
    required KtList<FriendRequest> friendRequests,
    required int unreadFriendRequests,
  }) = Success;
}
