part of 'detailed_input_area_bloc.dart';

@freezed
class DetailedInputAreaState with _$DetailedInputAreaState {
  const factory DetailedInputAreaState({
    int? focusedValue,
    required bool showCheckoutDetails,
  }) = _DetailedInputAreaState;

  factory DetailedInputAreaState.initial() =>
      const DetailedInputAreaState(showCheckoutDetails: false);
}
