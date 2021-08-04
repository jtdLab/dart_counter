part of 'in_game_bloc.dart';

@freezed
class InGameEvent with _$InGameEvent {
  const factory InGameEvent.gameCanceled() = GameCanceled;
  const factory InGameEvent.undoThrowPressed() = UndoThrowPressed;
  const factory InGameEvent.performThrowPressed({
    required Throw t,
  }) = PerformThrowPressed;
  const factory InGameEvent.showCheckoutDetailsRequested() =
      ShowCheckoutDetailsRequested;
  const factory InGameEvent.gameReceived({
    required GameSnapshot game,
  }) = GameReceived;
}
