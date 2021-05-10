part of 'career_stats_watcher_bloc.dart';

@freezed
class CareerStatsWatcherEvent with _$CareerStatsWatcherEvent {
  const factory CareerStatsWatcherEvent.load() = _Load;
}