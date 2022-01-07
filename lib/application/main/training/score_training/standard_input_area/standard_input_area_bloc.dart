import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'standard_input_area_event.dart';
part 'standard_input_area_state.dart';
part 'standard_input_area_bloc.freezed.dart';

class StandardInputAreaBloc
    extends Bloc<StandardInputAreaEvent, StandardInputAreaState> {
  StandardInputAreaBloc() : super(const StandardInputAreaState.initial()) {
    on<StandardInputAreaEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
