part of 'in_game_bloc.dart';

@freezed
class InGameState with _$InGameState {
  const factory InGameState({
    required Game game,
  }) = _InGameState;
}