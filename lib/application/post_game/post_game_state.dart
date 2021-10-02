part of 'post_game_bloc.dart';

@freezed
class PostGameState with _$PostGameState {
  const factory PostGameState.initial({
    required GameSnapshot gameSnapshot,
  }) = PostGameInitial;
}
