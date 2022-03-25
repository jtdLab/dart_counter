// coverage:ignore-file

part of 'game_invitations_bloc.dart';

@freezed
class GameInvitationsEvent with _$GameInvitationsEvent {
  const factory GameInvitationsEvent.started() = _Started;
  const factory GameInvitationsEvent.invitationAccepted({
    required GameInvitation gameInvitation,
  }) = _InvitationAccepted;
  const factory GameInvitationsEvent.invitationDeclined({
    required GameInvitation gameInvitation,
  }) = _InvitationDeclined;
}
