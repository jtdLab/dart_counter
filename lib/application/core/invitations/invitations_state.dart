part of 'invitations_bloc.dart';

@freezed
class InvitationsState with _$InvitationsState {
  const factory InvitationsState.loading({
    KtList<GameInvitation>? receivedInvitations,
    KtList<GameInvitation>? sentInvitations,
    int? unreadInvitations,
  }) = Loading;
  const factory InvitationsState.success({
    required KtList<GameInvitation> receivedInvitations,
    required KtList<GameInvitation> sentInvitations,
    required int unreadInvitations,
  }) = Success;
}
