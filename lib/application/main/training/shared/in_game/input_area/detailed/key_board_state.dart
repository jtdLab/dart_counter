import 'package:dart_counter/domain/game/dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_board_state.freezed.dart';

@freezed
class KeyBoardState with _$KeyBoardState {
  const factory KeyBoardState.initial({
    required DigitButtonState zero,
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
    required ButtonState erease,
  }) = KeyBoardInitial;

  /// [KeyBoardInitial] with all buttons enabled.
  factory KeyBoardState.allEnabled() => const KeyBoardState.initial(
        zero: DigitButtonState.enabled(),
        one: DigitButtonState.enabled(),
        two: DigitButtonState.enabled(),
        three: DigitButtonState.enabled(),
        four: DigitButtonState.enabled(),
        five: DigitButtonState.enabled(),
        six: DigitButtonState.enabled(),
        seven: DigitButtonState.enabled(),
        eight: DigitButtonState.enabled(),
        nine: DigitButtonState.enabled(),
        ten: DigitButtonState.enabled(),
        eleven: DigitButtonState.enabled(),
        twelve: DigitButtonState.enabled(),
        thirteen: DigitButtonState.enabled(),
        fourteen: DigitButtonState.enabled(),
        fifteen: DigitButtonState.enabled(),
        sixteen: DigitButtonState.enabled(),
        seventeen: DigitButtonState.enabled(),
        eighteen: DigitButtonState.enabled(),
        nineteen: DigitButtonState.enabled(),
        twenty: DigitButtonState.enabled(),
        twentyFive: DigitButtonState.enabled(),
        erease: ButtonState.enabled,
      );

  /// [KeyBoardInitial] with all buttons disabled.
  factory KeyBoardState.allDisabled() => const KeyBoardState.initial(
        zero: DigitButtonState.disabled(),
        one: DigitButtonState.disabled(),
        two: DigitButtonState.disabled(),
        three: DigitButtonState.disabled(),
        four: DigitButtonState.disabled(),
        five: DigitButtonState.disabled(),
        six: DigitButtonState.disabled(),
        seven: DigitButtonState.disabled(),
        eight: DigitButtonState.disabled(),
        nine: DigitButtonState.disabled(),
        ten: DigitButtonState.disabled(),
        eleven: DigitButtonState.disabled(),
        twelve: DigitButtonState.disabled(),
        thirteen: DigitButtonState.disabled(),
        fourteen: DigitButtonState.disabled(),
        fifteen: DigitButtonState.disabled(),
        sixteen: DigitButtonState.disabled(),
        seventeen: DigitButtonState.disabled(),
        eighteen: DigitButtonState.disabled(),
        nineteen: DigitButtonState.disabled(),
        twenty: DigitButtonState.disabled(),
        twentyFive: DigitButtonState.disabled(),
        erease: ButtonState.disabled,
      );
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
}
