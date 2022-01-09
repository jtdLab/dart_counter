part of 'standard_erease_button_bloc.dart';

@freezed
class StandardEreaseButtonState with _$StandardEreaseButtonState {
  const factory StandardEreaseButtonState.enabled() =
      StandardEreaseButtonEnabled;
  const factory StandardEreaseButtonState.disabled() =
      StandardEreaseButtonDisabled;
}
