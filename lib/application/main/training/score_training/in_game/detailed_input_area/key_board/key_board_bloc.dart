import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_board_bloc.freezed.dart';
part 'key_board_event.dart';
part 'key_board_state.dart';

// TODO move button states to state file ??
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

class KeyBoardBloc extends Bloc<KeyBoardEvent, KeyBoardState> {
  KeyBoardBloc()
      : super(
          // set initial state
          const KeyBoardState.initial(
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
            zero: DigitButtonState.enabled(),
            erease: ButtonState.enabled,
          ),
        ) {
    on<KeyBoardEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
