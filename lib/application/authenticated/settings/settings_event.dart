// coverage:ignore-file

part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.signOutPressed() = _SignOutPressed;
}