part of 'game_invitations_bloc.dart';

@freezed
class GameInvitationsState with _$GameInvitationsState {
  const factory GameInvitationsState.initial({
    required KtList<GameInvitation> receivedGameInvitations,
    required KtList<GameInvitation> sentGameInvitations,
    AbstractGameSnapshot? gameSnapshot,
    required bool loading,
    PlayFailure? failure,
  }) = GameInvitationsInitial;
}
