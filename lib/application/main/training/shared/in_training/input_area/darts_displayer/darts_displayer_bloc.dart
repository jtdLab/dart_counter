import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/shared/darts_displayer/darts_displayer_event.dart';
import 'package:dart_counter/application/main/shared/darts_displayer/darts_displayer_state.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

export 'package:dart_counter/application/main/shared/darts_displayer/darts_displayer_event.dart';
export 'package:dart_counter/application/main/shared/darts_displayer/darts_displayer_state.dart';

// TODO maybe impl dartdisplayer bloc without the initial state ???? and use empty kt list instead

@injectable
class DartsDisplayerBloc
    extends Bloc<DartsDisplayerEvent, DartsDisplayerState> {
  DartsDisplayerBloc()
      : super(
          // Set initial state
          const DartsDisplayerState.initial(),
        ) {
    // Register event handlers
    on<DartAdded>((event, emit) => _mapDartAddedToState(event, emit));
    on<DartRemoved>((_, emit) => _mapDartRemovedToState(emit));
    on<ResetRequested>((_, emit) => _mapResetRequestedToState(emit));
  }

  /// handle incoming [DartAdded] event.
  void _mapDartAddedToState(
    DartAdded event,
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

  /// handle incoming [DartRemoved] event.
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

  /// handle incoming [ResetRequested] event.
  void _mapResetRequestedToState(
    Emitter<DartsDisplayerState> emit,
  ) {
    // emit initial
    emit(const DartsDisplayerState.initial());
  }
}
