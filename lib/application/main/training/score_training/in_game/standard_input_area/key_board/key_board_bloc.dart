import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/standard/key_board_event.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/standard/key_board_state.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/training/shared/in_game/input_area/standard/key_board_event.dart';
export 'package:dart_counter/application/main/training/shared/in_game/input_area/standard/key_board_state.dart';

@injectable
class KeyBoardBloc extends Bloc<KeyBoardEvent, KeyBoardState> {
  KeyBoardBloc()
      : super(
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
    on<KeyBoardEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
