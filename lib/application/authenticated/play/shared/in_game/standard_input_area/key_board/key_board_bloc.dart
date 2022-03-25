import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/authenticated/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/authenticated/play/shared/in_game/in_game_bloc.dart';
import 'package:dart_counter/application/authenticated/play/shared/in_game/standard_input_area/input_row/input_row_bloc.dart'
    hide Started;
import 'package:dart_counter/application/authenticated/shared/standard_input_area/key_board_event.dart';
import 'package:dart_counter/application/authenticated/shared/standard_input_area/key_board_state.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';

export 'package:dart_counter/application/authenticated/shared/standard_input_area/key_board_event.dart';
export 'package:dart_counter/application/authenticated/shared/standard_input_area/key_board_state.dart';

abstract class KeyBoardBloc extends Bloc<KeyBoardEvent, KeyBoardState> {
  final IDartUtils _dartUtils;

  final AdvancedSettingsBloc _advancedSettingsBloc;
  final InGameBloc _inGameBloc;
  final InputRowBloc _inputRowBloc;

  KeyBoardBloc(
    this._dartUtils,
    this._advancedSettingsBloc,
    this._inGameBloc,
    this._inputRowBloc,
  ) : super(
          // Set inital state
          KeyBoardState.allEnabled(), // TODO calc depending on depedencies
        ) {
    // Register event handlers
    on<Started>(
      (_, emit) async => _handleStarted(emit),
      transformer: restartable(),
    );
    on<DigitPressed>((event, emit) => _handleDigitPressed(event));
    on<EreasePressed>((event, emit) => _handleEreasePressed());
  }

  /// Handle incoming [Started] event.
  Future<void> _handleStarted(
    Emitter<KeyBoardState> emit,
  ) async {
    // TODO maybe user emit.foreach if it forwards errors correctly (in online also pls)
    await Future.wait(
      [
        _advancedSettingsBloc.stream.forEach((_) => _refreshState(emit)),
        _inputRowBloc.stream.forEach((_) => _refreshState(emit)),
      ],
      eagerError: true,
    );
  }

  /// Handle incoming [DigitPressed] event.
  void _handleDigitPressed(
    DigitPressed event,
  ) {
    // the digit of the pressed button
    final digit = event.digit;

    // read the current input
    final input = _inputRowBloc.state;

    // read smart key board enabled
    final smartKeyBoardEnabled = _isSmartKeyBoardEnabled();

    // when smart key board is enabled
    if (smartKeyBoardEnabled) {
      // and pressed button is enabled
      if (_isDigitButtonEnabled(digit)) {
        // append incoming digit to current input
        final newInput = _appendDigit(digit, input);

        // update input to the appended version
        _inputRowBloc.add(InputRowEvent.inputChanged(newInput: newInput));
      }
      // when smart key board is not enabled
    } else {
      // when input is 0 and digit is 0
      if (input == 0 && digit == 0) {
        // do nothing
        return;
      }

      // else append incoming digit to current input
      final newInput = _appendDigit(digit, input);

      // when new input is valid
      if (_validatePoints(newInput)) {
        // update input to the appended version
        _inputRowBloc.add(InputRowEvent.inputChanged(newInput: newInput));
      }
    }
  }

  /// Handle incoming [EreasePressed] event.
  void _handleEreasePressed() {
    // read the current input
    final input = _inputRowBloc.state;

    // read smart key board enabled
    final smartKeyBoardEnabled = _isSmartKeyBoardEnabled();

    // when smart key board is enabled
    if (smartKeyBoardEnabled) {
      // and erease button is enabled
      if (state.erease == ButtonState.enabled) {
        // cut last digit off from current input or set to 0 if it had only 1 digit
        final newInput = _cutLastDigit(input);

        // update input to the cut off version
        _inputRowBloc.add(InputRowEvent.inputChanged(newInput: newInput));
      }
      // when smart key board is not enabled
    } else {
      // and input is not 0
      if (input != 0) {
        // cut last digit off from current input or set to 0 if it had only 1 digit
        final newInput = _cutLastDigit(input);

        // update input to the cut off version
        _inputRowBloc.add(InputRowEvent.inputChanged(newInput: newInput));
      }
    }
  }

