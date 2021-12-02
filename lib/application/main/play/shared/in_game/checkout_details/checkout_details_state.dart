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
  }) = _CheckoutDetailsState;
}
