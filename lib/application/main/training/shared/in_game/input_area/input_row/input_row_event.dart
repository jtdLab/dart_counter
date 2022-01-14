import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_row_event.freezed.dart';

@freezed
class InputRowEvent with _$InputRowEvent {
  const factory InputRowEvent.started() = Started;
  const factory InputRowEvent.undoPressed() = UndoPressed;
  const factory InputRowEvent.commitPressed() = CommitPressed;
  const factory InputRowEvent.inputChanged({
    required int newInput,
  }) = InputChanged;
}
