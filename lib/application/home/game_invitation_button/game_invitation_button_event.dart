part of 'game_invitation_button_bloc.dart';

@freezed
class GameInvitationButtonEvent with _$GameInvitationButtonEvent {
  const factory GameInvitationButtonEvent.watchDataStarted() = _WatchDataStarted;
  const factory GameInvitationButtonEvent.dataReceived(Either<GameInvitationFailure, KtList<GameInvitation>> failureOrInvitations) = _DataReceived;
}