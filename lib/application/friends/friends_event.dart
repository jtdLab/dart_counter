part of 'friends_bloc.dart';

@freezed
class FriendsEvent with _$FriendsEvent {
  const factory FriendsEvent.friendSelected({
    required Friend friend,
  }) = FriendSelected;
}
