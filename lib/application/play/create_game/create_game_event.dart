part of 'create_game_bloc.dart';

@freezed
class CreateGameEvent with _$CreateGameEvent {
    const factory CreateGameEvent.watchDataStarted() = _WatchDataStarted;
    const factory CreateGameEvent.snapshotReceived(Game game) = _SnapshotReceived;
}