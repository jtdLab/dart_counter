part of 'invitation_bloc.dart';

@freezed
class InvitationState with _$InvitationState {
  const factory InvitationState.loadInProgress() = LoadInProgress;
  const factory InvitationState.loadSuccess({
    required KtList<GameInvitation> gameInvitations,
  }) = LoadSuccess;
  const factory InvitationState.loadFailure() = LoadFailure;
}
