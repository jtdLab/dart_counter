part of 'game_bloc.dart';

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.watchStarted() = WatchStarted;
  const factory GameEvent.gameReceived({
    required Game game,
  }) = GameReceived;
  const factory GameEvent.failureReceived({
    required PlayFailure failure,
  }) = FailureReceived;
}
