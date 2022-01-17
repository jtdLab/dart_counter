import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/play/offline/in_game/standard_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/standard/key_board_event.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/standard/key_board_state.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/training/shared/in_game/input_area/standard/key_board_event.dart';
export 'package:dart_counter/application/main/training/shared/in_game/input_area/standard/key_board_state.dart';

// TODO implement with advanced settings and all

@injectable
class KeyBoardBloc extends Bloc<KeyBoardEvent, KeyBoardState> {
  final IDartUtils _dartUtils;

  final InputRowBloc _inputRowBloc;

  KeyBoardBloc(
    this._dartUtils,
    @factoryParam InputRowBloc? inputRowBloc,
  )   : _inputRowBloc = inputRowBloc!,
        super(
          // set inital state
          const KeyBoardState.initial(
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
          ),
        ) {
    // register event handlers
    on<DigitPressed>((event, emit) => _mapDigitPressedToState(event));
    on<EreasePressed>((event, emit) => _mapEreasePressedToState());
  }

  void _mapDigitPressedToState(
    DigitPressed event,
  ) {
    // read the current input
    final input = _inputRowBloc.state;

    // read incoming digit
    final digit = event.digit;

    // append incoming digit to current input
    final inputString = input.toString();
    final newInput = int.parse('$inputString$digit');

    // when incoming digit leads to a valid new input
    if (_dartUtils.validatePoints(points: newInput)) {
      // set new input to the appended version
      _inputRowBloc.add(InputRowEvent.inputChanged(newInput: newInput));
    }
  }

  void _mapEreasePressedToState() {
    // read the current input
    final input = _inputRowBloc.state;

    // when current input greater than 9
    if (input > 9) {
      // cut last digit off from current input
      final inputString = input.toString();
      final newInput = int.parse(
        inputString.substring(0, inputString.length - 1),
      );

      // set new input to the cut off version
      _inputRowBloc.add(InputRowEvent.inputChanged(newInput: newInput));
      // when 0 < current input < 10
    } else if (input > 0) {
      // set new input to 0
      _inputRowBloc.add(const InputRowEvent.inputChanged(newInput: 0));
    }
  }
}
