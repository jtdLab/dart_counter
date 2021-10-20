part of 'create_training_bloc.dart';

@freezed
class CreateTrainingState with _$CreateTrainingState {
  const factory CreateTrainingState.initial({
    required TrainingGameSnapshot gameSnapshot,
  }) = CreateTrainingInitial;
}
