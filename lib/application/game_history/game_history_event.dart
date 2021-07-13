part of 'game_history_bloc.dart';

@freezed
class GameHistoryEvent with _$GameHistoryEvent {
  const factory GameHistoryEvent.gameHistoryReceived({
    required List10<Game> gameHistory,
  }) = GameHistoryReceived;
  const factory GameHistoryEvent.gameSelected({
    required Game game,
  }) = GameSelected;
}
