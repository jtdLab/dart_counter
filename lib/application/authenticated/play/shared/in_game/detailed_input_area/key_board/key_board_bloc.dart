import 'package:async/async.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/core/application_error.dart';
import 'package:dart_counter/application/authenticated/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/authenticated/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/authenticated/play/shared/in_game/in_game_bloc.dart';
import 'package:dart_counter/application/authenticated/shared/detailed_input_area/key_board_event.dart';
import 'package:dart_counter/application/authenticated/shared/detailed_input_area/key_board_state.dart';
import 'package:dart_counter/core/stream_x.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:kt_dart/kt.dart';

export 'package:dart_counter/application/authenticated/shared/detailed_input_area/key_board_event.dart';
export 'package:dart_counter/application/authenticated/shared/detailed_input_area/key_board_state.dart';

// if some functions are only caled in 1 other make the scope noc class lvl sondern function level

// wann new state?
// 1. digit button pressed
// 2. unfocus requested
// 4. advanced settings changed
// 5. darts changed

abstract class KeyBoardBloc extends Bloc<KeyBoardEvent, KeyBoardState> {
  final IDartUtils _dartUtils;

  final AdvancedSettingsBloc _advancedSettingsBloc;
  final InGameBloc _inGameBloc;
  final DartsDisplayerBloc _dartsDisplayerBloc;

  KeyBoardBloc(
    this._dartUtils,
    this._advancedSettingsBloc,
    this._inGameBloc,
    this._dartsDisplayerBloc,
  ) : super(
          // Set initial state
          __getUnfocusedState(
            __isSmartKeyBoardEnabled(_advancedSettingsBloc),
            __darts(_dartsDisplayerBloc),
            __pointsLeft(_inGameBloc),
            _dartUtils,
          ),
        ) {
    // Register event handlers
    on<Started>(
      (_, emit) async => _handleStarted(emit),
      transformer: restartable(),
    );
    on<ValueSelected>((event, emit) => _handleValueSelected(event, emit));
    on<TypeSelected>((event, emit) => _handleTypeSelected(event, emit));
    on<EreasePressed>((_, __) => _handleEreasePressed());
    on<UnfocusRequested>((_, emit) => _handleUnfocusRequested(emit));
  }

  /// Handle incoming [Started] event.
  Future<void> _handleStarted(
    Emitter<KeyBoardState> emit,
  ) async {
    await emit.forEach(
      StreamGroup.merge(
        [
          // TODO is where else coomplete with error even good practice ??
          _advancedSettingsBloc.stream
              .whereTypeElseCompleteWithError<AdvancedSettingsInGame>(
            ApplicationError.onlyAdvancedSettingsInGameExpected(),
          ),
          _dartsDisplayerBloc.stream,
        ],
      ),
      onData: (_) => _getRefreshedState(),
    );
  }

  /// Handle incoming [ValueSelected] event.
  void _handleValueSelected(
    ValueSelected event,
    Emitter<KeyBoardState> emit,
  ) {
    state.map(
      initial: (initial) {
        final value = event.value;

        if (value == 0) {
          // add missed dart to darts displayer
          _dartsDisplayerBloc.add(
            const DartsDisplayerEvent.dartAdded(dart: Dart.missed),
          );

          // unfocus and enable all valid buttons
          emit(_getUnfocusedState());
        } else {
          // emit new state where all buttons are disabled except buttons
          // around value are focused if valid
          emit(_getFocusedState(value));
        }
      },
      focused: (_) => throw Error(), // TODO name better
    );
  }

  /// Handle incoming [TypeSelected] event.
  void _handleTypeSelected(
    TypeSelected event,
    Emitter<KeyBoardState> emit,
  ) {
    state.map(
      initial: (_) => throw Error(), // TODO name better
      focused: (focused) {
        final type = event.type;
        final value = focused.focusedValue;

        // add missed dart with incoming type and value
        _dartsDisplayerBloc.add(
          DartsDisplayerEvent.dartAdded(dart: Dart(type: type, value: value)),
        );

        // unfocus and enable all valid buttons
        emit(_getUnfocusedState());
      },
    );
  }

  /// Handle incoming [EreasePressed] event.
  void _handleEreasePressed() {
    // when erease button is enabled
    if (state.erease == ButtonState.enabled) {
      // remove dart from darts displayer
      _dartsDisplayerBloc.add(const DartsDisplayerEvent.dartRemoved());
    } else {
      throw Error(); // TODO name better
    }
  }

