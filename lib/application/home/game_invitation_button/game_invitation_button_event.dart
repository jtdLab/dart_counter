part of 'game_invitation_button_bloc.dart';

@freezed
class GameInvitationButtonEvent with _$GameInvitationButtonEvent {
  const factory GameInvitationButtonEvent.watchDataRequested() = _WatchDataRequested;
}