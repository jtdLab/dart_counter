part of 'in_game_bloc.dart';

@freezed
class InGameEvent with _$InGameEvent {
  const factory InGameEvent.watchStarted() = WatchStarted;
  const factory InGameEvent.receivedGame({
    required Game game,
  }) = ReceivedGame;
  const factory InGameEvent.gameCanceled() = GameCanceled;
}
