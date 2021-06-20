import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'input_area_event.dart';
part 'input_area_state.dart';
part 'input_area_bloc.freezed.dart';

@injectable
class InputAreaBloc extends Bloc<InputAreaEvent, InputAreaState> {
  final PlayBloc _playBloc;

  InputAreaBloc(this._playBloc) : super(const InputAreaState(input: 0));

  @override
  Stream<InputAreaState> mapEventToState(
    InputAreaEvent event,
  ) async* {
    yield* event.map(
      undoThrowPressed: (_) => _mapUndoThrowPressedToState(),
      performThrowPressed: (_) => _mapPerformThrowPressedToState(),
      checkPressed: (_) => _mapCheckPressedToState(),
      erasePressed: (_) => _mapErasePressedToState(),
      digitPressed: (event) => _mapDigitPressedToState(event),
    );
  }

  Stream<InputAreaState> _mapUndoThrowPressedToState() async* {
    throw UnimplementedError(); // TODO wehter belong to this bloc
  }

  Stream<InputAreaState> _mapErasePressedToState() async* {
    final input = state.input;

    if (input < 10) {
      yield const InputAreaState(input: 0);
    } else {
      final inputString = input.toString();
      final newInput =
          int.parse(inputString.substring(0, inputString.length - 1));
      yield InputAreaState(input: newInput);
    }
  }

  Stream<InputAreaState> _mapPerformThrowPressedToState() async* {
    throw UnimplementedError(); // TODO wehter belong to this bloc
  }

  Stream<InputAreaState> _mapCheckPressedToState() async* {
    throw UnimplementedError(); // TODO wehter belong to this bloc
  }

  Stream<InputAreaState> _mapDigitPressedToState(DigitPressed event) async* {
    final digit = event.digit;
    final currentInput = state.input;
    final newInput = int.parse(currentInput.toString() + digit.toString());

    print(newInput);
    final valid = newInput <= 180;
    // TODO validate more
    
    if(valid) {
      yield InputAreaState(input: newInput);
    }

  }
}
