part of 'input_area_bloc.dart';

@freezed
class InputAreaEvent with _$InputAreaEvent {
  const factory InputAreaEvent.undoThrowPressed() = UndoThrowPressed;
  const factory InputAreaEvent.performThrowPressed() = PerformThrowPressed;
  const factory InputAreaEvent.checkPressed() = CheckPressed;
  const factory InputAreaEvent.erasePressed() = ErasePressed;
  const factory InputAreaEvent.digitPressed({required int digit}) = DigitPressed;
}
