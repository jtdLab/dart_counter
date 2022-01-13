import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_board_event.freezed.dart';

@freezed
class KeyBoardEvent with _$KeyBoardEvent {
  const factory KeyBoardEvent.doubleHitPressed() = DoubleHitPressed;
  const factory KeyBoardEvent.missHitPressed() = MissHitPressed;
  const factory KeyBoardEvent.ereasePressed() = EreasePressed;
}
