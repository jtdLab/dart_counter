part of 'score_training_bloc.dart';

@freezed
class ScoreTrainingState with _$ScoreTrainingState {
  const factory ScoreTrainingState.initial({
    required int points,
    required int numberOfTakes,
  }) = _ScoreTrainingInitial;
}
