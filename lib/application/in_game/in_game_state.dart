part of 'in_game_bloc.dart';

@freezed
class InGameState with _$InGameState {
  const factory InGameState.loading() = _Loading;
  const factory InGameState.snapshot({required Game game}) = _Snapshot;
}
