import 'package:dart_counter/application/main/play/shared/in_game/key_board_type.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'in_game_event.freezed.dart';

@freezed
class InGameEvent with _$InGameEvent {
  const factory InGameEvent.keyBoardTypeChanged({
    required KeyBoardType newKeyBoardType,
  }) = KeyBoardTypeChanged;
  const factory InGameEvent.gameCanceled() = GameCanceled;
  const factory InGameEvent.undoThrowPressed() = UndoThrowPressed;
  const factory InGameEvent.performThrowPressed({
    required Throw t,
  }) = PerformThrowPressed;
}
