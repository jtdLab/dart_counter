part of 'play_bloc.dart';

@freezed
class PlayState with _$PlayState {
  const factory PlayState.initial() = PlayInitial;
  const factory PlayState.gameInProgress({
    required GameSnapshot gameSnapshot,
  }) = PlayGameInProgress;
}
