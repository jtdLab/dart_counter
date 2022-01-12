part of 'double_training_bloc.dart';

@freezed
class DoubleTrainingEvent with _$DoubleTrainingEvent {
  const factory DoubleTrainingEvent.modeChanged({
    required Mode newMode,
  }) = _DoubleTrainingModeChanged;
  const factory DoubleTrainingEvent.performPressed() =
      _DoubleTrainingPerformPressed;
  const factory DoubleTrainingEvent.undoPressed() = _DoubleTrainingUndoPressed;
  const factory DoubleTrainingEvent.doubleHitPressed() =
      _DoubleTrainingDoubleHitPressed;
  const factory DoubleTrainingEvent.missHitPressed() =
      _DoubleTrainingMissHitPressed;
}
