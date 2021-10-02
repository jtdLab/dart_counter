part of 'play_bloc.dart';

@freezed
class PlayState with _$PlayState {
  const factory PlayState.initial({
    bool? online,
  }) = PlayInitial;
  const factory PlayState.gameInProgress({
    required bool online,
    required GameSnapshot game,
  }) = PlayGameInProgress;
}
