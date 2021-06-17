part of 'invitation_bloc.dart';

@freezed
class InvitationEvent with _$InvitationEvent {
  const factory InvitationEvent.watchStarted() = WatchStarted;
  const factory InvitationEvent.gameInvitationsReceived({
    required KtList<GameInvitation> gameInvitations,
  }) = GameInvitationsReceived;
  const factory InvitationEvent.failureReceived() = FailureReceived;
}
