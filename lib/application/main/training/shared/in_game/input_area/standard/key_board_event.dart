import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_board_event.freezed.dart';

@freezed
class KeyBoardEvent with _$KeyBoardEvent {
  const factory KeyBoardEvent.digitPressed({
    required int digit,
  }) = DigitPressed;
  const factory KeyBoardEvent.ereasePressed() = EreasePressed;
  const factory KeyBoardEvent.checkPressed() = CheckPressed;
}
