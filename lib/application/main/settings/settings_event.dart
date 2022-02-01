// coverage:ignore-file

part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.started() = _Started;
  const factory SettingsEvent.localeChanged() = _LocaleChanged;
  const factory SettingsEvent.signOutPressed() = _SignOutPressed;
}
