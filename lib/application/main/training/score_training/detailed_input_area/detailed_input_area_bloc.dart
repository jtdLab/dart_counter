import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_input_area_event.dart';
part 'detailed_input_area_state.dart';
part 'detailed_input_area_bloc.freezed.dart';

class DetailedInputAreaBloc
    extends Bloc<DetailedInputAreaEvent, DetailedInputAreaState> {
  DetailedInputAreaBloc() : super(const DetailedInputAreaState.initial()) {
    on<DetailedInputAreaEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
