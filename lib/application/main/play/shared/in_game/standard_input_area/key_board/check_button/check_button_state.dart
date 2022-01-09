part of 'check_button_bloc.dart';

@freezed
class CheckButtonState with _$CheckButtonState {
    const factory CheckButtonState.enabled() =
      CheckButtonEnabled;
  const factory CheckButtonState.disabled() =
      CheckButtonDisabled;
}
