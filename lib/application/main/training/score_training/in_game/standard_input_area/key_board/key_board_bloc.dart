import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_board_bloc.freezed.dart';
part 'key_board_event.dart';
part 'key_board_state.dart';

enum ButtonState { enabled, disabled }

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
