part of 'checkout_details_bloc.dart';

@freezed
class CheckoutDetailsState with _$CheckoutDetailsState {
  const factory CheckoutDetailsState({
    required int minDartsThrown,
    required int maxDartsThrown,
    required int minDartsOnDouble,
    required int maxDartsOnDouble,
    required int selectedDartsThrown,
    required int selectedDartsOnDouble,
    required bool confirmed,
  }) = _CheckoutDetailsState;

  factory CheckoutDetailsState.initial() => const CheckoutDetailsState(
        minDartsThrown: 0,
        maxDartsThrown: 0,
        minDartsOnDouble: 0,
        maxDartsOnDouble: 0,
        selectedDartsThrown: 0,
        selectedDartsOnDouble: 0,
        confirmed: false,
      );
}
