part of 'game_history_watcher_bloc.dart';

@freezed
class GameHistoryWatcherEvent with _$GameHistoryWatcherEvent {
  const factory GameHistoryWatcherEvent.started() = _Started;
}