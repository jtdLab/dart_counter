part of 'create_training_bloc.dart';

@freezed
class CreateTrainingEvent with _$CreateTrainingEvent {
  const factory CreateTrainingEvent.gameCreated() = CreateTrainingGameCreated;
  const factory CreateTrainingEvent.gameCanceled() = CreateTrainingGameCanceled;
  const factory CreateTrainingEvent.playerReordered({
    required int oldIndex,
    required int newIndex,
  }) = CreateTrainingPlayerReordered;
  const factory CreateTrainingEvent.playerAdded() = CreateTrainingPlayerAdded;
  const factory CreateTrainingEvent.playerRemoved({
    required int index,
  }) = CreateTrainingPlayerRemoved;
  const factory CreateTrainingEvent.playerNameUpdated({
    required int index,
    required String newName,
  }) = CreateTrainingPlayerNameUpdated;
  /**
  *  const factory CreateTrainingEvent.modeUpdated({
    required Mode newMode,
  }) = CreateTrainingModeUpdated;
  */
  const factory CreateTrainingEvent.typeUpdated({
    required Type newType,
  }) = CreateTrainingTypeUpdated;
  const factory CreateTrainingEvent.gameStarted() = CreateTrainingGameStarted;
  const factory CreateTrainingEvent.gameReceived({
    required TrainingGameSnapshot gameSnapshot,
  }) = CreateTrainingGameReceived;
}
