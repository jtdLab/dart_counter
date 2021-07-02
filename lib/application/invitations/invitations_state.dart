part of 'invitations_bloc.dart';

@freezed
class InvitationsState with _$InvitationsState {
  const factory InvitationsState({
    required KtList<GameInvitation> receivedGameInvitations,
    required KtList<GameInvitation> sentGameInvitations,
  }) = _InvitationsState;
}
