part of 'standard_input_area_bloc.dart';

@freezed
class StandardInputAreaEvent with _$StandardInputAreaEvent {
  const factory StandardInputAreaEvent.undoThrowPressed() = UndoThrowPressed;
  const factory StandardInputAreaEvent.performThrowPressed() =
      PerformThrowPressed;
  const factory StandardInputAreaEvent.checkPressed() = CheckPressed;
  const factory StandardInputAreaEvent.erasePressed() = ErasePressed;
  const factory StandardInputAreaEvent.digitPressed({
    required int digit,
  }) = DigitPressed;
}
