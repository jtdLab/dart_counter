part of 'in_game_bloc.dart';

@freezed
class InGameState with _$InGameState {
  const factory InGameState.initial({
    AbstractGameSnapshot? prevGameSnapshot,
    required AbstractGameSnapshot gameSnapshot,
    required Either<int, KtList<Dart>> inputOrDarts,
  }) = InGameInitial;
}
