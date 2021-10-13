part of 'in_game_bloc.dart';

// TODO rename event to fel angelov naming convention
@freezed
class InGameEvent with _$InGameEvent {
  const factory InGameEvent.gameCanceled() = GameCanceled;
  const factory InGameEvent.undoThrowPressed() = UndoThrowPressed;
  const factory InGameEvent.performThrowPressed({
    required Throw t,
  }) = PerformThrowPressed;
  const factory InGameEvent.inputOrDartsChanged({
    required Either<int, KtList<Dart>> newInputOrDarts,
  }) = InputOrDartsChanged;
  const factory InGameEvent.gameReceived({
    required GameSnapshot gameSnapshot,
  }) = GameReceived;
}
