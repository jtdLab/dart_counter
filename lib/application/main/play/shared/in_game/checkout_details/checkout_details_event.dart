// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_details_event.freezed.dart';

@freezed
class CheckoutDetailsEvent with _$CheckoutDetailsEvent {
  const factory CheckoutDetailsEvent.selectedDartsThrownUpdated({
    required int newSelectedDartsThrown,
  }) = SelectedDartsThrownUpdated;
  const factory CheckoutDetailsEvent.selectedDartsOnDoubleUpdated({
    required int newSelectedDartsOnDouble,
  }) = SelectedDartsOnDoubleUpdated;
  const factory CheckoutDetailsEvent.confirmPressed() = ConfirmPressed;
}
