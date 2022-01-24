import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_training/in_training_event.dart';
import 'package:dart_counter/application/main/training/shared/in_training/in_training_state.dart';
import 'package:dart_counter/domain/training/abstract_i_training_service.dart';

export 'package:dart_counter/application/main/training/shared/in_training/in_training_event.dart';
export 'package:dart_counter/application/main/training/shared/in_training/in_training_state.dart';

class InTrainingBloc extends Bloc<InTrainingEvent, InTrainingState> {
  final AbstractITrainingService _trainingService;

  InTrainingBloc(
    this._trainingService,
  ) : super(
          // Set initial state
          const InTrainingState.initial(),
        ) {
    // Register event handlers
    on<Canceled>((event, emit) => _handleCanceled());
  }

  /// Handle incoming [Canceled] event.
  void _handleCanceled() {
    _trainingService.cancel();
  }
}
