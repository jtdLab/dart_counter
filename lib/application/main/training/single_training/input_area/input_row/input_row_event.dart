part of 'input_row_bloc.dart';

@freezed
class InputRowEvent with _$InputRowEvent {
  const factory InputRowEvent.undoPressed() = _UndoPressed;
  const factory InputRowEvent.commitPressed() = _CommitPressed;
  const factory InputRowEvent.inputChanged({
    required int newInput,
  }) = _InputChanged;
}
