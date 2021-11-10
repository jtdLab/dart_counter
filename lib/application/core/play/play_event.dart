part of 'play_bloc.dart';

@freezed
class PlayEvent with _$PlayEvent {
  const factory PlayEvent.gameCreated({
    required bool online,
  }) = PlayGameCreated;
  const factory PlayEvent.gameJoined() = PlayGameJoined;
  const factory PlayEvent.gameSnapshotReceived({
    required AbstractGameSnapshot gameSnapshot,
  }) = PlayGameSnapshotReceived;
  const factory PlayEvent.resetRequested() = PlayResetRequested;
}
