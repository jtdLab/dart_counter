part of 'post_game_bloc.dart';

// TODO rename event to fel angelov naming convention
@freezed
class PostGameEvent with _$PostGameEvent {
  const factory PostGameEvent.gameReceived({
    required GameSnapshot gameSnapshot,
  }) = GameReceived;
}
