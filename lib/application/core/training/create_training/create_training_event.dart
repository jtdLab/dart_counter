part of 'create_training_bloc.dart';

@freezed
class CreateTrainingEvent with _$CreateTrainingEvent {
  const factory CreateTrainingEvent.gameCanceled() = TrainingGameCanceled;
  const factory CreateTrainingEvent.playerReordered({
    required int oldIndex,
    required int newIndex,
  }) = TrainingPlayerReordered;
  const factory CreateTrainingEvent.playerAdded() = TrainingPlayerAdded;
  const factory CreateTrainingEvent.playerRemoved({
    required int index,
  }) = TrainingPlayerRemoved;
  const factory CreateTrainingEvent.playerNameUpdated({
    required int index,
    required String newName,
  }) = TrainingPlayerNameUpdated;
  const factory CreateTrainingEvent.gameStarted() = TrainingGameStarted;
  const factory CreateTrainingEvent.gameReceived({
    required TrainingGameSnapshot gameSnapshot,
  }) = TrainingGameReceived;
}
