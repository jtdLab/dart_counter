part of 'in_game_bloc.dart';

// TODO rename event to fel angelov naming convention
@freezed
class InGameEvent with _$InGameEvent {
  const factory InGameEvent.gameCanceled() = GameCanceled;
  const factory InGameEvent.undoThrowPressed() = UndoThrowPressed;
  const factory InGameEvent.performThrowPressed({
    required Throw t,
  }) = PerformThrowPressed;
  const factory InGameEvent.inputChanged({
    required int newInput,
  }) = InputChanged;
  const factory InGameEvent.gameReceived({
    required GameSnapshot gameSnapshot,
  }) = GameReceived;
}
