// coverage:ignore-file

part of 'create_offline_game_bloc.dart';

@freezed
class CreateOfflineGameEvent with _$CreateOfflineGameEvent {
  const factory CreateOfflineGameEvent.started() = _Started;
  const factory CreateOfflineGameEvent.gameCanceled() = _GameCanceled;
  const factory CreateOfflineGameEvent.playerReordered({
    required int oldIndex,
    required int newIndex,
  }) = _PlayerReordered;
  const factory CreateOfflineGameEvent.playerAdded() = _PlayerAdded;
  const factory CreateOfflineGameEvent.playerRemoved({
    required int index,
  }) = _PlayerRemoved;
  const factory CreateOfflineGameEvent.playerNameUpdated({
    required int index,
    required String newName,
  }) = _PlayerNameUpdated;
  const factory CreateOfflineGameEvent.startingPointsUpdated({
    required int newStartingPoints,
  }) = _StartingPointsUpdated;
  const factory CreateOfflineGameEvent.modeUpdated({
    required Mode newMode,
  }) = _ModeUpdated;
  const factory CreateOfflineGameEvent.sizeUpdated({
    required int newSize,
  }) = _SizeUpdated;
  const factory CreateOfflineGameEvent.typeUpdated({
    required Type newType,
  }) = _TypeUpdated;
  const factory CreateOfflineGameEvent.gameStarted() = _GameStarted;
  const factory CreateOfflineGameEvent.dartBotAdded() = _DartBotAdded;
  const factory CreateOfflineGameEvent.dartBotRemoved() = _DartBotRemoved;
  const factory CreateOfflineGameEvent.dartBotTargetAverageUpdated({
    required int newTargetAverage,
  }) = _DartBotTargetAverageUpdated;
}
