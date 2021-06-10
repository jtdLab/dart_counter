part of 'create_game_bloc.dart';

@freezed
class CreateGameState with _$CreateGameState {
  const factory CreateGameState({
    required bool loading,
    required bool isOnline,
    Game? game,
  }) = _CreateGame;
}
