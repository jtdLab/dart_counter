import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/training/double/i_double_training_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'in_double_training_bloc.freezed.dart';
part 'in_double_training_event.dart';
part 'in_double_training_state.dart';

@injectable
class InDoubleTrainingBloc
    extends Bloc<InDoubleTrainingEvent, InDoubleTrainingState> {
  final IDoubleTrainingService _trainingService;

  InDoubleTrainingBloc(
    this._trainingService,
  ) : super(const InDoubleTrainingState.initial()) {
    on<_Canceled>((event, emit) => _mapCanceledToState());
  }

  void _mapCanceledToState() {
    _trainingService.cancel();
  }
}
