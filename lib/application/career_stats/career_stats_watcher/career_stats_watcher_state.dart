part of 'career_stats_watcher_bloc.dart';

@freezed
class CareerStatsWatcherState with _$CareerStatsWatcherState {
  const factory CareerStatsWatcherState.initial() = _Initial;
  const factory CareerStatsWatcherState.loadInProgress() = _LoadInProgress;
  const factory CareerStatsWatcherState.loadSuccess(CareerStats careerStats) = _LoadSuccess;
  const factory CareerStatsWatcherState.loadFailure(CareerStatsFailure careerStatsFailure) = _LoadFailure;
}
