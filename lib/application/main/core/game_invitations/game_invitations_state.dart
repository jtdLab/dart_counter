part of 'game_invitations_cubit.dart';

@freezed
class GameInvitationsState with _$GameInvitationsState {
  const factory GameInvitationsState.loadInProgress() =
      GameInvitationsLoadInProgress;
  const factory GameInvitationsState.loadSuccess({
    required KtList<GameInvitation> receivedGameInvitations,
    required KtList<GameInvitation> sentGameInvitations,
  }) = GameInvitationsLoadSuccess;
  const factory GameInvitationsState.loadFailure({
    required GameInvitationFailure failure,
  }) = GameInvitationsLoadFailure;

  const GameInvitationsState._();

  /// Returns the received game invitations if available
  ///
  /// else throws error.
  KtList<GameInvitation> get receivedGameInvitations {
    return maybeWhen(
      loadSuccess: (receivedGameInvitations, _) => receivedGameInvitations,
      orElse: () => throw Error(),
    );
  }

  /// Returns the sent game invitations if available
  ///
  /// else throws error.
  KtList<GameInvitation> get sentGameInvitations {
    return maybeWhen(
      loadSuccess: (_, sentGameInvitations) => sentGameInvitations,
      orElse: () => throw Error(),
    );
  }
}
