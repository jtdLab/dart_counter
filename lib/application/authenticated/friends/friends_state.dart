// coverage:ignore-file

part of 'friends_bloc.dart';

@freezed
class FriendsState with _$FriendsState {
  const factory FriendsState.initial({
    Friend? selectedFriend,
  }) = FriendsInitial;
}
