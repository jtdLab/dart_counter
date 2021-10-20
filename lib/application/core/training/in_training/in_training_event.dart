part of 'in_training_bloc.dart';

@freezed
class InTrainingEvent with _$InTrainingEvent {
   const factory InTrainingEvent.gameReceived({
    required TrainingGameSnapshot gameSnapshot,
  }) = InTrainingGameReceived;
}