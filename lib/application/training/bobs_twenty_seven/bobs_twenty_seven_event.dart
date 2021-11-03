part of 'bobs_twenty_seven_bloc.dart';

@freezed
class BobsTwentySevenEvent with _$BobsTwentySevenEvent {
  const factory BobsTwentySevenEvent.modeChanged({
    required Mode newMode,
  }) = _BobsTwentySevenTrainingModeChanged;
  const factory BobsTwentySevenEvent.performPressed() =
      _BobsTwentySevenTrainingPerformPressed;
  const factory BobsTwentySevenEvent.undoPressed() =
      _BobsTwentySevenTrainingUndoPressed;
  const factory BobsTwentySevenEvent.doubleHitPressed() =
      _BobsTwentySevenTrainingDoubleHitPressed;
  const factory BobsTwentySevenEvent.missHitPressed() =
      _BobsTwentySevenTrainingMissHitPressed;
}