  /// Recalculates the state of this bloc.
  void _refreshState(
    Emitter<KeyBoardState> emit,
  ) {
    // read smart key board enabled
    final smartKeyBoardEnabled = _isSmartKeyBoardEnabled();

    // when smart key board is enabled
    if (smartKeyBoardEnabled) {
      // read the current input
      final input = _inputRowBloc.state;

      // calculate the new state
      // 1. every digit button is enabled if it would lead to a valid input when pressed
      // 2. erease button is enabled when input is not 0
      // else they are disabled
      emit(
        KeyBoardState.initial(
          one: _validatePoints(_appendDigit(1, input))
              ? ButtonState.enabled
              : ButtonState.disabled,
          two: _validatePoints(_appendDigit(2, input))
              ? ButtonState.enabled
              : ButtonState.disabled,
          three: _validatePoints(_appendDigit(3, input))
              ? ButtonState.enabled
              : ButtonState.disabled,
          four: _validatePoints(_appendDigit(4, input))
              ? ButtonState.enabled
              : ButtonState.disabled,
          five: _validatePoints(_appendDigit(5, input))
              ? ButtonState.enabled
              : ButtonState.disabled,
          six: _validatePoints(_appendDigit(6, input))
              ? ButtonState.enabled
              : ButtonState.disabled,
          seven: _validatePoints(_appendDigit(7, input))
              ? ButtonState.enabled
              : ButtonState.disabled,
          eight: _validatePoints(_appendDigit(8, input))
              ? ButtonState.enabled
              : ButtonState.disabled,
          nine: _validatePoints(_appendDigit(9, input))
              ? ButtonState.enabled
              : ButtonState.disabled,
          zero: input == 0
              ? ButtonState.disabled
              : _validatePoints(_appendDigit(0, input))
                  ? ButtonState.enabled
                  : ButtonState.disabled,
          erease: input == 0 ? ButtonState.disabled : ButtonState.enabled,
        ),
      );
      // when smart key board is not enabled
    } else {
      // emit new state with all buttons enabled
      emit(KeyBoardState.allEnabled());
    }
  }

  /// Returns `true` when the current user has smart keyboard enabled.
  bool _isSmartKeyBoardEnabled() {
    // read smart key board enabled
    return _advancedSettingsBloc.state.map(
      createGame: (createGame) => throw Error(), // TODO name better
      inGame: (inGame) =>
          inGame.currentTurnAdvancedSettings.smartKeyBoardActivated,
    );
  }

  /// Returns `true` when the button with [digit] is currently enabled.
  bool _isDigitButtonEnabled(int digit) {
    switch (digit) {
      case 0:
        return state.zero == ButtonState.enabled;
      case 1:
        return state.one == ButtonState.enabled;
      case 2:
        return state.two == ButtonState.enabled;
      case 3:
        return state.three == ButtonState.enabled;
      case 4:
        return state.four == ButtonState.enabled;
      case 5:
        return state.five == ButtonState.enabled;
      case 6:
        return state.six == ButtonState.enabled;
      case 7:
        return state.seven == ButtonState.enabled;
      case 8:
        return state.eight == ButtonState.enabled;
      case 9:
        return state.nine == ButtonState.enabled;
      default:
        throw Error(); // TODO name better
    }
  }

  /// Returns int where [digit] was appended to [input].
  ///
  /// For example:
  ///
  /// digit = 1 and input = 5 then returns 51
  int _appendDigit(int digit, int input) {
    final inputString = input.toString();
    return int.parse('$inputString$digit');
  }

  /// Cuts the last digit off [input] or set to 0 if it had only 1 digit.
  ///
  /// For example:
  ///
  /// digit = 19 then returns 1
  ///
  /// digit = 1 then returns 0
  int _cutLastDigit(int input) {
    final inputString = input.toString();
    final cutInputString = inputString.substring(0, inputString.length - 1);
    return int.parse(cutInputString.isEmpty ? '0' : cutInputString);
  }

  /// Returns true if [points] is valid for next throw in current game state.
  bool _validatePoints(int points) {
    return _dartUtils.validatePoints(
      points: points,
      pointsLeft: _inGameBloc.state.gameSnapshot.currentTurn().pointsLeft,
    );
  }
}
