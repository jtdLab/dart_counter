part of 'play_bloc.dart';

@freezed
class PlayEvent with _$PlayEvent {
  const factory PlayEvent.gameJoined({required GameInvitation invitation}) =
      GameJoined;
  const factory PlayEvent.gameCreated({required bool online}) = GameCreated;
  const factory PlayEvent.playerReordered(
      {required int oldIndex, required int newIndex}) = PlayerReordered;
  const factory PlayEvent.playerAdded() = PlayerAdded;
  const factory PlayEvent.playerRemoved({required int index}) = PlayerRemoved;
  const factory PlayEvent.playerNameUpdated(
      {required int index, required String newName}) = PlayerNameUpdated;
  const factory PlayEvent.startingPointsSet({required int newStartingPoints}) =
      StartingPointsSet;
  const factory PlayEvent.modeSet({required Mode newMode}) = ModeSet;
  const factory PlayEvent.sizeSet({required int newSize}) = SizeSet;
  const factory PlayEvent.typeSet({required Type newType}) = TypeSet;
  const factory PlayEvent.gameStarted() = GameStarted;
  const factory PlayEvent.gameCanceled() = GameCanceled;
  const factory PlayEvent.throwPerformed({required Throw t}) = ThrowPerformed;
  const factory PlayEvent.throwUndone() = ThrowUndone;
  const factory PlayEvent.dartBotAdded() = DartBotAdded;
  const factory PlayEvent.dartBotRemoved() = DartBotRemoved;
  const factory PlayEvent.dartBotTargetAverageSet(
      {required int newTargetAverage}) = DartBotTargetAverageSet;
  const factory PlayEvent.gameReceived({required Game game}) = GameReceived;
}
