part of 'post_game_bloc.dart';

@freezed
class PostGameEvent with _$PostGameEvent {
  const factory PostGameEvent.watchStarted() = WatchStarted;
  const factory PostGameEvent.receivedGame({
    required Game game,
  }) = ReceivedGame;
}
