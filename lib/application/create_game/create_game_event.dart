part of 'create_game_bloc.dart';

@freezed
class CreateGameEvent with _$CreateGameEvent {
  const factory CreateGameEvent.gameCanceled() = GameCanceled;
  const factory CreateGameEvent.playerReordered({
    required int oldIndex,
    required int newIndex,
  }) = PlayerReordered;
  const factory CreateGameEvent.playerAdded() = PlayerAdded;
  const factory CreateGameEvent.playerRemoved({
    required int index,
  }) = PlayerRemoved;
  const factory CreateGameEvent.playerNameUpdated({
    required int index,
    required String newName,
  }) = PlayerNameUpdated;
  const factory CreateGameEvent.startingPointsUpdated({
    required int newStartingPoints,
  }) = StartingPointsUpdated;
  const factory CreateGameEvent.modeUpdated({
    required Mode newMode,
  }) = ModeUpdated;
  const factory CreateGameEvent.sizeUpdated({
    required int newSize,
  }) = SizeUpdated;
  const factory CreateGameEvent.typeUpdated({
    required Type newType,
  }) = TypeUpdated;
  const factory CreateGameEvent.gameStarted() = GameStarted;
  const factory CreateGameEvent.throwPerformed({
    required Throw t,
  }) = ThrowPerformed;
  const factory CreateGameEvent.throwUndone() = ThrowUndone;
  const factory CreateGameEvent.dartBotAdded() = DartBotAdded;
  const factory CreateGameEvent.dartBotRemoved() = DartBotRemoved;
  const factory CreateGameEvent.dartBotTargetAverageUpdated({
    required int newTargetAverage,
  }) = DartBotTargetAverageUpdated;
  const factory CreateGameEvent.gameReceived({
    required Game game,
  }) = GameReceived;
}
