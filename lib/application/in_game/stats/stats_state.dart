part of 'stats_bloc.dart';

@freezed
class StatsState with _$StatsState {
  const factory StatsState({
    required Game game,
  }) = _StatsState;
}
