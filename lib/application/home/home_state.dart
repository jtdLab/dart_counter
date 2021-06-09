part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool error,
    required bool loading,
    int? newFriendRequests,
    int? newGameInvitations,
    User? user,
  }) = _HomeState;

}
