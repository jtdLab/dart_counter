//part of 'checkout_details_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_details_event.freezed.dart';

@freezed
class CheckoutDetailsEvent with _$CheckoutDetailsEvent {
  const factory CheckoutDetailsEvent.started() = Started;
}
