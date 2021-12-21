part of 'detailed_digit_button_bloc.dart';

@freezed
class DetailedDigitButtonEvent with _$DetailedDigitButtonEvent {
  const factory DetailedDigitButtonEvent.started() = _Started;
  const factory DetailedDigitButtonEvent.pressed() = _Pressed;
  const factory DetailedDigitButtonEvent.inputReceived() = _InputReceived;
}