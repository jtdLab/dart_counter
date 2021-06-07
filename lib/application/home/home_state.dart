part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  
  const factory HomeState({
    required int newFriendRequests,
    required int newGameInvitations,
    required User user,
  }) = _HomeState;

  const factory HomeState.initial() = _Initial;
}
