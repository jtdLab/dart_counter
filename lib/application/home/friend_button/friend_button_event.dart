part of 'friend_button_bloc.dart';

@freezed
class FriendButtonEvent with _$FriendButtonEvent {
  const factory FriendButtonEvent.watchDataRequested() = _WatchDataRequested;
}