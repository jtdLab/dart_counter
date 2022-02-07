//part of 'checkout_details_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_details_state.freezed.dart';

@freezed
class CheckoutDetailsState with _$CheckoutDetailsState {
  const factory CheckoutDetailsState.initial() = Initial;
}
