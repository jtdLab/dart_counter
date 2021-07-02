part of 'friends_bloc.dart';

@freezed
class FriendsState with _$FriendsState {
  const factory FriendsState({
    required KtList<FriendRequest> friendRequests,
  }) = _FriendsState;
}
