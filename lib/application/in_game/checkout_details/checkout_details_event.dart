part of 'checkout_details_bloc.dart';

@freezed
class CheckoutDetailsEvent with _$CheckoutDetailsEvent {
  const factory CheckoutDetailsEvent.started() = _Started;
}