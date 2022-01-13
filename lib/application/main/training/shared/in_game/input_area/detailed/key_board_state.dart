import 'package:dart_counter/domain/game/dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_board_state.freezed.dart';

@freezed
class KeyBoardState with _$KeyBoardState {
  const factory KeyBoardState.initial({
    required DigitButtonState one,
    required DigitButtonState two,
    required DigitButtonState three,
    required DigitButtonState four,
    required DigitButtonState five,
    required DigitButtonState six,
    required DigitButtonState seven,
    required DigitButtonState eight,
    required DigitButtonState nine,
    required DigitButtonState ten,
    required DigitButtonState eleven,
    required DigitButtonState twelve,
    required DigitButtonState thirteen,
    required DigitButtonState fourteen,
    required DigitButtonState fifteen,
    required DigitButtonState sixteen,
    required DigitButtonState seventeen,
    required DigitButtonState eighteen,
    required DigitButtonState nineteen,
    required DigitButtonState twenty,
    required DigitButtonState twentyFive,
    required DigitButtonState zero,
    required ButtonState erease,
  }) = KeyBoardInitial;
}

enum ButtonState { enabled, disabled }

@freezed
class DigitButtonState with _$DigitButtonState {
  const factory DigitButtonState.disabled() = DigitButtonDisabled;
  const factory DigitButtonState.enabled() = DigitButtonEnabled;
  const factory DigitButtonState.focused({
    required DartType type,
    required int value,
  }) = DigitButtonFocused;
  /**
  *  const factory DigitButtonState.single({
    required int value,
  }) = DigitButtonSingle;
  const factory DigitButtonState.double({
    required int value,
  }) = DigitButtonDouble;
  const factory DigitButtonState.triple({
    required int value,
  }) = DigitButtonTriple;
  */
}
