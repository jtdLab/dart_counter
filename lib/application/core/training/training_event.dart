part of 'training_bloc.dart';

@freezed
class TrainingEvent with _$TrainingEvent {
  const factory TrainingEvent.trainingCreated() = TrainingCreated;
  const factory TrainingEvent.playerAdded() = TrainingPlayerAdded;
  const factory TrainingEvent.playerRemoved({
    required int index,
  }) = TrainingPlayerRemoved;
  const factory TrainingEvent.playerReordered({
    required int oldIndex,
    required int newIndex,
  }) = TrainingPlayerReordered;
  const factory TrainingEvent.playerNameUpdated({
    required int index,
    required String newName,
  }) = TrainingPlayerNameUpdated;
  const factory TrainingEvent.typeChanged({
    required Type newType,
  }) = TrainingTypeChanged;
  const factory TrainingEvent.trainingCanceled() = TrainingCanceled;
  const factory TrainingEvent.gameSnapshotReceived({
    required TrainingGameSnapshot gameSnapshot,
  }) = TrainingGameSnapshotReceived;
}
