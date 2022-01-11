part of 'key_board_bloc.dart';

@freezed
class KeyBoardEvent with _$KeyBoardEvent {
  const factory KeyBoardEvent.singleHitPressed() = _SingleHitPressed;
  const factory KeyBoardEvent.doubleHitPressed() = _DoubleHitPressed;
  const factory KeyBoardEvent.tripleHitPressed() = _TripleHitPressed;
  const factory KeyBoardEvent.missHitPressed() = _MissHitPressed;
  const factory KeyBoardEvent.ereasePressed() = _EreasePressed;
}
