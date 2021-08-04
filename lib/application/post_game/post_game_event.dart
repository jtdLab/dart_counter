part of 'post_game_bloc.dart';

@freezed
class PostGameEvent with _$PostGameEvent {
  const factory PostGameEvent.gameReceived({
    required GameSnapshot game,
  }) = GameReceived;
}
