// coverage:ignore-file

part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial({
    required bool localeChanged,
  }) = SettingsInitial;
}
