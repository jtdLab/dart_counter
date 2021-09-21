part of 'game_history_bloc.dart';

@freezed
class GameHistoryState with _$GameHistoryState {
  const factory GameHistoryState.loadInProgress() = GameHistoryLoadInProgress;

  const factory GameHistoryState.loadSuccess({
    required List10<Game> gameHistory,
    Game? selectedGame,
  }) = GameHistoryLoadSuccess;

  const factory GameHistoryState.loadFailure({
    required Object failure,
  }) = GameHistoryLoadFailure;
}
