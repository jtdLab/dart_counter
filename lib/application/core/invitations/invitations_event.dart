part of 'invitations_bloc.dart';

@freezed
class InvitationsEvent with _$InvitationsEvent {
  const factory InvitationsEvent.watchStarted() = WatchStarted;
  const factory InvitationsEvent.receivedInvitationsReceived({
    required KtList<GameInvitation> invitations,
  }) = ReceivedInvitationsReceived;
  const factory InvitationsEvent.sentInvitationsReceived({
    required KtList<GameInvitation> invitations,
  }) = SentInvitationsReceived;
  const factory InvitationsEvent.failureReceived({
    required GameInvitationFailure failure,
  }) = FailureReceived;
}
