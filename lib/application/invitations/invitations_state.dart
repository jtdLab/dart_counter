part of 'invitations_bloc.dart';

@freezed
class InvitationsState with _$InvitationsState {
  const factory InvitationsState.initial({
    required KtList<GameInvitation> receivedGameInvitations,
    required KtList<GameInvitation> sentGameInvitations,
    GameSnapshot? gameSnapshot,
    required bool loading,
    PlayFailure? failure,
  }) = InvitationsInitial;
}
