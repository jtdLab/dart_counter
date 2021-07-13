part of 'game_bloc.dart';

@freezed
class GameState with _$GameState {
  const factory GameState.loading() = Loading;
  const factory GameState.success({
    required Game game,
  }) = Success;
}
