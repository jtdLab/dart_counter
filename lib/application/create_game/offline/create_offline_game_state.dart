part of 'create_offline_game_bloc.dart';

@freezed
class CreateOfflineGameState with _$CreateOfflineGameState {
  const factory CreateOfflineGameState.initial({
    required OfflineGameSnapshot gameSnapshot,
  }) = CreateOfflineGameInitial;
}
