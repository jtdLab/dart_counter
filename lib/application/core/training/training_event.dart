part of 'training_bloc.dart';

@freezed
class TrainingEvent with _$TrainingEvent {
  const factory TrainingEvent.gameSnapshotReceived({
    required TrainingGameSnapshot gameSnapshot,
  }) = TrainingGameSnapshotReceived;
}
