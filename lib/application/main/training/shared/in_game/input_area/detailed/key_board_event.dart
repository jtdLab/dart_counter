import 'package:dart_counter/domain/game/dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_board_event.freezed.dart';

@freezed
class KeyBoardEvent with _$KeyBoardEvent {
  const factory KeyBoardEvent.started() = Started;
  const factory KeyBoardEvent.valueSelected({
    required int value,
  }) = ValueSelected;
  const factory KeyBoardEvent.typeSelected({
    required DartType type,
  }) = TypeSelected;
  const factory KeyBoardEvent.ereasePressed() = EreasePressed;
  const factory KeyBoardEvent.unfocusRequested() = UnfocusRequested;
}
