part of 'input_area_bloc.dart';

@freezed
class InputAreaState with _$InputAreaState {
  const factory InputAreaState({
    required int input,
    required bool showCheckoutDetails,
  }) = State;
}
