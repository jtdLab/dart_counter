import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/play/offline/in_game/standard_input_area/input_row/input_row_bloc.dart'
    hide Started;
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/standard/key_board_event.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/standard/key_board_state.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/training/shared/in_game/input_area/standard/key_board_event.dart';
export 'package:dart_counter/application/main/training/shared/in_game/input_area/standard/key_board_state.dart';

@injectable
class KeyBoardBloc extends Bloc<KeyBoardEvent, KeyBoardState> {
  final IDartUtils _dartUtils;

  final AdvancedSettingsBloc _advancedSettingsBloc;
  final InputRowBloc _inputRowBloc;

  KeyBoardBloc(
    this._dartUtils,
    @factoryParam AdvancedSettingsBloc? advancedSettingsBloc,
    @factoryParam InputRowBloc? inputRowBloc,
  )   : _advancedSettingsBloc = advancedSettingsBloc!,
        _inputRowBloc = inputRowBloc!,
        super(
          // Set inital state
          allEnabled,
        ) {
    // Register event handlers
    on<Started>((_, emit) async => _mapStartedToState(emit));
    on<DigitPressed>((event, emit) => _mapDigitPressedToState(event));
    on<EreasePressed>((event, emit) => _mapEreasePressedToState());
  }

  /// Handle incoming [Started] event.
  Future<void> _mapStartedToState(
    Emitter<KeyBoardState> emit,
  ) async {
    await Future.wait(
      [
        _advancedSettingsBloc.stream.forEach((_) => _refreshState(emit)),
        _inputRowBloc.stream.forEach((_) => _refreshState(emit)),
      ],
      eagerError: true,
    );
  }

  /// Handle incoming [DigitPressed] event.
  void _mapDigitPressedToState(
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

      // when new input would lead to valid input
      if (_dartUtils.validatePoints(points: _appendDigit(digit, newInput))) {
        // update input to the appended version
        _inputRowBloc.add(InputRowEvent.inputChanged(newInput: newInput));
      }
    }
  }

  /// Handle incoming [EreasePressed] event.
  void _mapEreasePressedToState() {
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
      // every digit button is enabled if it would lead to a valid input when pressed
      // else it is disabled
      emit(
        KeyBoardState.initial(
          one: _dartUtils.validatePoints(points: _appendDigit(1, input))
              ? ButtonState.enabled
              : ButtonState.disabled,
          two: _dartUtils.validatePoints(points: _appendDigit(2, input))
              ? ButtonState.enabled
              : ButtonState.disabled,
          three: _dartUtils.validatePoints(points: _appendDigit(3, input))
              ? ButtonState.enabled
              : ButtonState.disabled,
          four: _dartUtils.validatePoints(points: _appendDigit(4, input))
              ? ButtonState.enabled
              : ButtonState.disabled,
          five: _dartUtils.validatePoints(points: _appendDigit(5, input))
              ? ButtonState.enabled
              : ButtonState.disabled,
          six: _dartUtils.validatePoints(points: _appendDigit(6, input))
              ? ButtonState.enabled
              : ButtonState.disabled,
          seven: _dartUtils.validatePoints(points: _appendDigit(7, input))
              ? ButtonState.enabled
              : ButtonState.disabled,
          eight: _dartUtils.validatePoints(points: _appendDigit(8, input))
              ? ButtonState.enabled
              : ButtonState.disabled,
          nine: _dartUtils.validatePoints(points: _appendDigit(9, input))
              ? ButtonState.enabled
              : ButtonState.disabled,
          zero: input == 0
              ? ButtonState.disabled
              : _dartUtils.validatePoints(points: _appendDigit(0, input))
                  ? ButtonState.enabled
                  : ButtonState.disabled,
          erease: input == 0 ? ButtonState.disabled : ButtonState.enabled,
        ),
      );
      // when smart key board is not enabled
    } else {
      // emit new state with all buttons enabled
      emit(allEnabled);
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

  /// [KeyBoardState] with all buttons enabled.
  static const allEnabled = KeyBoardState.initial(
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
  );
}
