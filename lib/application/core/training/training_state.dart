part of 'training_bloc.dart';

@freezed
class TrainingState with _$TrainingState {
  const factory TrainingState.initial() = TrainingInitial;
  const factory TrainingState.gameInProgress({
    required TrainingGameSnapshot gameSnapshot,
  }) = TrainingInProgress;
}
