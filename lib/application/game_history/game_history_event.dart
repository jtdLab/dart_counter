part of 'game_history_bloc.dart';

@freezed
class GameHistoryEvent with _$GameHistoryEvent {
  const factory GameHistoryEvent.watchStarted() = WatchStarted;
  const factory GameHistoryEvent.userReceived({
    required User user,
  }) = UserReceived;
}