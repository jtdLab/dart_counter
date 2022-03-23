part of 'advanced_settings_bloc.dart';

@freezed
class AdvancedSettingsEvent with _$AdvancedSettingsEvent {
  const factory AdvancedSettingsEvent.started() = _Started;
}