  /// Handle incoming [UnfocusRequested] event.
  void _handleUnfocusRequested(
    Emitter<KeyBoardState> emit,
  ) {
    // unfocus and enable all valid buttons
    emit(_getUnfocusedState());
  }

  // # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # //

  // TODO doc
  KeyBoardState _getRefreshedState() {
    return state.map(
      initial: (initial) {
        return _getUnfocusedState();
      },
      focused: (focused) {
        final focusedValue = focused.focusedValue;

        return _getFocusedState(focusedValue);
      },
    );
  }

  /// Returns [KeyBoardState] where as much buttons as possible are enabled.
  /// This depends on [isSmartKeyBoardEnabled], [darts] and [pointsLeft].
  KeyBoardState _getUnfocusedState() {
    return __getUnfocusedState(
      _isSmartKeyBoardEnabled(),
      _darts(),
      _pointsLeft(),
      _dartUtils,
    );
  }

  // TODO docs
  KeyBoardState _getFocusedState(int value) {
    final validDartTypes = _calcValidDartTypes(value);

    if (validDartTypes.size == 1) {
      return _getUnfocusedState();
    }

    switch (value) {
      case 1:
        // when smart keyboard is enabled
        if (_isSmartKeyBoardEnabled()) {
          return KeyBoardState.oneFocused().copyWith(
            zero: validDartTypes.contains(DartType.single)
                ? KeyBoardState.oneFocused().zero
                : const DigitButtonState.disabled(),
            one: validDartTypes.contains(DartType.double)
                ? KeyBoardState.oneFocused().one
                : const DigitButtonState.disabled(),
            two: validDartTypes.contains(DartType.triple)
                ? KeyBoardState.oneFocused().two
                : const DigitButtonState.disabled(),
          );
          // when smart keyboard is not enabled
        } else {
          return KeyBoardState.oneFocused();
        }
      case 2:
        // when smart keyboard is enabled
        if (_isSmartKeyBoardEnabled()) {
          return KeyBoardState.twoFocused().copyWith(
            zero: validDartTypes.contains(DartType.single)
                ? KeyBoardState.twoFocused().one
                : const DigitButtonState.disabled(),
            one: validDartTypes.contains(DartType.double)
                ? KeyBoardState.twoFocused().two
                : const DigitButtonState.disabled(),
            two: validDartTypes.contains(DartType.triple)
                ? KeyBoardState.twoFocused().three
                : const DigitButtonState.disabled(),
          );
          // when smart keyboard is not enabled
        } else {
          return KeyBoardState.twoFocused();
        }
      case 3:
        // when smart keyboard is enabled
        if (_isSmartKeyBoardEnabled()) {
          return KeyBoardState.threeFocused().copyWith(
            one: validDartTypes.contains(DartType.single)
                ? KeyBoardState.threeFocused().one
                : const DigitButtonState.disabled(),
            two: validDartTypes.contains(DartType.double)
                ? KeyBoardState.threeFocused().two
                : const DigitButtonState.disabled(),
            three: validDartTypes.contains(DartType.triple)
                ? KeyBoardState.threeFocused().three
                : const DigitButtonState.disabled(),
          );
          // when smart keyboard is not enabled
        } else {
          return KeyBoardState.threeFocused();
        }
      case 4:
        // when smart keyboard is enabled
        if (_isSmartKeyBoardEnabled()) {
          return KeyBoardState.fourFocused().copyWith(
            four: validDartTypes.contains(DartType.single)
                ? KeyBoardState.fourFocused().four
                : const DigitButtonState.disabled(),
            five: validDartTypes.contains(DartType.double)
                ? KeyBoardState.fourFocused().five
                : const DigitButtonState.disabled(),
            six: validDartTypes.contains(DartType.triple)
                ? KeyBoardState.fourFocused().six
                : const DigitButtonState.disabled(),
          );
          // when smart keyboard is not enabled
        } else {
          return KeyBoardState.fourFocused();
        }
      case 5:
        // when smart keyboard is enabled
        if (_isSmartKeyBoardEnabled()) {
          return KeyBoardState.fiveFocused().copyWith(
            four: validDartTypes.contains(DartType.single)
                ? KeyBoardState.fiveFocused().four
                : const DigitButtonState.disabled(),
            five: validDartTypes.contains(DartType.double)
                ? KeyBoardState.fiveFocused().five
                : const DigitButtonState.disabled(),
            six: validDartTypes.contains(DartType.triple)
                ? KeyBoardState.fiveFocused().six
                : const DigitButtonState.disabled(),
          );
          // when smart keyboard is not enabled
        } else {
          return KeyBoardState.fiveFocused();
        }
      case 6:
        // when smart keyboard is enabled
        if (_isSmartKeyBoardEnabled()) {
          return KeyBoardState.sixFocused().copyWith(
            five: validDartTypes.contains(DartType.single)
                ? KeyBoardState.sixFocused().five
                : const DigitButtonState.disabled(),
            six: validDartTypes.contains(DartType.double)
                ? KeyBoardState.sixFocused().six
                : const DigitButtonState.disabled(),
            seven: validDartTypes.contains(DartType.triple)
                ? KeyBoardState.sixFocused().seven
                : const DigitButtonState.disabled(),
          );
          // when smart keyboard is not enabled
        } else {
          return KeyBoardState.sixFocused();
        }
      case 7:
        // when smart keyboard is enabled
        if (_isSmartKeyBoardEnabled()) {
          return KeyBoardState.sevenFocused().copyWith(
            six: validDartTypes.contains(DartType.single)
                ? KeyBoardState.sevenFocused().six
                : const DigitButtonState.disabled(),
            seven: validDartTypes.contains(DartType.double)
                ? KeyBoardState.sevenFocused().seven
                : const DigitButtonState.disabled(),
            eight: validDartTypes.contains(DartType.triple)
                ? KeyBoardState.sevenFocused().eight
                : const DigitButtonState.disabled(),
          );
          // when smart keyboard is not enabled
        } else {
          return KeyBoardState.sevenFocused();
        }
      case 8:
        // when smart keyboard is enabled
        if (_isSmartKeyBoardEnabled()) {
          return KeyBoardState.eightFocused().copyWith(
            seven: validDartTypes.contains(DartType.single)
                ? KeyBoardState.eightFocused().seven
                : const DigitButtonState.disabled(),
            eight: validDartTypes.contains(DartType.double)
                ? KeyBoardState.eightFocused().eight
                : const DigitButtonState.disabled(),
            nine: validDartTypes.contains(DartType.triple)
                ? KeyBoardState.eightFocused().nine
                : const DigitButtonState.disabled(),
          );
          // when smart keyboard is not enabled
        } else {
          return KeyBoardState.eightFocused();
        }
      case 9:
        // when smart keyboard is enabled
        if (_isSmartKeyBoardEnabled()) {
          return KeyBoardState.nineFocused().copyWith(
            seven: validDartTypes.contains(DartType.single)
                ? KeyBoardState.nineFocused().seven
                : const DigitButtonState.disabled(),
            eight: validDartTypes.contains(DartType.double)
                ? KeyBoardState.nineFocused().eight
                : const DigitButtonState.disabled(),
            nine: validDartTypes.contains(DartType.triple)
                ? KeyBoardState.nineFocused().nine
                : const DigitButtonState.disabled(),
          );
          // when smart keyboard is not enabled
        } else {
          return KeyBoardState.nineFocused();
        }
      case 10:
        // when smart keyboard is enabled
        if (_isSmartKeyBoardEnabled()) {
          return KeyBoardState.tenFocused().copyWith(
            ten: validDartTypes.contains(DartType.single)
                ? KeyBoardState.tenFocused().ten
                : const DigitButtonState.disabled(),
            eleven: validDartTypes.contains(DartType.double)
                ? KeyBoardState.tenFocused().eleven
                : const DigitButtonState.disabled(),
            twelve: validDartTypes.contains(DartType.triple)
                ? KeyBoardState.tenFocused().twelve
                : const DigitButtonState.disabled(),
          );
          // when smart keyboard is not enabled
        } else {
          return KeyBoardState.tenFocused();
        }
      case 11:
        // when smart keyboard is enabled
        if (_isSmartKeyBoardEnabled()) {
          return KeyBoardState.elevenFocused().copyWith(
            ten: validDartTypes.contains(DartType.single)
                ? KeyBoardState.elevenFocused().ten
                : const DigitButtonState.disabled(),
            eleven: validDartTypes.contains(DartType.double)
                ? KeyBoardState.elevenFocused().eleven
                : const DigitButtonState.disabled(),
            twelve: validDartTypes.contains(DartType.triple)
                ? KeyBoardState.elevenFocused().twelve
                : const DigitButtonState.disabled(),
          );
          // when smart keyboard is not enabled
        } else {
          return KeyBoardState.elevenFocused();
        }
      case 12:
        // when smart keyboard is enabled
        if (_isSmartKeyBoardEnabled()) {
          return KeyBoardState.twelveFocused().copyWith(
            eleven: validDartTypes.contains(DartType.single)
                ? KeyBoardState.twelveFocused().eleven
                : const DigitButtonState.disabled(),
            twelve: validDartTypes.contains(DartType.double)
                ? KeyBoardState.twelveFocused().twelve
                : const DigitButtonState.disabled(),
            thirteen: validDartTypes.contains(DartType.triple)
                ? KeyBoardState.twelveFocused().thirteen
                : const DigitButtonState.disabled(),
          );
          // when smart keyboard is not enabled
        } else {
          return KeyBoardState.twelveFocused();
        }
      case 13:
        // when smart keyboard is enabled
        if (_isSmartKeyBoardEnabled()) {
          return KeyBoardState.thirteenFocused().copyWith(
            twelve: validDartTypes.contains(DartType.single)
                ? KeyBoardState.thirteenFocused().twelve
                : const DigitButtonState.disabled(),
            thirteen: validDartTypes.contains(DartType.double)
                ? KeyBoardState.thirteenFocused().thirteen
                : const DigitButtonState.disabled(),
            fourteen: validDartTypes.contains(DartType.triple)
                ? KeyBoardState.thirteenFocused().fourteen
                : const DigitButtonState.disabled(),
          );
          // when smart keyboard is not enabled
        } else {
          return KeyBoardState.thirteenFocused();
        }
      case 14:
        // when smart keyboard is enabled
        if (_isSmartKeyBoardEnabled()) {
          return KeyBoardState.fourteenFocused().copyWith(
            thirteen: validDartTypes.contains(DartType.single)
                ? KeyBoardState.fourteenFocused().thirteen
                : const DigitButtonState.disabled(),
            fourteen: validDartTypes.contains(DartType.double)
                ? KeyBoardState.fourteenFocused().fourteen
                : const DigitButtonState.disabled(),
            fifteen: validDartTypes.contains(DartType.triple)
                ? KeyBoardState.fourteenFocused().fifteen
                : const DigitButtonState.disabled(),
          );
          // when smart keyboard is not enabled
        } else {
          return KeyBoardState.fourteenFocused();
        }
      case 15:
        // when smart keyboard is enabled
        if (_isSmartKeyBoardEnabled()) {
          return KeyBoardState.fifteenFocused().copyWith(
            thirteen: validDartTypes.contains(DartType.single)
                ? KeyBoardState.fifteenFocused().thirteen
                : const DigitButtonState.disabled(),
            fourteen: validDartTypes.contains(DartType.double)
                ? KeyBoardState.fifteenFocused().fourteen
                : const DigitButtonState.disabled(),
            fifteen: validDartTypes.contains(DartType.triple)
                ? KeyBoardState.fifteenFocused().fifteen
                : const DigitButtonState.disabled(),
          );
          // when smart keyboard is not enabled
        } else {
          return KeyBoardState.fifteenFocused();
        }
      case 16:
        // when smart keyboard is enabled
        if (_isSmartKeyBoardEnabled()) {
          return KeyBoardState.sixteenFocused().copyWith(
            sixteen: validDartTypes.contains(DartType.single)
                ? KeyBoardState.sixteenFocused().sixteen
                : const DigitButtonState.disabled(),
            seventeen: validDartTypes.contains(DartType.double)
                ? KeyBoardState.sixteenFocused().seventeen
                : const DigitButtonState.disabled(),
            eighteen: validDartTypes.contains(DartType.triple)
                ? KeyBoardState.sixteenFocused().eighteen
                : const DigitButtonState.disabled(),
          );
          // when smart keyboard is not enabled
        } else {
          return KeyBoardState.sixteenFocused();
        }
      case 17:
        // when smart keyboard is enabled
        if (_isSmartKeyBoardEnabled()) {
          return KeyBoardState.seventeenFocused().copyWith(
            sixteen: validDartTypes.contains(DartType.single)
                ? KeyBoardState.seventeenFocused().sixteen
                : const DigitButtonState.disabled(),
            seventeen: validDartTypes.contains(DartType.double)
                ? KeyBoardState.seventeenFocused().seventeen
                : const DigitButtonState.disabled(),
            eighteen: validDartTypes.contains(DartType.triple)
                ? KeyBoardState.seventeenFocused().eighteen
                : const DigitButtonState.disabled(),
          );
          // when smart keyboard is not enabled
        } else {
          return KeyBoardState.seventeenFocused();
        }
      case 18:
        // when smart keyboard is enabled
        if (_isSmartKeyBoardEnabled()) {
          return KeyBoardState.eighteenFocused().copyWith(
            seventeen: validDartTypes.contains(DartType.single)
                ? KeyBoardState.eighteenFocused().seventeen
                : const DigitButtonState.disabled(),
            eighteen: validDartTypes.contains(DartType.double)
                ? KeyBoardState.eighteenFocused().eighteen
                : const DigitButtonState.disabled(),
            nineteen: validDartTypes.contains(DartType.triple)
                ? KeyBoardState.eighteenFocused().nineteen
                : const DigitButtonState.disabled(),
          );
          // when smart keyboard is not enabled
        } else {
          return KeyBoardState.eighteenFocused();
        }
      case 19:
        // when smart keyboard is enabled
        if (_isSmartKeyBoardEnabled()) {
          return KeyBoardState.nineteenFocused().copyWith(
            eighteen: validDartTypes.contains(DartType.single)
                ? KeyBoardState.nineteenFocused().eighteen
                : const DigitButtonState.disabled(),
            nineteen: validDartTypes.contains(DartType.double)
                ? KeyBoardState.nineteenFocused().nineteen
                : const DigitButtonState.disabled(),
            twenty: validDartTypes.contains(DartType.triple)
                ? KeyBoardState.nineteenFocused().twenty
                : const DigitButtonState.disabled(),
          );
          // when smart keyboard is not enabled
        } else {
          return KeyBoardState.nineteenFocused();
        }
      case 20:
        // when smart keyboard is enabled
        if (_isSmartKeyBoardEnabled()) {
          return KeyBoardState.twentyFocused().copyWith(
            nineteen: validDartTypes.contains(DartType.single)
                ? KeyBoardState.twentyFocused().nineteen
                : const DigitButtonState.disabled(),
            twenty: validDartTypes.contains(DartType.double)
                ? KeyBoardState.twentyFocused().twenty
                : const DigitButtonState.disabled(),
            twentyFive: validDartTypes.contains(DartType.triple)
                ? KeyBoardState.twentyFocused().twentyFive
                : const DigitButtonState.disabled(),
          );
          // when smart keyboard is not enabled
        } else {
          return KeyBoardState.twentyFocused();
        }
      case 25:
        // when smart keyboard is enabled
        if (_isSmartKeyBoardEnabled()) {
          return KeyBoardState.twentyFiveFocused().copyWith(
            twenty: validDartTypes.contains(DartType.single)
                ? KeyBoardState.twentyFiveFocused().twenty
                : const DigitButtonState.disabled(),
            twentyFive: validDartTypes.contains(DartType.double)
                ? KeyBoardState.twentyFiveFocused().twentyFive
                : const DigitButtonState.disabled(),
          );
          // when smart keyboard is not enabled
        } else {
          return KeyBoardState.twentyFiveFocused();
        }
      default:
        throw Error(); // TODO name better
    }
  }

