part of 'optical_input_area_bloc.dart';

@freezed
class OpticalInputAreaEvent with _$OpticalInputAreaEvent {
  const factory OpticalInputAreaEvent.dartPressed({
    required DartType type,
    required int value,
  }) = _DartPressed;
  const factory OpticalInputAreaEvent.undoDartPressed() = _UndoDartPressed;
}
