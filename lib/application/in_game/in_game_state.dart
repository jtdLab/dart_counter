part of 'in_game_bloc.dart';

@freezed
class InGameState with _$InGameState {
  const factory InGameState({
    required int inputPoints,
    required List<Tuple2<String, int>> inputPointsDeep,
    required Game game,
  }) = _InGame;
}
