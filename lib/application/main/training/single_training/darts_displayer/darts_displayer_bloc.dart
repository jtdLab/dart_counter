import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'darts_displayer_bloc.freezed.dart';
part 'darts_displayer_event.dart';
part 'darts_displayer_state.dart';

class DartsDisplayerBloc
    extends Bloc<DartsDisplayerEvent, DartsDisplayerState> {
  DartsDisplayerBloc()
      : super(
          // set initial state
          const DartsDisplayerState.initial(),
        ) {
    // register event handlers
    on<_DartAdded>((event, emit) => _mapDartAddedToState(event, emit));
    on<_DartRemoved>((_, emit) => _mapDartRemovedToState(emit));
  }

  /// handle incoming [_DartAdded] event.
  void _mapDartAddedToState(
    _DartAdded event,
    Emitter<DartsDisplayerState> emit,
  ) {
    // incoming dart
    final dart = event.dart;

    state.when(
      // when state is initial
      initial: () {
        // emit darts with incoming dart as the only element
        emit(
          DartsDisplayerState.darts(
            darts: NotEmptyList([dart].toImmutableList()),
          ),
        );
      },
      // when state is darts
      darts: (darts) {
        // and darts has less than 3 elements
        if (darts.length < 3) {
          // emit updated darts with incoming dart added
          emit(
            DartsDisplayerState.darts(
              darts: NotEmptyList(
                darts.getOrCrash().toMutableList()..add(dart),
              ),
            ),
          );
        }
      },
    );
  }

  /// handle incoming [_DartRemoved] event.
  void _mapDartRemovedToState(
    Emitter<DartsDisplayerState> emit,
  ) {
    state.whenOrNull(
      // when state is darts
      darts: (darts) {
        // and darts has 1 element
        if (darts.length == 1) {
          // emit initial
          emit(const DartsDisplayerState.initial());
          // else
        } else {
          // emit updated darts with last dart removed
          emit(
            DartsDisplayerState.darts(
              darts: NotEmptyList(
                darts.getOrCrash().toMutableList()..removeLast(),
              ),
            ),
          );
        }
      },
    );
  }
}
