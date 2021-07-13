part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.userReceived({
    required User user,
  }) = UserReceived;
  const factory SettingsEvent.localeChanged() = LocaleChanged;
  const factory SettingsEvent.signOutPressed() = SignOutPressed;
}
