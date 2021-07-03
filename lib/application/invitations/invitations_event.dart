part of 'invitations_bloc.dart';

@freezed
class InvitationsEvent with _$InvitationsEvent {
  const factory InvitationsEvent.watchStarted() = WatchStarted;
  const factory InvitationsEvent.receivedGameInvitationsReceived({
    required KtList<GameInvitation> gameInvitations,
  }) = ReceivedGameInvitationsReceived;
  const factory InvitationsEvent.sentGameInvitationsReceived({
    required KtList<GameInvitation> gameInvitations,
  }) = SentGameInvitationsReceived;
  const factory InvitationsEvent.failureReceived() = FailureReceived;
  const factory InvitationsEvent.accepted(
      {required GameInvitation gameInvitation}) = Accepted;
  const factory InvitationsEvent.declined(
      {required GameInvitation gameInvitation}) = Declined;
  const factory InvitationsEvent.newInvitationsRead() = NewInvitationsRead;
}