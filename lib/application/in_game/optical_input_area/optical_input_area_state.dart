part of 'optical_input_area_bloc.dart';

@freezed
class OpticalInputAreaState with _$OpticalInputAreaState {
  const factory OpticalInputAreaState({
    required KtList<Dart> darts,
    required bool showCheckoutDetails,
  }) = _OpticalInputAreaState;

  factory OpticalInputAreaState.initial() => const OpticalInputAreaState(
        darts: KtList.empty(),
        showCheckoutDetails: false
      );
}