  /// Returns `true` when the current turn has smart keyboard enabled.
  bool _isSmartKeyBoardEnabled() {
    return __isSmartKeyBoardEnabled(_advancedSettingsBloc);
  }

  /// Returns the current darts input by the user
  KtList<Dart> _darts() {
    return __darts(_dartsDisplayerBloc);
  }

  /// Returns the points left of the current turn.
  int _pointsLeft() {
    return __pointsLeft(_inGameBloc);
  }

  /// Returns list that contains all [DartType]s which would lead to valid next throw.
  ///
  /// A [DartType] X gets added to the list when Dart(type: X, value: [digit]) appended
  ///
  /// to current darts would lead to valid next throw.
  KtList<DartType> _calcValidDartTypes(
    int digit,
  ) {
    return __calcValidDartTypes(
      digit,
      _darts(),
      _pointsLeft(),
      _dartUtils,
    );
  }

  // TODO docs + impl
  static KeyBoardState __getUnfocusedState(
    bool isSmartKeyBoardEnabled,
    KtList<Dart> darts,
    int pointsLeft,
    IDartUtils dartUtils,
  ) {
    // when smart key board is enabled
    if (isSmartKeyBoardEnabled) {
      // calculate the new state
      // 1.
      //  a) every digit button is focused if ONLY single is valid
      //  b) every digit button is enabled if at least single and double are valid
      // 2. erease button is enabled when darts is not empty
      // else they are disabled
      DigitButtonState getDigitButtonState(int digit) {
        if (darts.size == 3) {
          return const DigitButtonState.disabled();
        } else {
          final validDartTypes =
              __calcValidDartTypes(digit, darts, pointsLeft, dartUtils);

          if (validDartTypes.size == 1) {
            return DigitButtonState.focused(
              type: validDartTypes[0],
              value: digit,
            );
          } else {
            return const DigitButtonState.enabled();
          }
        }
      }

      return KeyBoardState.initial(
        zero: darts.size == 3
            ? const DigitButtonState.disabled()
            : const DigitButtonState.enabled(),
        one: getDigitButtonState(1),
        two: getDigitButtonState(2),
        three: getDigitButtonState(3),
        four: getDigitButtonState(4),
        five: getDigitButtonState(5),
        six: getDigitButtonState(6),
        seven: getDigitButtonState(7),
        eight: getDigitButtonState(8),
        nine: getDigitButtonState(9),
        ten: getDigitButtonState(10),
        eleven: getDigitButtonState(11),
        twelve: getDigitButtonState(12),
        thirteen: getDigitButtonState(13),
        fourteen: getDigitButtonState(14),
        fifteen: getDigitButtonState(15),
        sixteen: getDigitButtonState(16),
        seventeen: getDigitButtonState(17),
        eighteen: getDigitButtonState(18),
        nineteen: getDigitButtonState(19),
        twenty: getDigitButtonState(20),
        twentyFive: getDigitButtonState(25),
        erease: darts.isEmpty() ? ButtonState.disabled : ButtonState.enabled,
      );
      // when smart key board is not enabled
    } else {
      // return new state with all buttons enabled
      return KeyBoardState.initialAllEnabled();
    }
  }

