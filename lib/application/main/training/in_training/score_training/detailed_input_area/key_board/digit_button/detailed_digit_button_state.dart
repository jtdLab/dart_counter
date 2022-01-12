part of 'detailed_digit_button_bloc.dart';

@freezed
class DetailedDigitButtonState with _$DetailedDigitButtonState {
  const factory DetailedDigitButtonState.enabled() = DetailedDigitButtonEnabled;
  const factory DetailedDigitButtonState.disabled() =
      DetailedDigitButtonDisabled;
  const factory DetailedDigitButtonState.focused({
    required DartType dartType,
    required int value,
  }) = DetailedDigitButtonFocused;
}
