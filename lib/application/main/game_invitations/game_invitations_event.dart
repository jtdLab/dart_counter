part of 'game_invitations_bloc.dart';

@freezed
class GameInvitationsEvent with _$GameInvitationsEvent {
  const factory GameInvitationsEvent.dataReceived({
    required KtList<GameInvitation> receivedGameInvitations,
    required KtList<GameInvitation> sentGameInvitations,
  }) = DataReceived;
  const factory GameInvitationsEvent.gameReceived({
    required AbstractGameSnapshot gameSnapshot,
  }) = GameReceived;
  const factory GameInvitationsEvent.invitationAccepted({
    required GameInvitation gameInvitation,
  }) = InvitationAccepted;
  const factory GameInvitationsEvent.invitationDeclined({
    required GameInvitation gameInvitation,
  }) = InvitationDeclined;
}
