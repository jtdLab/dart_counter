part of 'invitation_bloc.dart';

@freezed
class InvitationEvent with _$InvitationEvent {
  const factory InvitationEvent.watchStarted() = WatchStarted;
  const factory InvitationEvent.gameInvitationsReceived({
    required KtList<GameInvitation> gameInvitations,
  }) = GameInvitationsReceived;
  const factory InvitationEvent.failureReceived() = FailureReceived;
  const factory InvitationEvent.accepted(
      {required GameInvitation gameInvitation}) = Accepted;
  const factory InvitationEvent.declined(
      {required GameInvitation gameInvitation}) = Declined;
  const factory InvitationEvent.newInvitationsRead() = NewInvitationsRead;
}
