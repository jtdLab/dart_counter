import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/application_error.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/detailed_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'detailed_erease_button_bloc.freezed.dart';
part 'detailed_erease_button_event.dart';
part 'detailed_erease_button_state.dart';

class DetailedEreaseButtonBloc
    extends Bloc<DetailedEreaseButtonEvent, DetailedEreaseButtonState> {
  final DetailedInputAreaBloc _inputAreaBloc;
  final InputCubit _inputCubit;

  DetailedEreaseButtonBloc(
    this._inputAreaBloc,
    this._inputCubit,
  ) : super(const DetailedEreaseButtonState.disabled()) {
    on<_Started>(
      (_, emit) async => _mapStartedToState(emit),
      transformer: restartable(),
    );
    on<_Pressed>((_, emit) => _mapPressedToState(emit));
  }

  Future<void> _mapStartedToState(
    Emitter<DetailedEreaseButtonState> emit,
  ) async {
    await emit.forEach<InputState>(
      _inputCubit.stream,
      onData: (element) {
        final darts = element.when(
          // TODO test this atm bloc_test does not do this
          points: (_) => throw ApplicationError(
            'Received points from inputCubit but darts expected',
          ),
          darts: (darts) => darts,
        );

        if (darts.isEmpty()) {
          return const DetailedEreaseButtonState.disabled();
        } else {
          return const DetailedEreaseButtonState.enabled();
        }
      },
    );
  }

  void _mapPressedToState(
    Emitter<DetailedEreaseButtonState> emit,
  ) {
    final darts = _inputCubit.state
        .when(
          points: (_) => throw ApplicationError(
            'InputCubit holds points but darts expected',
          ),
          darts: (darts) => darts,
        )
        .toMutableList();

    if (darts.isNotEmpty()) {
      _inputAreaBloc.add(const DetailedInputAreaEvent.unfocusRequested());
      _inputCubit.update(newInput: right(darts..removeLast()));
    }
  }
}
