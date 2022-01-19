import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_board_state.freezed.dart';

enum ButtonState { enabled, disabled }

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

  /// [KeyBoardInitial] with all buttons enabled.
  factory KeyBoardState.allEnabled() => const KeyBoardState.initial(
        one: ButtonState.enabled,
        two: ButtonState.enabled,
        three: ButtonState.enabled,
        four: ButtonState.enabled,
        five: ButtonState.enabled,
        six: ButtonState.enabled,
        seven: ButtonState.enabled,
        eight: ButtonState.enabled,
        nine: ButtonState.enabled,
        zero: ButtonState.enabled,
        erease: ButtonState.enabled,
        check: ButtonState.enabled,
      );
}
