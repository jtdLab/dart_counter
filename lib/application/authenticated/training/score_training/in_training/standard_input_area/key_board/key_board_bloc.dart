import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/authenticated/shared/standard_input_area/key_board_event.dart';
import 'package:dart_counter/application/authenticated/shared/standard_input_area/key_board_state.dart';
import 'package:dart_counter/application/authenticated/training/score_training/in_training/standard_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/authenticated/shared/standard_input_area/key_board_event.dart';
export 'package:dart_counter/application/authenticated/shared/standard_input_area/key_board_state.dart';

// TODO doc
@injectable
class KeyBoardBloc extends Bloc<KeyBoardEvent, KeyBoardState> {
  final IDartUtils _dartUtils;

  final InputRowBloc _inputRowBloc;

  KeyBoardBloc(
    this._dartUtils,
    this._inputRowBloc,
  ) : super(
          // Set inital state
          KeyBoardState.allEnabled().copyWith(check: null),
        ) {
    // Register event handlers
    on<DigitPressed>((event, emit) => _handleDigitPressed(event));
    on<EreasePressed>((event, emit) => _handleEreasePressed());
  }

  /// Returns instance registered inside getIt.
  factory KeyBoardBloc.getIt(
    InputRowBloc inputRowBloc,
  ) =>
      getIt<KeyBoardBloc>(
        param1: [inputRowBloc],
      );

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of `InputRowBloc`
  @factoryMethod
  factory KeyBoardBloc.injectable(
    IDartUtils dartUtils,
    @factoryParam List<Object> otherDependencies,
  ) =>
      KeyBoardBloc(
        dartUtils,
        otherDependencies[0] as InputRowBloc,
      );

  /// Handle incoming [DigitPressed] event.
  void _handleDigitPressed(
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

  /// Handle incoming [EreasePressed] event.
  void _handleEreasePressed() {
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
