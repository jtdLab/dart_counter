// coverage:ignore-file

part of 'create_offline_game_cubit.dart';

@freezed
class CreateOfflineGameState with _$CreateOfflineGameState {
  const factory CreateOfflineGameState.initial() = CreateOfflineGameInitial;
  const factory CreateOfflineGameState.success({
    required OfflineGameSnapshot initialSnapshot,
  }) = CreateOfflineGameSuccess;
}
