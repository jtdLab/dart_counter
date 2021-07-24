part of 'detailed_input_area_bloc.dart';

@freezed
class DetailedInputAreaEvent with _$DetailedInputAreaEvent {
  const factory DetailedInputAreaEvent.undoThrowPressed() = UndoThrowPressed;
  const factory DetailedInputAreaEvent.performThrowPressed() = PerformThrowPressed;
  const factory DetailedInputAreaEvent.dartPressed({
    required int value,
  }) = DartPressed;
  const factory DetailedInputAreaEvent.dartDetailPressed({
    required DartType type,
  }) = DartDetailPressed;
  const factory DetailedInputAreaEvent.undoDartPressed() = UndoDartPressed;
}