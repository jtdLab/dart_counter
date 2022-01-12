part of 'key_board_bloc.dart';

@freezed
class KeyBoardState with _$KeyBoardState {
  const factory KeyBoardState.initial({
    required ButtonState one,
    required ButtonState two,
    required ButtonState three,
    required ButtonState four,
    required ButtonState five,
    required ButtonState six,
    required ButtonState seven,
    required ButtonState eight,
    required ButtonState nine,
    required ButtonState zero,
    required ButtonState erease,
    ButtonState? check,
  }) = KeyBoardInitial;
}
