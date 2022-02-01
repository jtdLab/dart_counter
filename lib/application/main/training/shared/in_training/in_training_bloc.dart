import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_training/in_training_event.dart';
import 'package:dart_counter/domain/training/abstract_i_training_service.dart';

export 'package:dart_counter/application/main/training/shared/in_training/in_training_event.dart';

// TODO better doc in_training_bloc all blocs should have events states description or smth similar
/// {@template in_training_bloc}
/// A [InTrainingBloc] is an actor bloc that performs actions on a [AbstractITrainingService].
///
/// Supported actions:
///
/// 1. Cancel training.
///
/// {@endtemplate}
abstract class InTrainingBloc extends Bloc<InTrainingEvent, void> {
  final AbstractITrainingService _trainingService;

  /// {@macro in_training_bloc}
  InTrainingBloc(
    this._trainingService,
  ) : super(
          // Set initial state
          null,
        ) {
    // Register event handlers
    on<Canceled>((event, emit) => _handleCanceled());
  }

  /// Handle incoming [Canceled] event.
  void _handleCanceled() {
    // Cancel the training
    _trainingService.cancel();
  }
}
