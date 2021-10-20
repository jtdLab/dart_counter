import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'training_event.dart';
part 'training_state.dart';
part 'training_bloc.freezed.dart';

class TrainingBloc extends Bloc<TrainingEvent, TrainingState> {
  TrainingBloc() : super(_Initial()) {
    on<TrainingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
