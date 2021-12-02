part of 'checkout_details_bloc.dart';

@freezed
class CheckoutDetailsEvent with _$CheckoutDetailsEvent {
  const factory CheckoutDetailsEvent.selectedDartsThrownUpdated({
    required int newSelectedDartsThrown,
  }) = _SelectedDartsThrownUpdated;
  const factory CheckoutDetailsEvent.selectedDartsOnDoubleUpdated({
    required int newSelectedDartsOnDouble,
  }) = _SelectedDartsOnDoubleUpdated;
  const factory CheckoutDetailsEvent.confirmPressed() = _ConfirmPressed;
}
