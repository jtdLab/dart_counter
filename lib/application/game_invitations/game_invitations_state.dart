part of 'game_invitations_bloc.dart';

@freezed
class GameInvitationsState with _$GameInvitationsState {
  const factory GameInvitationsState.initial({
    required KtList<GameInvitation> receivedGameInvitations,
    required KtList<GameInvitation> sentGameInvitations,
    GameSnapshot? gameSnapshot,
    required bool loading,
    PlayFailure? failure,
  }) = GameInvitationsInitial;
}
