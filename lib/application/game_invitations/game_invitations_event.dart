part of 'game_invitations_bloc.dart';

@freezed
class GameInvitationsEvent with _$GameInvitationsEvent {
  const factory GameInvitationsEvent.dataReceived({
    required KtList<GameInvitation> receivedGameInvitations,
    required KtList<GameInvitation> sentGameInvitations,
  }) = GameInvitationsDataReceived;
  const factory GameInvitationsEvent.gameReceived({
    required AbstractGameSnapshot gameSnapshot
  }) = GameInvitationsGameReceived;
  const factory GameInvitationsEvent.invitationAccepted({
    required GameInvitation gameInvitation,
  }) = GameInvitationsInvitationAccepted;
  const factory GameInvitationsEvent.invitationDeclined({
    required GameInvitation gameInvitation,
  }) = GameInvitationsInvitationDeclined;
}
