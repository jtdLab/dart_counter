part of 'detailed_digit_button_bloc.dart';

@freezed
class DetailedDigitButtonState with _$DetailedDigitButtonState {
  const factory DetailedDigitButtonState.enabled({
    required int digit,
  }) = DetailedDigitButtonEnabled;
  const factory DetailedDigitButtonState.disabled({
    required int digit,
  }) = DetailedDigitButtonDisabled;
  const factory DetailedDigitButtonState.focused({
    required int digit,
    required DartType dartType,
  }) = DetailedDigitButtonFocused;
}
