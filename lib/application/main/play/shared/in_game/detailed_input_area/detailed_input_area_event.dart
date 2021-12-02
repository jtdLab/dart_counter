part of 'detailed_input_area_bloc.dart';

@freezed
class DetailedInputAreaEvent with _$DetailedInputAreaEvent {
  const factory DetailedInputAreaEvent.undoThrowPressed() = _UndoThrowPressed;
  const factory DetailedInputAreaEvent.performThrowPressed() =
      _PerformThrowPressed;
  const factory DetailedInputAreaEvent.dartPressed({
    required int value,
  }) = _DartPressed;
  const factory DetailedInputAreaEvent.unfocused() = _Unfocused;
  const factory DetailedInputAreaEvent.dartDetailPressed({
    required DartType type,
  }) = _DartDetailPressed;
  const factory DetailedInputAreaEvent.undoDartPressed() = _UndoDartPressed;
}