part of 'friend_button_bloc.dart';

@freezed
class FriendButtonState with _$FriendButtonState {
  const factory FriendButtonState.noData() = _NoData;
  const factory FriendButtonState.data({required int newFriendRequests}) = _Data;
}
