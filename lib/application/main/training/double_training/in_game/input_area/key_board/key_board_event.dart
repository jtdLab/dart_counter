part of 'key_board_bloc.dart';

@freezed
class KeyBoardEvent with _$KeyBoardEvent {
  const factory KeyBoardEvent.doubleHitPressed() = _DoubleHitPressed;
  const factory KeyBoardEvent.missHitPressed() = _MissHitPressed;
  const factory KeyBoardEvent.ereasePressed() = _EreasePressed;
}
