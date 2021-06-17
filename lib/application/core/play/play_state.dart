part of 'play_bloc.dart';

@freezed
class PlayState with _$PlayState {
  const factory PlayState.initial() = Initial;
  const factory PlayState.createGameInProgress() = CreateGameInProgress;
  const factory PlayState.joinGameInProgress() = JoinGameInProgress;
  const factory PlayState.success({required Game game}) = Success;
  const factory PlayState.failure() = Failure;
}
