import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_digit_button_event.dart';
part 'detailed_digit_button_state.dart';
part 'detailed_digit_button_bloc.freezed.dart';

class DetailedDigitButtonBloc
    extends Bloc<DetailedDigitButtonEvent, DetailedDigitButtonState> {
  final int _digit;

  DetailedDigitButtonBloc(
    this._digit,
  ) : super(const DetailedDigitButtonState.enabled()) {
    on<DetailedDigitButtonEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
