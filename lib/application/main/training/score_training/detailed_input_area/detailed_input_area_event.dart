part of 'detailed_input_area_bloc.dart';

@freezed
class DetailedInputAreaEvent with _$DetailedInputAreaEvent {
  const factory DetailedInputAreaEvent.undoThrowPressed() = _UndoThrowPressed;
  const factory DetailedInputAreaEvent.performThrowPressed() =
      _PerformThrowPressed;
  const factory DetailedInputAreaEvent.dartFocused({
    required int focusedValue,
  }) = _DartFocused;
  const factory DetailedInputAreaEvent.unfocusRequested() = _UnfocusRequested;
}
