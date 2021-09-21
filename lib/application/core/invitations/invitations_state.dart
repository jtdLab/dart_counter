part of 'invitations_bloc.dart';

@freezed
class InvitationsState with _$InvitationsState {
  const factory InvitationsState.loadInProgress({
    KtList<GameInvitation>? receivedInvitations,
    KtList<GameInvitation>? sentInvitations,
  }) = InvitationsLoadInProgress;
  const factory InvitationsState.loadSuccess({
    required KtList<GameInvitation> receivedInvitations,
    required KtList<GameInvitation> sentInvitations,
    required int unreadInvitations,
  }) = InvitationsLoadSuccess;
  const factory InvitationsState.loadFailure({
    required GameInvitationFailure failure,
  }) = InvitationsLoadFailure;
}
