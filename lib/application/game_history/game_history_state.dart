part of 'game_history_bloc.dart';

@freezed
class GameHistoryState with _$GameHistoryState {
  const factory GameHistoryState({
    required List10<Game> gameHistory,
    Game? selectedGame,
  }) = _GameHistoryState;
}
