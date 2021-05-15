part of 'profile_button_bloc.dart';

@freezed
class ProfileButtonState with _$ProfileButtonState {
  const factory ProfileButtonState.noData() = _NoData;
  const factory ProfileButtonState.data({
    required String? photoUrl,
    required String username,
    required double average,
    required double checkoutPercentage,
    required int wins,
    required int defeats,
  }) = _Data;
}
