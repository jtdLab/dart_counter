part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.dataReceived({
    required User user,
  }) = SettingsDataReceived;
  const factory SettingsEvent.localeChanged() = SettingsLocaleChanged;
  const factory SettingsEvent.signOutPressed() = SettingsSignOutPressed;
}
