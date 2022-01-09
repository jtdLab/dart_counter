part of 'advanced_settings_bloc.dart';

@freezed
class AdvancedSettingsEvent with _$AdvancedSettingsEvent {
  const factory AdvancedSettingsEvent.started() = _Started;
  const factory AdvancedSettingsEvent.showAverageToggled({
    required int index,
  }) = _ShowAverageToggled;
  const factory AdvancedSettingsEvent.showCheckoutToggled({
    required int index,
  }) = _ShowCheckoutToggled;
  const factory AdvancedSettingsEvent.smartKeyBoardActiveToggled({
    required int index,
  }) = _SmartKeyBoardActiveToggled;
}
