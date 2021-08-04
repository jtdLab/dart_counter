part of 'play_bloc.dart';

@freezed
class PlayEvent with _$PlayEvent {
  const factory PlayEvent.gameCreated({
    required bool online,
  }) = GameCreated;
  const factory PlayEvent.gameCanceled() = GameCanceled;
  const factory PlayEvent.playerReordered({
    required int oldIndex,
    required int newIndex,
  }) = PlayerReordered;
  const factory PlayEvent.playerAdded() = PlayerAdded;
  const factory PlayEvent.playerRemoved({
    required int index,
  }) = PlayerRemoved;
  const factory PlayEvent.playerNameUpdated({
    required int index,
    required String newName,
  }) = PlayerNameUpdated;
  const factory PlayEvent.startingPointsUpdated({
    required int newStartingPoints,
  }) = StartingPointsUpdated;
  const factory PlayEvent.modeUpdated({
    required Mode newMode,
  }) = ModeUpdated;
  const factory PlayEvent.sizeUpdated({
    required int newSize,
  }) = SizeUpdated;
  const factory PlayEvent.typeUpdated({
    required Type newType,
  }) = TypeUpdated;
  const factory PlayEvent.gameStarted() = GameStarted;
  const factory PlayEvent.throwPerformed({
    required Throw t,
  }) = ThrowPerformed;
  const factory PlayEvent.throwUndone() = ThrowUndone;
  const factory PlayEvent.dartBotAdded() = DartBotAdded;
  const factory PlayEvent.dartBotRemoved() = DartBotRemoved;
  const factory PlayEvent.dartBotTargetAverageUpdated({
    required int newTargetAverage,
  }) = DartBotTargetAverageUpdated;
  const factory PlayEvent.gameReceived({
    required GameSnapshot game,
  }) = GameReceived;
  const factory PlayEvent.failureReceived({
    required PlayFailure failure,
  }) = FailureReceived;
}
