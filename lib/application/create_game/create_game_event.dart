part of 'create_game_bloc.dart';

// TODO rename event to fel angelov naming convention
@freezed
class CreateGameEvent with _$CreateGameEvent {
  const factory CreateGameEvent.gameCanceled() = _GameCanceled;
  const factory CreateGameEvent.playerReordered({
    required int oldIndex,
    required int newIndex,
  }) = _PlayerReordered;
  const factory CreateGameEvent.playerAdded() = _PlayerAdded;
  const factory CreateGameEvent.playerRemoved({
    required int index,
  }) = _PlayerRemoved;
  const factory CreateGameEvent.playerNameUpdated({
    required int index,
    required String newName,
  }) = _PlayerNameUpdated;
  const factory CreateGameEvent.startingPointsUpdated({
    required int newStartingPoints,
  }) = _StartingPointsUpdated;
  const factory CreateGameEvent.modeUpdated({
    required Mode newMode,
  }) = _ModeUpdated;
  const factory CreateGameEvent.sizeUpdated({
    required int newSize,
  }) = _SizeUpdated;
  const factory CreateGameEvent.typeUpdated({
    required Type newType,
  }) = _TypeUpdated;
  const factory CreateGameEvent.gameStarted() = _GameStarted;
  const factory CreateGameEvent.dartBotAdded() = _DartBotAdded;
  const factory CreateGameEvent.dartBotRemoved() = _DartBotRemoved;
  const factory CreateGameEvent.dartBotTargetAverageUpdated({
    required int newTargetAverage,
  }) = _DartBotTargetAverageUpdated;
  const factory CreateGameEvent.gameReceived({
    required AbstractGameSnapshot gameSnapshot,
  }) = _GameReceived;
}
