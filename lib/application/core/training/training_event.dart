part of 'training_bloc.dart';

@freezed
class TrainingEvent with _$TrainingEvent {
  //const factory TrainingEvent.trainingCreated() = TrainingGameSnapshotReceived;
  const factory TrainingEvent.gameSnapshotReceived({
    required TrainingGameSnapshot gameSnapshot,
  }) = TrainingGameSnapshotReceived;
}
