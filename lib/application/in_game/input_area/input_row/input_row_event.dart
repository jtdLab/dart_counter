part of 'input_row_bloc.dart';

@freezed
class InputRowEvent with _$InputRowEvent {
  const factory InputRowEvent.undoThrowPressed() = UndoThrowPressed;
  const factory InputRowEvent.performThrowPressed() = PerformThrowPressed;
  const factory InputRowEvent.inputUpdated({
    required int newInput,
    KtList<Dart>? darts,
  }) = InputUpdated;
}
