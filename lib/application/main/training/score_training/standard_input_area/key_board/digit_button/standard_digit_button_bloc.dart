import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'standard_digit_button_event.dart';
part 'standard_digit_button_state.dart';
part 'standard_digit_button_bloc.freezed.dart';

class StandardDigitButtonBloc
    extends Bloc<StandardDigitButtonEvent, StandardDigitButtonState> {
  final int _digit;

  StandardDigitButtonBloc(
    this._digit,
  ) : super(const StandardDigitButtonState.initial()) {
    on<StandardDigitButtonEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
