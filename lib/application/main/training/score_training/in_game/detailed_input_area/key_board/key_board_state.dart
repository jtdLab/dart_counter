part of 'key_board_bloc.dart';

@freezed
class KeyBoardState with _$KeyBoardState {
  const factory KeyBoardState.initial({
    required DigitButtonState one,
    required DigitButtonState two,
    required DigitButtonState three,
    required DigitButtonState four,
    required DigitButtonState five,
    required DigitButtonState six,
    required DigitButtonState seven,
    required DigitButtonState eight,
    required DigitButtonState nine,
    required DigitButtonState ten,
    required DigitButtonState eleven,
    required DigitButtonState twelve,
    required DigitButtonState thirteen,
    required DigitButtonState fourteen,
    required DigitButtonState fifteen,
    required DigitButtonState sixteen,
    required DigitButtonState seventeen,
    required DigitButtonState eighteen,
    required DigitButtonState nineteen,
    required DigitButtonState twenty,
    required DigitButtonState twentyFive,
    required DigitButtonState zero,
    required ButtonState erease,
  }) = KeyBoardInitial;
}
