part of 'score_training_bloc.dart';

@freezed
class ScoreTrainingEvent with _$ScoreTrainingEvent {
  const factory ScoreTrainingEvent.numberOfTakesChanged({
    required int newNumberOfTakes,
  }) = _ScoreTrainingNumberOfTakesChanged;
  const factory ScoreTrainingEvent.performPressed() =
      _ScoreTrainingPerformPressed;
  const factory ScoreTrainingEvent.undoPressed() = _ScoreTrainingUndoPressed;
  const factory ScoreTrainingEvent.digitPressed({
    required int digit,
  }) = _ScoreTrainingDigitPressed;
  const factory ScoreTrainingEvent.ereasePressed() =
      _ScoreTrainingEreasePressed;
}
