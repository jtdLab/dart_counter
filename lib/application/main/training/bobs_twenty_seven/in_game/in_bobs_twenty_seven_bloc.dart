import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'in_bobs_twenty_seven_bloc.freezed.dart';
part 'in_bobs_twenty_seven_event.dart';
part 'in_bobs_twenty_seven_state.dart';

@injectable
class InBobsTwentySevenBloc
    extends Bloc<InBobsTwentySevenEvent, InBobsTwentySevenState> {
  final IBobsTwentySevenService _trainingService;

  InBobsTwentySevenBloc(
    this._trainingService,
  ) : super(const InBobsTwentySevenState.initial()) {
    on<_Canceled>((event, emit) => _mapCanceledToState());
  }

  void _mapCanceledToState() {
    _trainingService.cancel();
  }
}
