part of 'key_board_bloc.dart';

@freezed
class KeyBoardEvent with _$KeyBoardEvent {
  const factory KeyBoardEvent.singlePressed() = _SinglePressed;
  const factory KeyBoardEvent.doublePressed() = _DoublePressed;
  const factory KeyBoardEvent.triplePressed() = _TriplePressed;
  const factory KeyBoardEvent.missedPressed() = _MissedPressed;
  const factory KeyBoardEvent.ereasePressed() = _EreasePressed;
}
