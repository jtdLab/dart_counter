import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'in_single_training_bloc.freezed.dart';
part 'in_single_training_event.dart';
part 'in_single_training_state.dart';

@injectable
class InSingleTrainingBloc
    extends Bloc<InSingleTrainingEvent, InSingleTrainingState> {
  final ISingleTrainingService _trainingService;

  InSingleTrainingBloc(
    this._trainingService,
  ) : super(const InSingleTrainingState.initial()) {
    on<_Canceled>((event, emit) => _mapCanceledToState());
  }

  void _mapCanceledToState() {
    _trainingService.cancel();
  }
}
