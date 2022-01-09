part of 'training_bloc.dart';

@freezed
class TrainingState with _$TrainingState {
  const factory TrainingState.initial({
    required Type type,
    required AbstractTrainingGameSnapshot gameSnapshot,
  }) = TrainingInitial;
}
