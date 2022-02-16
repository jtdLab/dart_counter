// coverage:ignore-file

part of 'create_online_game_cubit.dart';

@freezed
class  CreateOnlineGameState with _$CreateOnlineGameState {
  const factory CreateOnlineGameState.initial() = CreateOnlineGameInitial;
  const factory CreateOnlineGameState.success() = CreateOnlineGameSuccess;
  const factory CreateOnlineGameState.failure({
    required PlayFailure failure,
  }) = CreateOnlineGameFailure;
}
