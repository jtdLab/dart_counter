part of 'single_training_bloc.dart';

@freezed
class SingleTrainingEvent with _$SingleTrainingEvent {
  const factory SingleTrainingEvent.modeChanged({
    required Mode newMode,
  }) = _SingleTrainingModeChanged;
  const factory SingleTrainingEvent.performPressed() =
      _SingleTrainingPerformPressed;
  const factory SingleTrainingEvent.undoPressed() = _SingleTrainingUndoPressed;
  const factory SingleTrainingEvent.singleHitPressed() =
      _SingleTrainingSingleHitPressed;
  const factory SingleTrainingEvent.doubleHitPressed() =
      _SingleTrainingDoubleHitPressed;
  const factory SingleTrainingEvent.tripleHitPressed() =
      _SingleTrainingTripleHitPressed;
  const factory SingleTrainingEvent.missHitPressed() =
      _SingleTrainingMissHitPressed;
}
