part of 'game_invitation_button_bloc.dart';

@freezed
class GameInvitationButtonState with _$GameInvitationButtonState {
  const factory GameInvitationButtonState.noData() = _NoData;
  const factory GameInvitationButtonState.data({required int newGameInvitations}) = _Data;
}
