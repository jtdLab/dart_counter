part of 'in_game_bloc.dart';

@freezed
class InGameState with _$InGameState {
  const factory InGameState.initial({
    required GameSnapshot gameSnapshot,
    required int input,
  }) = InGameInitial;
}
