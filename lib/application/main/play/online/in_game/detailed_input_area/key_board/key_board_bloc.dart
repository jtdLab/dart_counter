import 'package:async/async.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/play/shared/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/detailed/key_board_event.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/detailed/key_board_state.dart';
import 'package:dart_counter/core/stream_extensions.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

export 'package:dart_counter/application/main/training/shared/in_game/input_area/detailed/key_board_event.dart';
export 'package:dart_counter/application/main/training/shared/in_game/input_area/detailed/key_board_state.dart';

// if some functions are only caled in 1 other make the scope noc class lvl sondern function level

// wann new state?
// 1. digit button pressed
// 2. unfocus requested
// 4. advanced settings changed
// 5. darts changed

@injectable
class KeyBoardBloc extends Bloc<KeyBoardEvent, KeyBoardState> {
  final IDartUtils _dartUtils;
  final IPlayOnlineService _playOnlineService;

  final AdvancedSettingsBloc _advancedSettingsBloc;
  final DartsDisplayerBloc _dartsDisplayerBloc;

  /// **[otherDependencies] must contain in following order:**
  ///
  /// 1. Instance of [AdvancedSettingsBloc]
  ///
  /// 2. Instance of [DartsDisplayerBloc]
  KeyBoardBloc(
    this._dartUtils,
    this._playOnlineService,
    @factoryParam List<Object>? otherDependencies,
  )   : _advancedSettingsBloc = otherDependencies![0] as AdvancedSettingsBloc,
        _dartsDisplayerBloc = otherDependencies[1] as DartsDisplayerBloc,
        super(
          // Set initial state
          __getUnfocusedState(
            __isSmartKeyBoardEnabled(
              otherDependencies[0] as AdvancedSettingsBloc,
            ),
            __darts(otherDependencies[1] as DartsDisplayerBloc),
            __pointsLeft(_playOnlineService),
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
          _advancedSettingsBloc.stream
              // expect advanced settings bloc to only emit
              // [AdvancedSettingsInGame] events while we listening here
              // TODO name better
              .whereTypeElseCompleteWithError<AdvancedSettingsInGame>(Error()),
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
          emit(_focusValue(value));
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

        // add missed dart to darts displayer
        _dartsDisplayerBloc.add(
          DartsDisplayerEvent.dartAdded(dart: Dart(type: type, value: value)),
        );

        // unfocus and enable all valid buttons
        emit(_getUnfocusedState());
      },
    );
  }

  /**
   *  /// Handle incoming [DigitPressed] event.
  void _handleDigitPressed(
    DigitPressed event,
    Emitter<KeyBoardState> emit,
  ) {
    // read incoming digit
    final digit = event.digit;

    if (digit == 0) {
      // add missed dart to darts displayer
      _dartsDisplayerBloc.add(
        const DartsDisplayerEvent.dartAdded(dart: Dart.missed),
      );

      // unfocus and enable all valid buttons
      emit(_getUnfocusedState());
    } else {
      // emit new state and maybe update darts displayer
      emit(_handleNonZeroDigitPressed(digit));
    }
  }
   */

  /// Handle incoming [EreasePressed] event.
  void _handleEreasePressed() {
    // when erease button is enabled
    if (state.erease == ButtonState.enabled) {
      // remove dart from darts displayer
      _dartsDisplayerBloc.add(const DartsDisplayerEvent.dartRemoved());
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
        return _focusValue(focused.focusedValue);
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

  // TODO docs
  KeyBoardState _focusValue(int value) {
    final list = [
      [state.one, KeyBoardState.oneFocused()],
      [state.two, KeyBoardState.twoFocused()],
      [state.three, KeyBoardState.threeFocused()],
      [state.four, KeyBoardState.fourFocused()],
      [state.five, KeyBoardState.fiveFocused()],
      [state.six, KeyBoardState.sixFocused()],
      [state.seven, KeyBoardState.sevenFocused()],
      [state.eight, KeyBoardState.eightFocused()],
      [state.nine, KeyBoardState.nineFocused()],
      [state.ten, KeyBoardState.tenFocused()],
      [state.eleven, KeyBoardState.elevenFocused()],
      [state.twelve, KeyBoardState.twelveFocused()],
      [state.thirteen, KeyBoardState.thirteenFocused()],
      [state.fourteen, KeyBoardState.fourteenFocused()],
      [state.fifteen, KeyBoardState.fifteenFocused()],
      [state.sixteen, KeyBoardState.sixteenFocused()],
      [state.seventeen, KeyBoardState.seventeenFocused()],
      [state.eighteen, KeyBoardState.eighteenFocused()],
      [state.nineteen, KeyBoardState.nineteenFocused()],
      [state.twenty, KeyBoardState.twentyFocused()],
      [state.twentyFive, KeyBoardState.twentyFiveFocused()],
    ];

    final index = value == 25 ? 20 : value - 1;
    final digitButtonState = list[index][0] as DigitButtonState;
    final focusedKeyBoardState = list[index][1] as KeyBoardState;

    return digitButtonState.when(
      // is enabled
      enabled: () {
        final KeyBoardState newState;

        // when smart keyboard is enabled
        if (_isSmartKeyBoardEnabled()) {
          DigitButtonState recalculateDigitButtonState(DigitButtonState old) {
            if (old is DigitButtonFocused) {
              final dartType = old.type;
              final validDartTypes = _calcValidDartTypes(value);

              if (!validDartTypes.contains(dartType)) {
                return const DigitButtonState.disabled();
              }
            }

            return old;
          }

          // new state where all digit buttons are disabled
          // except button around the focused digit that are valid in current game state
          // and maybe erease
          newState = focusedKeyBoardState.copyWith(
            one: recalculateDigitButtonState(state.one),
            two: recalculateDigitButtonState(state.two),
            three: recalculateDigitButtonState(state.three),
            four: recalculateDigitButtonState(state.four),
            five: recalculateDigitButtonState(state.five),
            six: recalculateDigitButtonState(state.six),
            seven: recalculateDigitButtonState(state.seven),
            eight: recalculateDigitButtonState(state.eight),
            nine: recalculateDigitButtonState(state.nine),
            ten: recalculateDigitButtonState(state.ten),
            eleven: recalculateDigitButtonState(state.eleven),
            twelve: recalculateDigitButtonState(state.twelve),
            thirteen: recalculateDigitButtonState(state.thirteen),
            fourteen: recalculateDigitButtonState(state.fourteen),
            fifteen: recalculateDigitButtonState(state.fifteen),
            sixteen: recalculateDigitButtonState(state.sixteen),
            seventeen: recalculateDigitButtonState(state.seventeen),
            eighteen: recalculateDigitButtonState(state.eighteen),
            nineteen: recalculateDigitButtonState(state.nineteen),
            twenty: recalculateDigitButtonState(state.twenty),
            twentyFive: recalculateDigitButtonState(state.twentyFive),
          );
          // when smart keyboard is not enabled
        } else {
          // new state where all digit buttons are disabled
          // except button around the focused digit and maybe erease
          newState = focusedKeyBoardState;
        }

        return newState.copyWith(
          erease: _dartsDisplayerBloc.state is DartsDisplayerInitial
              ? ButtonState.disabled
              : ButtonState.enabled,
        );
      },
      // is focused
      focused: (type, value) {
        // add dart with incoming type and value to darts displayer
        _dartsDisplayerBloc.add(
          DartsDisplayerEvent.dartAdded(
            dart: Dart(type: type, value: value),
          ),
        );

        // unfocus and enable all valid buttons
        return _getUnfocusedState();
      },
      disabled: () {
        throw Error(); // TODO name better
      },
    );
  }

  /// Returns `true` when the current turn has smart keyboard enabled.
  bool _isSmartKeyBoardEnabled() {
    return __isSmartKeyBoardEnabled(_advancedSettingsBloc);
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

  /// Returns the current darts input by the user
  KtList<Dart> _darts() {
    return __darts(_dartsDisplayerBloc);
  }

  /// Returns the current darts input by the user using [bloc].
  static KtList<Dart> __darts(
    DartsDisplayerBloc bloc,
  ) {
    return bloc.state.when(
      initial: () => const KtList<Dart>.empty(),
      darts: (darts) => darts.getOrCrash(),
    );
  }

  /// Returns the points left of the current turn.
  int _pointsLeft() {
    return __pointsLeft(_playOnlineService);
  }

  /// Returns the points left of the current turn using [service].
  static int __pointsLeft(
    IPlayOnlineService service,
  ) {
    return service.getGame().currentTurn().pointsLeft;
  }

  /// Returns list of darts where [dart] was appended to [darts].
  static KtList<Dart> _appendDart(
    Dart dart,
    KtList<Dart> darts,
  ) {
    return darts.toMutableList()..add(dart);
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
      if (__validateDarts(_appendDart(dart, darts), pointsLeft, dartUtils)) {
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

  /// Returns `true` if [darts] is valid for next throw in current game state.
  bool _validateDarts(
    KtList<Dart> darts,
  ) {
    return __validateDarts(
      darts,
      _playOnlineService.getGame().currentTurn().pointsLeft,
      _dartUtils,
    );
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
