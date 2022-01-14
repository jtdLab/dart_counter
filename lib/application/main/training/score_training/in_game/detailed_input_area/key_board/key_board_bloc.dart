import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/detailed/key_board_event.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/detailed/key_board_state.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/training/shared/in_game/input_area/detailed/key_board_event.dart';
export 'package:dart_counter/application/main/training/shared/in_game/input_area/detailed/key_board_state.dart';

@injectable
class KeyBoardBloc extends Bloc<KeyBoardEvent, KeyBoardState> {
  final DartsDisplayerBloc _dartsDisplayerBloc;

  KeyBoardBloc(
    @factoryParam DartsDisplayerBloc? dartsDisplayerBloc,
  )   : _dartsDisplayerBloc = dartsDisplayerBloc!,
        super(
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
    // register event handlers
    on<DigitPressed>((event, emit) => _mapDigitPressedToState(event));
    on<EreasePressed>((event, emit) => _mapEreasePressedToState());
    on<UnfocusRequested>((event, emit) => _mapUnfocusRequestedToState());
  }

  void _mapDigitPressedToState(
    DigitPressed event,
  ) {
    // TODO implement
    throw UnimplementedError();
  }

  void _mapEreasePressedToState() {
    // TODO implement
    throw UnimplementedError();
  }

  void _mapUnfocusRequestedToState() {
    // TODO implement
    throw UnimplementedError();
  }
}
