// coverage:ignore-file

part of 'create_online_game_bloc.dart';

@freezed
class CreateOnlineGameEvent with _$CreateOnlineGameEvent {
  const factory CreateOnlineGameEvent.started() = _Started;
  const factory CreateOnlineGameEvent.gameCanceled() = _GameCanceled;
  const factory CreateOnlineGameEvent.playerReordered({
    required int oldIndex,
    required int newIndex,
  }) = _PlayerReordered;
  const factory CreateOnlineGameEvent.playerRemoved({
    required int index,
  }) = _PlayerRemoved;
  const factory CreateOnlineGameEvent.startingPointsUpdated({
    required int newStartingPoints,
  }) = _StartingPointsUpdated;
  const factory CreateOnlineGameEvent.modeUpdated({
    required Mode newMode,
  }) = _ModeUpdated;
  const factory CreateOnlineGameEvent.sizeUpdated({
    required int newSize,
  }) = _SizeUpdated;
  const factory CreateOnlineGameEvent.typeUpdated({
    required Type newType,
  }) = _TypeUpdated;
  const factory CreateOnlineGameEvent.gameStarted() = _GameStarted;
}
