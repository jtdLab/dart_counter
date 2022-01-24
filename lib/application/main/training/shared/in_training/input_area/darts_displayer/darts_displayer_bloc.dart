import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/shared/darts_displayer/darts_displayer_event.dart';
import 'package:dart_counter/application/main/shared/darts_displayer/darts_displayer_state.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

export 'package:dart_counter/application/main/shared/darts_displayer/darts_displayer_event.dart';
export 'package:dart_counter/application/main/shared/darts_displayer/darts_displayer_state.dart';

@injectable
class DartsDisplayerBloc
    extends Bloc<DartsDisplayerEvent, DartsDisplayerState> {
  DartsDisplayerBloc()
      : super(
          // Set initial state
          const DartsDisplayerState.empty(),
        ) {
    // Register event handlers
    on<DartAdded>((event, emit) => _handleDartAdded(event, emit));
    on<DartRemoved>((_, emit) => _handleRemoved(emit));
    on<ResetRequested>((_, emit) => _handleResetRequested(emit));
  }

  /// Handle incoming [DartAdded] event.
  void _handleDartAdded(
    DartAdded event,
    Emitter<DartsDisplayerState> emit,
  ) {
    // incoming dart
    final dart = event.dart;

    state.when(
      // when state is empty
      empty: () {
        // emit not empty with incoming dart as the only element
        emit(
          DartsDisplayerState.notEmpty(
            darts: NotEmptyList([dart].toImmutableList()),
          ),
        );
      },
      // when state is not empty
      notEmpty: (darts) {
        // and darts has less than 3 elements
        if (darts.length < 3) {
          // emit not empty with updated darts where incoming dart was added
          emit(
            DartsDisplayerState.notEmpty(
              darts: NotEmptyList(
                darts.getOrCrash().toMutableList()..add(dart),
              ),
            ),
          );
        }
      },
    );
  }

  /// Handle incoming [DartRemoved] event.
  void _handleRemoved(
    Emitter<DartsDisplayerState> emit,
  ) {
    state.whenOrNull(
      // when state is not empty
      notEmpty: (darts) {
        // and darts has 1 element
        if (darts.length == 1) {
          // emit empty
          emit(const DartsDisplayerState.empty());
          // else
        } else {
          // emit not empty with last dart removed
          emit(
            DartsDisplayerState.notEmpty(
              darts: NotEmptyList(
                darts.getOrCrash().toMutableList()..removeLast(),
              ),
            ),
          );
        }
      },
    );
  }

  /// Handle incoming [ResetRequested] event.
  void _handleResetRequested(
    Emitter<DartsDisplayerState> emit,
  ) {
    // emit empty
    emit(const DartsDisplayerState.empty());
  }
}
