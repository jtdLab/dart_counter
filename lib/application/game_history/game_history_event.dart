part of 'game_history_bloc.dart';

@freezed
class GameHistoryEvent with _$GameHistoryEvent {
  const factory GameHistoryEvent.fetchGameHistoryAllRequested() =
      FetchGameHistoryAllRequested;
  const factory GameHistoryEvent.fetchGameHistoryOfflineRequested() =
      FetchGameHistoryOfflineRequested;
  const factory GameHistoryEvent.fetchGameHistoryOnlineRequested({
    UniqueId? userId,
  }) = FetchGameHistoryOnlineRequested;
  const factory GameHistoryEvent.gameSelected({
    required Game game,
  }) = GameSelected;
}
