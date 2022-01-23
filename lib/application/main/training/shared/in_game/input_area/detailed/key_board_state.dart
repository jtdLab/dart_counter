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

  const factory KeyBoardState.focused({
    required int focusedValue,
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
  }) = KeyBoardFocused;

  /// [KeyBoardInitial] with all buttons enabled.
  factory KeyBoardState.initialAllEnabled() => const KeyBoardState.initial(
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

  /// [KeyBoardFocused] with all buttons disabled.
  factory KeyBoardState.focusedAllDisabled(int focusedValue) =>
      KeyBoardState.focused(
        focusedValue: focusedValue,
        zero: const DigitButtonState.disabled(),
        one: const DigitButtonState.disabled(),
        two: const DigitButtonState.disabled(),
        three: const DigitButtonState.disabled(),
        four: const DigitButtonState.disabled(),
        five: const DigitButtonState.disabled(),
        six: const DigitButtonState.disabled(),
        seven: const DigitButtonState.disabled(),
        eight: const DigitButtonState.disabled(),
        nine: const DigitButtonState.disabled(),
        ten: const DigitButtonState.disabled(),
        eleven: const DigitButtonState.disabled(),
        twelve: const DigitButtonState.disabled(),
        thirteen: const DigitButtonState.disabled(),
        fourteen: const DigitButtonState.disabled(),
        fifteen: const DigitButtonState.disabled(),
        sixteen: const DigitButtonState.disabled(),
        seventeen: const DigitButtonState.disabled(),
        eighteen: const DigitButtonState.disabled(),
        nineteen: const DigitButtonState.disabled(),
        twenty: const DigitButtonState.disabled(),
        twentyFive: const DigitButtonState.disabled(),
        erease: ButtonState.disabled,
      );

  /// [KeyBoardFocused] with all buttons disabled except button 0, 1 and 2 are focused with value 1.
  factory KeyBoardState.oneFocused() =>
      KeyBoardState.focusedAllDisabled(1).copyWith(
        zero: const DigitButtonState.focused(
          type: DartType.single,
          value: 1,
        ),
        one: const DigitButtonState.focused(
          type: DartType.double,
          value: 1,
        ),
        two: const DigitButtonState.focused(
          type: DartType.triple,
          value: 1,
        ),
      );

  /// [KeyBoardFocused] with all buttons disabled except button 1, 2 and 3 are focused with value 2.
  factory KeyBoardState.twoFocused() =>
      KeyBoardState.focusedAllDisabled(2).copyWith(
        one: const DigitButtonState.focused(
          type: DartType.single,
          value: 2,
        ),
        two: const DigitButtonState.focused(
          type: DartType.double,
          value: 2,
        ),
        three: const DigitButtonState.focused(
          type: DartType.triple,
          value: 2,
        ),
      );

  /// [KeyBoardFocused] with all buttons disabled except button 1, 2 and 3 are focused with value 3.
  factory KeyBoardState.threeFocused() =>
      KeyBoardState.focusedAllDisabled(3).copyWith(
        one: const DigitButtonState.focused(
          type: DartType.single,
          value: 3,
        ),
        two: const DigitButtonState.focused(
          type: DartType.double,
          value: 3,
        ),
        three: const DigitButtonState.focused(
          type: DartType.triple,
          value: 3,
        ),
      );

  /// [KeyBoardFocused] with all buttons disabled except button 4, 5 and 6 are focused with value 4.
  factory KeyBoardState.fourFocused() =>
      KeyBoardState.focusedAllDisabled(4).copyWith(
        four: const DigitButtonState.focused(
          type: DartType.single,
          value: 4,
        ),
        five: const DigitButtonState.focused(
          type: DartType.double,
          value: 4,
        ),
        six: const DigitButtonState.focused(
          type: DartType.triple,
          value: 4,
        ),
      );

  /// [KeyBoardFocused] with all buttons disabled except button 4, 5 and 6 are focused with value 5.
  factory KeyBoardState.fiveFocused() =>
      KeyBoardState.focusedAllDisabled(5).copyWith(
        four: const DigitButtonState.focused(
          type: DartType.single,
          value: 5,
        ),
        five: const DigitButtonState.focused(
          type: DartType.double,
          value: 5,
        ),
        six: const DigitButtonState.focused(
          type: DartType.triple,
          value: 5,
        ),
      );

  /// [KeyBoardFocused] with all buttons disabled except button 5, 6 and 7 are focused with value 6.
  factory KeyBoardState.sixFocused() =>
      KeyBoardState.focusedAllDisabled(6).copyWith(
        five: const DigitButtonState.focused(
          type: DartType.single,
          value: 6,
        ),
        six: const DigitButtonState.focused(
          type: DartType.double,
          value: 6,
        ),
        seven: const DigitButtonState.focused(
          type: DartType.triple,
          value: 6,
        ),
      );

  /// [KeyBoardFocused] with all buttons disabled except button 6, 7 and 8 are focused with value 7.
  factory KeyBoardState.sevenFocused() =>
      KeyBoardState.focusedAllDisabled(7).copyWith(
        six: const DigitButtonState.focused(
          type: DartType.single,
          value: 7,
        ),
        seven: const DigitButtonState.focused(
          type: DartType.double,
          value: 7,
        ),
        eight: const DigitButtonState.focused(
          type: DartType.triple,
          value: 7,
        ),
      );

  /// [KeyBoardFocused] with all buttons disabled except button 7, 8 and 9 are focused with value 8.
  factory KeyBoardState.eightFocused() =>
      KeyBoardState.focusedAllDisabled(8).copyWith(
        seven: const DigitButtonState.focused(
          type: DartType.single,
          value: 8,
        ),
        eight: const DigitButtonState.focused(
          type: DartType.double,
          value: 8,
        ),
        nine: const DigitButtonState.focused(
          type: DartType.triple,
          value: 8,
        ),
      );

  /// [KeyBoardFocused] with all buttons disabled except button 7, 8 and 9 are focused with value 9.
  factory KeyBoardState.nineFocused() =>
      KeyBoardState.focusedAllDisabled(9).copyWith(
        seven: const DigitButtonState.focused(
          type: DartType.single,
          value: 9,
        ),
        eight: const DigitButtonState.focused(
          type: DartType.double,
          value: 9,
        ),
        nine: const DigitButtonState.focused(
          type: DartType.triple,
          value: 9,
        ),
      );

  /// [KeyBoardFocused] with all buttons disabled except button 10, 11 and 12 are focused with value 10.
  factory KeyBoardState.tenFocused() =>
      KeyBoardState.focusedAllDisabled(10).copyWith(
        ten: const DigitButtonState.focused(
          type: DartType.single,
          value: 10,
        ),
        eleven: const DigitButtonState.focused(
          type: DartType.double,
          value: 10,
        ),
        twelve: const DigitButtonState.focused(
          type: DartType.triple,
          value: 10,
        ),
      );

  /// [KeyBoardFocused] with all buttons disabled except button 10, 11 and 12 are focused with value 11.
  factory KeyBoardState.elevenFocused() =>
      KeyBoardState.focusedAllDisabled(11).copyWith(
        ten: const DigitButtonState.focused(
          type: DartType.single,
          value: 11,
        ),
        eleven: const DigitButtonState.focused(
          type: DartType.double,
          value: 11,
        ),
        twelve: const DigitButtonState.focused(
          type: DartType.triple,
          value: 11,
        ),
      );

  /// [KeyBoardFocused] with all buttons disabled except button 11, 12 and 13 are focused with value 12.
  factory KeyBoardState.twelveFocused() =>
      KeyBoardState.focusedAllDisabled(12).copyWith(
        eleven: const DigitButtonState.focused(
          type: DartType.single,
          value: 12,
        ),
        twelve: const DigitButtonState.focused(
          type: DartType.double,
          value: 12,
        ),
        thirteen: const DigitButtonState.focused(
          type: DartType.triple,
          value: 12,
        ),
      );

  /// [KeyBoardFocused] with all buttons disabled except button 12, 13 and 14 are focused with value 13.
  factory KeyBoardState.thirteenFocused() =>
      KeyBoardState.focusedAllDisabled(13).copyWith(
        twelve: const DigitButtonState.focused(
          type: DartType.single,
          value: 13,
        ),
        thirteen: const DigitButtonState.focused(
          type: DartType.double,
          value: 13,
        ),
        fourteen: const DigitButtonState.focused(
          type: DartType.triple,
          value: 13,
        ),
      );

  /// [KeyBoardFocused] with all buttons disabled except button 13, 14 and 15 are focused with value 14.
  factory KeyBoardState.fourteenFocused() =>
      KeyBoardState.focusedAllDisabled(14).copyWith(
        thirteen: const DigitButtonState.focused(
          type: DartType.single,
          value: 14,
        ),
        fourteen: const DigitButtonState.focused(
          type: DartType.double,
          value: 14,
        ),
        fifteen: const DigitButtonState.focused(
          type: DartType.triple,
          value: 14,
        ),
      );

  /// [KeyBoardFocused] with all buttons disabled except button 13, 14 and 15 are focused with value 15.
  factory KeyBoardState.fifteenFocused() =>
      KeyBoardState.focusedAllDisabled(15).copyWith(
        thirteen: const DigitButtonState.focused(
          type: DartType.single,
          value: 15,
        ),
        fourteen: const DigitButtonState.focused(
          type: DartType.double,
          value: 15,
        ),
        fifteen: const DigitButtonState.focused(
          type: DartType.triple,
          value: 15,
        ),
      );

  /// [KeyBoardFocused] with all buttons disabled except button 16, 17 and 18 are focused with value 16.
  factory KeyBoardState.sixteenFocused() =>
      KeyBoardState.focusedAllDisabled(16).copyWith(
        sixteen: const DigitButtonState.focused(
          type: DartType.single,
          value: 16,
        ),
        seventeen: const DigitButtonState.focused(
          type: DartType.double,
          value: 16,
        ),
        eighteen: const DigitButtonState.focused(
          type: DartType.triple,
          value: 16,
        ),
      );

  /// [KeyBoardFocused] with all buttons disabled except button 16, 17 and 18 are focused with value 17.
  factory KeyBoardState.seventeenFocused() =>
      KeyBoardState.focusedAllDisabled(17).copyWith(
        sixteen: const DigitButtonState.focused(
          type: DartType.single,
          value: 17,
        ),
        seventeen: const DigitButtonState.focused(
          type: DartType.double,
          value: 17,
        ),
        eighteen: const DigitButtonState.focused(
          type: DartType.triple,
          value: 17,
        ),
      );

  /// [KeyBoardFocused] with all buttons disabled except button 17, 18 and 19 are focused with value 18.
  factory KeyBoardState.eighteenFocused() =>
      KeyBoardState.focusedAllDisabled(18).copyWith(
        seventeen: const DigitButtonState.focused(
          type: DartType.single,
          value: 18,
        ),
        eighteen: const DigitButtonState.focused(
          type: DartType.double,
          value: 18,
        ),
        nineteen: const DigitButtonState.focused(
          type: DartType.triple,
          value: 18,
        ),
      );

  /// [KeyBoardFocused] with all buttons disabled except button 18, 19 and 20 are focused with value 19.
  factory KeyBoardState.nineteenFocused() =>
      KeyBoardState.focusedAllDisabled(19).copyWith(
        eighteen: const DigitButtonState.focused(
          type: DartType.single,
          value: 19,
        ),
        nineteen: const DigitButtonState.focused(
          type: DartType.double,
          value: 19,
        ),
        twenty: const DigitButtonState.focused(
          type: DartType.triple,
          value: 19,
        ),
      );

  /// [KeyBoardFocused] with all buttons disabled except button 19, 20 and 25 are focused with value 20.
  factory KeyBoardState.twentyFocused() =>
      KeyBoardState.focusedAllDisabled(20).copyWith(
        nineteen: const DigitButtonState.focused(
          type: DartType.single,
          value: 20,
        ),
        twenty: const DigitButtonState.focused(
          type: DartType.double,
          value: 20,
        ),
        twentyFive: const DigitButtonState.focused(
          type: DartType.triple,
          value: 20,
        ),
      );

  /// [KeyBoardFocused] with all buttons disabled except button 20 and 25 are focused with value 25.
  factory KeyBoardState.twentyFiveFocused() =>
      KeyBoardState.focusedAllDisabled(25).copyWith(
        twenty: const DigitButtonState.focused(
          type: DartType.single,
          value: 25,
        ),
        twentyFive: const DigitButtonState.focused(
          type: DartType.double,
          value: 25,
        ),
      );
}

enum ButtonState { enabled, disabled }

// TODO rename digit button is not appropriate
@freezed
class DigitButtonState with _$DigitButtonState {
  const factory DigitButtonState.disabled() = DigitButtonDisabled;
  const factory DigitButtonState.enabled() = DigitButtonEnabled;
  const factory DigitButtonState.focused({
    required DartType type,
    required int value,
  }) = DigitButtonFocused;
}
