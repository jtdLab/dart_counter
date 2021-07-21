part of 'input_row_bloc.dart';

@freezed
class InputRowState with _$InputRowState {
  const factory InputRowState({
    required int input,
    KtList<Dart>? darts,
  }) = _InputRowState;

  factory InputRowState.initial() => const InputRowState(
        input: 0,
      );
}
