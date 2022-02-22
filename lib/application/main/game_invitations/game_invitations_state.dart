// coverage:ignore-file

part of 'game_invitations_bloc.dart';

@freezed
class GameInvitationsState with _$GameInvitationsState {
  const factory GameInvitationsState.initial({
    AbstractGameSnapshot? gameSnapshot, // TODO needed?
  }) = GameInvitationsInitial;
  const factory GameInvitationsState.loadInProgress() =
      GameInvitationsLoadInProgress;
  const factory GameInvitationsState.failure({
    required PlayFailure failure,
  }) = GameInvitationsFailure;
}
