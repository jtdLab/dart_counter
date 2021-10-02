part of 'friends_bloc.dart';

@freezed
class FriendsState with _$FriendsState {
  const factory FriendsState({
    required KtList<Friend> friends,
    required KtList<FriendRequest> receivedFriendRequests,
    required KtList<FriendRequest> sentFriendRequests,
    Friend? selectedFriend,
  }) = _FriendsState;
}
