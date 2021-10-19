part of 'in_game_bloc.dart';

@freezed
class InGameState with _$InGameState {
  const factory InGameState.initial({
    GameSnapshot? prevGameSnapshot,
    required GameSnapshot gameSnapshot,
    required Either<int, KtList<Dart>> inputOrDarts,
  }) = InGameInitial;
}
