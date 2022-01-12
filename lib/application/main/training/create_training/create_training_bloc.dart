import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_training_event.dart';
part 'create_training_state.dart';
part 'create_training_bloc.freezed.dart';

class CreateTrainingBloc extends Bloc<CreateTrainingEvent, CreateTrainingState> {
  CreateTrainingBloc() : super(_Initial()) {
    on<CreateTrainingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
