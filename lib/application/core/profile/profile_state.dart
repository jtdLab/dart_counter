part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.noData() = NoData;
  const factory ProfileState.data({
    required String? photoUrl,
    required String username,
    required double average,
    required Trend averageTrend,
    required double checkoutPercentage,
    required Trend checkoutPercentageTrend,
    required double firstNine,
    required Trend firstNineTrend,
    required int games,
    required int wins,
    required int defeats,
  }) = Data;
}
