// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_details_state.freezed.dart';

@freezed
class CheckoutDetailsState with _$CheckoutDetailsState {
  const factory CheckoutDetailsState.initial({
    required int minDartsThrown,
    required int maxDartsThrown,
    required int minDartsOnDouble,
    required int maxDartsOnDouble,
    required int selectedDartsThrown,
    required int selectedDartsOnDouble,
  }) = CheckoutDetailsInitial;
}
