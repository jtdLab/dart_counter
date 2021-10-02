part of 'invitations_bloc.dart';

@freezed
class InvitationsEvent with _$InvitationsEvent {
  const factory InvitationsEvent.dataReceived({
    required KtList<GameInvitation> receivedGameInvitations,
    required KtList<GameInvitation> sentGameInvitations,
  }) = InvitationsDataReceived;
  const factory InvitationsEvent.gameReceived({
    required GameSnapshot gameSnapshot
  }) = InvitationsGameReceived;
  const factory InvitationsEvent.invitationAccepted({
    required GameInvitation gameInvitation,
  }) = InvitationsInvitationAccepted;
  const factory InvitationsEvent.invitationDeclined({
    required GameInvitation gameInvitation,
  }) = InvitationsInvitationDeclined;
}
