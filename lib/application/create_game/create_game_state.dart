part of 'create_game_bloc.dart';

@freezed
class CreateGameState with _$CreateGameState {
  const factory CreateGameState.initial({
    required AbstractGameSnapshot gameSnapshot,
  }) = CreateGameInitial;
}
