part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.watchStarted() = WatchStarted;
  const factory SettingsEvent.userReceived({
    required User user,
  }) = UserReceived;
}