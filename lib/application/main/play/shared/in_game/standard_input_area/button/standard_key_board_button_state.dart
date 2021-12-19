part of 'standard_key_board_button_cubit.dart';

@freezed
class StandardKeyBoardButtonState with _$StandardKeyBoardButtonState {
  const factory StandardKeyBoardButtonState.initial({
    required StandardKeyBoardButtonType type,
    required bool disabled,
  }) = StandardKeyBoardButtonInitial;
}
