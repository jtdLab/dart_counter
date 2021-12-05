part of 'detailed_key_board_button_cubit.dart';

@freezed
class DetailedKeyBoardButtonState with _$DetailedKeyBoardButtonState {
  const factory DetailedKeyBoardButtonState.initial({
    required int value,
    required bool disabled,
  }) = DetailedKeyBoardButtonInitial;
  const factory DetailedKeyBoardButtonState.focused({
    required DartType type,
    required int value,
  }) = DetailedKeyBoardButtonFocused;
}
