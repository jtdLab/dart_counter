// coverage:ignore-file

part of 'game_history_bloc.dart';

@freezed
class GameHistoryEvent with _$GameHistoryEvent {
  const factory GameHistoryEvent.fetchGameHistoryAllRequested() =
      _FetchGameHistoryAllRequested;
  const factory GameHistoryEvent.fetchGameHistoryOfflineRequested() =
      _FetchGameHistoryOfflineRequested;
  const factory GameHistoryEvent.fetchGameHistoryOnlineRequested({
    UniqueId? userId,
  }) = _FetchGameHistoryOnlineRequested;
  const factory GameHistoryEvent.gameSelected({
    required AbstractGame game,
  }) = _GameSelected;
}
