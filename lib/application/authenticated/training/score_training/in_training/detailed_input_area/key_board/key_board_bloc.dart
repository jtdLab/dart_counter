import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/application_error.dart';
import 'package:dart_counter/application/authenticated/shared/detailed_input_area/key_board_event.dart';
import 'package:dart_counter/application/authenticated/shared/detailed_input_area/key_board_state.dart';
import 'package:dart_counter/application/authenticated/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/authenticated/shared/detailed_input_area/key_board_event.dart';
export 'package:dart_counter/application/authenticated/shared/detailed_input_area/key_board_state.dart';

// TODO doc
/// [otherDependencies] must contain in follwoing order:
///
/// 1. Instance of [DartsDisplayerBloc]
@injectable
class KeyBoardBloc extends Bloc<KeyBoardEvent, KeyBoardState> {
  final DartsDisplayerBloc _dartsDisplayerBloc;

  KeyBoardBloc(
    this._dartsDisplayerBloc,
  ) : super(
          // Set initial state
          KeyBoardState.initialAllEnabled(),
        ) {
    // Register event handlers
    on<ValueSelected>((event, emit) => _handleValueSelected(event, emit));
    on<TypeSelected>((event, emit) => _handleTypeSelected(event, emit));
    on<EreasePressed>((_, __) => _handleEreasePressed());
    on<UnfocusRequested>((_, emit) => _handleUnfocusRequested(emit));
  }

  /// Returns instance registered inside getIt.
  factory KeyBoardBloc.getIt(
    DartsDisplayerBloc dartsDisplayerBloc,
  ) =>
      getIt<KeyBoardBloc>(
        param1: [dartsDisplayerBloc],
      );

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of `DartsDisplayerBloc`
  @factoryMethod
  factory KeyBoardBloc.injectable(
    @factoryParam List<Object> otherDependencies,
  ) =>
      KeyBoardBloc(
        otherDependencies[0] as DartsDisplayerBloc,
      );

  /// Handle incoming [ValueSelected] event.
  void _handleValueSelected(
    ValueSelected event,
    Emitter<KeyBoardState> emit,
  ) {
    state.map(
      initial: (initial) {
        // incoming selected value
        final value = event.value;

        if (value == 0) {
          // add missed dart to darts displayer
          _dartsDisplayerBloc.add(
            const DartsDisplayerEvent.dartAdded(dart: Dart.missed),
          );

          // unfocus and enable all buttons
          emit(KeyBoardState.initialAllEnabled());
        } else {
          // emit new state where all buttons are disabled except buttons
          // around value are focused if valid
          emit(_getFocusedState(value));
        }
      },
      focused: (_) => throw ApplicationError.keyBoardFocusedExpected(),
    );
  }

  /// Handle incoming [TypeSelected] event.
  void _handleTypeSelected(
    TypeSelected event,
    Emitter<KeyBoardState> emit,
  ) {
    state.map(
      initial: (_) => throw ApplicationError.keyBoardInitialExpected(),
      focused: (focused) {
        // incoming type
        final type = event.type;
        // current focused value
        final focusedValue = focused.focusedValue;

        // add missed dart with incoming type and value
        _dartsDisplayerBloc.add(
          DartsDisplayerEvent.dartAdded(
            dart: Dart(type: type, value: focusedValue),
          ),
        );

        // unfocus and enable all buttons
        emit(KeyBoardState.initialAllEnabled());
      },
    );
  }

  /// Handle incoming [EreasePressed] event.
  void _handleEreasePressed() {
    // remove dart from darts displayer
    _dartsDisplayerBloc.add(const DartsDisplayerEvent.dartRemoved());
  }

  /// Handle incoming [UnfocusRequested] event.
  void _handleUnfocusRequested(
    Emitter<KeyBoardState> emit,
  ) {
    // unfocus and enable all buttons again
    emit(KeyBoardState.initialAllEnabled());
  }

  /// Returns the [KeyBoardState] when [value] is focused.
  KeyBoardState _getFocusedState(int value) {
    switch (value) {
      case 1:
        return KeyBoardState.oneFocused();
      case 2:
        return KeyBoardState.twoFocused();
      case 3:
        return KeyBoardState.threeFocused();
      case 4:
        return KeyBoardState.fourFocused();
      case 5:
        return KeyBoardState.fiveFocused();
      case 6:
        return KeyBoardState.sixFocused();
      case 7:
        return KeyBoardState.sevenFocused();
      case 8:
        return KeyBoardState.eightFocused();
      case 9:
        return KeyBoardState.nineFocused();
      case 10:
        return KeyBoardState.tenFocused();
      case 11:
        return KeyBoardState.elevenFocused();
      case 12:
        return KeyBoardState.twelveFocused();
      case 13:
        return KeyBoardState.thirteenFocused();
      case 14:
        return KeyBoardState.fourteenFocused();
      case 15:
        return KeyBoardState.fifteenFocused();
      case 16:
        return KeyBoardState.sixteenFocused();
      case 17:
        return KeyBoardState.seventeenFocused();
      case 18:
        return KeyBoardState.eighteenFocused();
      case 19:
        return KeyBoardState.nineteenFocused();
      case 20:
        return KeyBoardState.twentyFocused();
      default:
        return KeyBoardState.twentyFiveFocused();
    }
  }
}
