import 'package:dart_counter/domain/game/throw.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'in_game_event.freezed.dart';

@freezed
class InGameEvent with _$InGameEvent {
  const factory InGameEvent.gameCanceled() = GameCanceled;
  const factory InGameEvent.undoThrowPressed() = UndoThrowPressed;
  const factory InGameEvent.performThrowPressed({
    required Throw t,
  }) = PerformThrowPressed;
}
