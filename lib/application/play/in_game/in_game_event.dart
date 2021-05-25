part of 'in_game_bloc.dart';

@freezed
class InGameEvent with _$InGameEvent {
  const factory InGameEvent.watchDataStarted() = _WatchDataStarted;
  const factory InGameEvent.snapshotReceived({required Game game}) =
      _SnapshotReceived;
  const factory InGameEvent.cancelPressed() = _CancelPressed;
  const factory InGameEvent.undoThrowPressed() = _UndoThrowPressed;
  const factory InGameEvent.performThrowPressed({required Throw t}) = _PerformThrowPressed;
  const factory InGameEvent.checkPressed() = _CheckPressed;
  const factory InGameEvent.erasePressed() = _ErasePressed;
  const factory InGameEvent.digitPressed({required int digit}) = _DigitPressed;
}
