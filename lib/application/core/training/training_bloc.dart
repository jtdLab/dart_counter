import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/training/training_game_snapshot.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'training_event.dart';
part 'training_state.dart';
part 'training_bloc.freezed.dart';

@lazySingleton
class TrainingBloc extends Bloc<TrainingEvent, TrainingState>
    with AutoResetLazySingleton {
  TrainingBloc() : super(const TrainingState.initial()) {
    on<TrainingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<TrainingBloc>()) {
      getIt.resetLazySingleton<TrainingBloc>();
    }

    return super.close();
  }
}
