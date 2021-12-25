part of 'advanced_settings_bloc.dart';

@freezed
class AdvancedSettingsState with _$AdvancedSettingsState {
  const factory AdvancedSettingsState.createGame({
    required KtList<AdvancedSettings> advancedSettings,
  }) = AdvancedSettingsCreateGame;
  const factory AdvancedSettingsState.inGame({
    required KtList<AdvancedSettings> advancedSettings,
    required AdvancedSettings currentTurnAdvancedSettings,
  }) = AdvancedSettingsInGame;
}
