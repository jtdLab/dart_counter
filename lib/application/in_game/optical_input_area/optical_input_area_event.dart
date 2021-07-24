part of 'optical_input_area_bloc.dart';

@freezed
class OpticalInputAreaEvent with _$OpticalInputAreaEvent {
  const factory OpticalInputAreaEvent.undoThrowPressed() = UndoThrowPressed;
  const factory OpticalInputAreaEvent.performThrowPressed() =
      PerformThrowPressed;
  const factory OpticalInputAreaEvent.dartPressed({
    required DartType type,
    required int value,
  }) = DartPressed;
  const factory OpticalInputAreaEvent.undoDartPressed() = UndoDartPressed;
}
