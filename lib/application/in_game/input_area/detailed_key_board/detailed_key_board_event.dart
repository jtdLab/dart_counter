part of 'detailed_key_board_bloc.dart';

@freezed
class DetailedKeyBoardEvent with _$DetailedKeyBoardEvent {
  const factory DetailedKeyBoardEvent.dartPressed({required int value}) = DartPressed;
  const factory DetailedKeyBoardEvent.dartDetailPressed({required DartType type}) = DartDetailPressed;
}