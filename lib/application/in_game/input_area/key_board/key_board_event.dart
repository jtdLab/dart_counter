part of 'key_board_bloc.dart';

@freezed
class KeyBoardEvent with _$KeyBoardEvent {
  const factory KeyBoardEvent.checkPressed() = CheckPressed;
  const factory KeyBoardEvent.erasePressed() = ErasePressed;
  const factory KeyBoardEvent.digitPressed({required int digit}) = DigitPressed;
}