part of 'standard_erease_button_bloc.dart';

@freezed
class StandardEreaseButtonEvent with _$StandardEreaseButtonEvent {
  const factory StandardEreaseButtonEvent.started() = _Started;
  const factory StandardEreaseButtonEvent.pressed() = _Pressed;
}