  /// Returns `true` when the current turn has smart keyboard enabled using [bloc].
  static bool __isSmartKeyBoardEnabled(
    AdvancedSettingsBloc bloc,
  ) {
    return bloc.state.map(
      createGame: (createGame) => throw Error(), // TODO name better
      inGame: (inGame) =>
          inGame.currentTurnAdvancedSettings.smartKeyBoardActivated,
    );
  }

  /// Returns the current darts input by the user using [bloc].
  static KtList<Dart> __darts(
    DartsDisplayerBloc bloc,
  ) {
    return bloc.state.when(
      empty: () => const KtList<Dart>.empty(),
      notEmpty: (darts) => darts.getOrCrash(),
    );
  }

  /// Returns the points left of the current turn using [service].
  static int __pointsLeft(
    InGameBloc bloc,
  ) {
    return bloc.state.gameSnapshot.currentTurn().pointsLeft;
  }

  // TODO docs
  static KtList<DartType> __calcValidDartTypes(
    int digit,
    KtList<Dart> darts,
    int pointsLeft,
    IDartUtils dartUtils,
  ) {
    // special case where digit is 2 and points left is 2
    if (digit == 1 && pointsLeft == 2) {
      // return 1 because only Dart(type: double, value: 1) is valid
      return [DartType.double].toImmutableList();
    }

    // for other cases calculate the amount of valid dart types by creating
    // Dart(type: single, value: digit), Dart(type: double, value: digit), ...
    // and evalutating wheter or not the created dart leads to valid throw if added
    // to current darts or not
    final dartTypes = [DartType.single, DartType.double, DartType.triple];

    // set number of valid dart types to 0
    final validDartTypes = <DartType>[];

    // for each dartType
    for (final dartType in dartTypes) {
      // build the dart with incoming digit
      final dart = Dart(type: dartType, value: digit);

      // when the build dart leads to valid input
      if (__validateDarts(
        darts.toMutableList()..add(dart),
        pointsLeft,
        dartUtils,
      )) {
        // increase valid dartTypes
        validDartTypes.add(dartType);
        // when build dart doesnt lead to valid input
      } else {
        // stop the loop
        break;
      }
    }

    // return the result
    return validDartTypes.toImmutableList();
  }

  /// Returns `true` if [darts] is valid with [pointsLeft] using [dartUtils] to validate.
  static bool __validateDarts(
    KtList<Dart> darts,
    int pointsLeft,
    IDartUtils dartUtils,
  ) {
    return dartUtils.validateDarts(
      darts: darts,
      pointsLeft: pointsLeft,
    );
  }
}
