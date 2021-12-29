part of 'game_invitations_bloc.dart';

@freezed
class GameInvitationsEvent with _$GameInvitationsEvent {
  const factory GameInvitationsEvent.started() = Started;
  const factory GameInvitationsEvent.invitationAccepted({
    required GameInvitation gameInvitation,
  }) = InvitationAccepted;
  const factory GameInvitationsEvent.invitationDeclined({
    required GameInvitation gameInvitation,
  }) = InvitationDeclined;
}
