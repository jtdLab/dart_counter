part of 'standard_input_area_bloc.dart';

@freezed
class StandardInputAreaEvent with _$StandardInputAreaEvent {
  const factory StandardInputAreaEvent.undoThrowPressed() = _UndoThrowPressed;
  const factory StandardInputAreaEvent.performThrowPressed() = _PerformThrowPressed;
  const factory StandardInputAreaEvent.checkPressed() = _CheckPressed;
  const factory StandardInputAreaEvent.erasePressed() = _ErasePressed;
  const factory StandardInputAreaEvent.digitPressed({
    required int digit,
  }) = _DigitPressed;
}
