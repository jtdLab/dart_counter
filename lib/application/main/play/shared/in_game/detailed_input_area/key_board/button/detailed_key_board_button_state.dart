part of 'detailed_key_board_button_cubit.dart';

@freezed
class DetailedKeyBoardButtonState with _$DetailedKeyBoardButtonState {
  const factory DetailedKeyBoardButtonState.initial({
    required DetailedKeyBoardButtonType type,
    required bool disabled,
  }) = DetailedKeyBoardButtonInitial;
  const factory DetailedKeyBoardButtonState.focused({
    required DetailedKeyBoardButtonType type,
    required DartType dartType,
  }) = DetailedKeyBoardButtonFocused;
}
