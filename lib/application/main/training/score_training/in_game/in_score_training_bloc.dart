import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'in_score_training_bloc.freezed.dart';
part 'in_score_training_event.dart';
part 'in_score_training_state.dart';

@injectable
class InScoreTrainingBloc
    extends Bloc<InScoreTrainingEvent, InScoreTrainingState> {
  final IScoreTrainingService _trainingService;

  InScoreTrainingBloc(
    this._trainingService,
  ) : super(const InScoreTrainingState.initial()) {
    on<_Canceled>((event, emit) => _mapCanceledToState());
  }

  void _mapCanceledToState() {
    _trainingService.cancel();
  }
}
