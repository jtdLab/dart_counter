part of 'input_cubit.dart';

@freezed
class InputState with _$InputState {
  const factory InputState.points({
    required int points,
  }) = InputPoints;
  const factory InputState.darts({
    required KtList<Dart> darts,
  }) = InputDarts;
}
