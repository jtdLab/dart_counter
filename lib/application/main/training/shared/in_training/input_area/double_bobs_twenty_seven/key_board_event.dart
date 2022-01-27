import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_board_event.freezed.dart';

@freezed
class KeyBoardEvent with _$KeyBoardEvent {
  const factory KeyBoardEvent.doublePressed() = DoublePressed;
  const factory KeyBoardEvent.missedPressed() = MissedPressed;
  const factory KeyBoardEvent.ereasePressed() = EreasePressed;
}
