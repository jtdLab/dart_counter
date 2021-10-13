part of 'standard_input_area_bloc.dart';

@freezed
class StandardInputAreaState with _$StandardInputAreaState {
  const factory StandardInputAreaState({
    required int input,
    required bool showCheckoutDetails,
  }) = _StandardInputAreaState;

  factory StandardInputAreaState.initial() => const StandardInputAreaState(
        input: 0,
        showCheckoutDetails: false,
      );
}

