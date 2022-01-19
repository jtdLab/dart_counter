import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/detailed/key_board_event.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/detailed/key_board_state.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

export 'package:dart_counter/application/main/training/shared/in_game/input_area/detailed/key_board_event.dart';
export 'package:dart_counter/application/main/training/shared/in_game/input_area/detailed/key_board_state.dart';

// if some functions are only caled in 1 other make the scope noc class lvl sondern function level

@injectable
class KeyBoardBloc extends Bloc<KeyBoardEvent, KeyBoardState> {
  final IDartUtils _dartUtils;
  final IPlayOfflineService _playOfflineService;

  final AdvancedSettingsBloc _advancedSettingsBloc;
  final DartsDisplayerBloc _dartsDisplayerBloc;

  /// **[otherDependencies] should contain in following order:**
  ///
  /// 1. Instance of [AdvancedSettingsBloc]
  ///
  /// 2. Instance of [DartsDisplayerBloc]
  KeyBoardBloc(
    this._dartUtils,
    this._playOfflineService,
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
            __pointsLeft(_playOfflineService),
            _dartUtils,
          ),
        ) {
    // Register event handlers
    on<Started>((_, emit) async => _mapStartedToState(emit));
    on<DigitPressed>((event, emit) => _mapDigitPressedToState(event, emit));
    on<EreasePressed>((_, __) => _mapEreasePressedToState());
    on<UnfocusRequested>((_, emit) => _mapUnfocusRequestedToState(emit));
  }

  /// Handle incoming [Started] event.
  Future<void> _mapStartedToState(
    Emitter<KeyBoardState> emit,
  ) async {
    // TODO maybe user emit.foreach if it forwards errors correctly (in online also pls)
    await Future.wait(
      [
        _advancedSettingsBloc.stream.forEach((_) => _refreshState(emit)),
        _dartsDisplayerBloc.stream.forEach((_) => _refreshState(emit)),
      ],
      eagerError: true,
    );
  }

  /// Handle incoming [DigitPressed] event.
  void _mapDigitPressedToState(
    DigitPressed event,
    Emitter<KeyBoardState> emit,
  ) {
    void handleFocused(DartType type, int value) {
      // add dart with incoming type and value to darts displayer
      _dartsDisplayerBloc.add(
        DartsDisplayerEvent.dartAdded(
          dart: Dart(type: type, value: value),
        ),
      );

      // unfocus and enable all valid buttons
      emit(_getUnfocusedState());
    }

    ButtonState getEreaseButtonState() {
      return _dartsDisplayerBloc.state is DartsDisplayerInitial
          ? ButtonState.disabled
          : ButtonState.enabled;
    }

    // read incoming digit
    final digit = event.digit;

    switch (digit) {
      // when digit button 0
      case 0:
        // add missed dart to darts displayer
        _dartsDisplayerBloc.add(
          const DartsDisplayerEvent.dartAdded(dart: Dart.missed),
        );

        // unfocus and enable all valid buttons
        emit(_getUnfocusedState());
        break;
      // when digit button one
      case 1:
        state.one.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button zero, one and two and maybe erease
            emit(
              KeyBoardState.allDisabled().copyWith(
                zero: DigitButtonState.focused(
                  type: DartType.single,
                  value: digit,
                ),
                one: DigitButtonState.focused(
                  type: DartType.double,
                  value: digit,
                ),
                two: DigitButtonState.focused(
                  type: DartType.triple,
                  value: digit,
                ),
                erease: getEreaseButtonState(),
              ),
            );
          },
          focused: (type, value) => handleFocused(type, value),
        );
        break;
      // when digit button two
      case 2:
        state.two.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button one, two and three and maybe erease
            emit(
              KeyBoardState.allDisabled().copyWith(
                one: DigitButtonState.focused(
                  type: DartType.single,
                  value: digit,
                ),
                two: DigitButtonState.focused(
                  type: DartType.double,
                  value: digit,
                ),
                three: DigitButtonState.focused(
                  type: DartType.triple,
                  value: digit,
                ),
                erease: getEreaseButtonState(),
              ),
            );
          },
          focused: (type, value) => handleFocused(type, value),
        );
        break;
      // when digit button three
      case 3:
        state.three.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button one, two and three and maybe erease
            emit(
              KeyBoardState.allDisabled().copyWith(
                one: DigitButtonState.focused(
                  type: DartType.single,
                  value: digit,
                ),
                two: DigitButtonState.focused(
                  type: DartType.double,
                  value: digit,
                ),
                three: DigitButtonState.focused(
                  type: DartType.triple,
                  value: digit,
                ),
                erease: getEreaseButtonState(),
              ),
            );
          },
          focused: (type, value) => handleFocused(type, value),
        );
        break;
      // when digit button four
      case 4:
        state.four.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button four, five and six and maybe erease
            emit(
              KeyBoardState.allDisabled().copyWith(
                four: DigitButtonState.focused(
                  type: DartType.single,
                  value: digit,
                ),
                five: DigitButtonState.focused(
                  type: DartType.double,
                  value: digit,
                ),
                six: DigitButtonState.focused(
                  type: DartType.triple,
                  value: digit,
                ),
                erease: getEreaseButtonState(),
              ),
            );
          },
          focused: (type, value) => handleFocused(type, value),
        );
        break;
      // when digit button five
      case 5:
        state.five.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button four, five and six and maybe erease
            emit(
              KeyBoardState.allDisabled().copyWith(
                four: DigitButtonState.focused(
                  type: DartType.single,
                  value: digit,
                ),
                five: DigitButtonState.focused(
                  type: DartType.double,
                  value: digit,
                ),
                six: DigitButtonState.focused(
                  type: DartType.triple,
                  value: digit,
                ),
                erease: getEreaseButtonState(),
              ),
            );
          },
          focused: (type, value) => handleFocused(type, value),
        );
        break;
      // when digit button six
      case 6:
        state.six.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button five, six and seven and maybe erease
            emit(
              KeyBoardState.allDisabled().copyWith(
                five: DigitButtonState.focused(
                  type: DartType.single,
                  value: digit,
                ),
                six: DigitButtonState.focused(
                  type: DartType.double,
                  value: digit,
                ),
                seven: DigitButtonState.focused(
                  type: DartType.triple,
                  value: digit,
                ),
                erease: getEreaseButtonState(),
              ),
            );
          },
          focused: (type, value) => handleFocused(type, value),
        );
        break;
      // when digit button seven
      case 7:
        state.seven.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button six, seven and eight and maybe erease
            emit(
              KeyBoardState.allDisabled().copyWith(
                six: DigitButtonState.focused(
                  type: DartType.single,
                  value: digit,
                ),
                seven: DigitButtonState.focused(
                  type: DartType.double,
                  value: digit,
                ),
                eight: DigitButtonState.focused(
                  type: DartType.triple,
                  value: digit,
                ),
                erease: getEreaseButtonState(),
              ),
            );
          },
          focused: (type, value) => handleFocused(type, value),
        );
        break;
      // when digit button eight
      case 8:
        state.eight.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button seven, eight and nine and maybe erease
            emit(
              KeyBoardState.allDisabled().copyWith(
                seven: DigitButtonState.focused(
                  type: DartType.single,
                  value: digit,
                ),
                eight: DigitButtonState.focused(
                  type: DartType.double,
                  value: digit,
                ),
                nine: DigitButtonState.focused(
                  type: DartType.triple,
                  value: digit,
                ),
                erease: getEreaseButtonState(),
              ),
            );
          },
          focused: (type, value) => handleFocused(type, value),
        );
        break;
      // when digit button nine
      case 9:
        state.nine.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button seven, eight and nine and maybe erease
            emit(
              KeyBoardState.allDisabled().copyWith(
                seven: DigitButtonState.focused(
                  type: DartType.single,
                  value: digit,
                ),
                eight: DigitButtonState.focused(
                  type: DartType.double,
                  value: digit,
                ),
                nine: DigitButtonState.focused(
                  type: DartType.triple,
                  value: digit,
                ),
                erease: getEreaseButtonState(),
              ),
            );
          },
          focused: (type, value) => handleFocused(type, value),
        );
        break;
      // when digit button ten
      case 10:
        state.ten.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button ten, eleven and twelve and maybe erease
            emit(
              KeyBoardState.allDisabled().copyWith(
                ten: DigitButtonState.focused(
                  type: DartType.single,
                  value: digit,
                ),
                eleven: DigitButtonState.focused(
                  type: DartType.double,
                  value: digit,
                ),
                twelve: DigitButtonState.focused(
                  type: DartType.triple,
                  value: digit,
                ),
                erease: getEreaseButtonState(),
              ),
            );
          },
          focused: (type, value) => handleFocused(type, value),
        );
        break;
      // when digit button eleven
      case 11:
        state.eleven.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button ten, eleven and twelve and maybe erease
            emit(
              KeyBoardState.allDisabled().copyWith(
                ten: DigitButtonState.focused(
                  type: DartType.single,
                  value: digit,
                ),
                eleven: DigitButtonState.focused(
                  type: DartType.double,
                  value: digit,
                ),
                twelve: DigitButtonState.focused(
                  type: DartType.triple,
                  value: digit,
                ),
                erease: getEreaseButtonState(),
              ),
            );
          },
          focused: (type, value) => handleFocused(type, value),
        );
        break;
      // when digit button twelve
      case 12:
        state.twelve.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button eleven, twelve and thirteen and maybe erease
            emit(
              KeyBoardState.allDisabled().copyWith(
                eleven: DigitButtonState.focused(
                  type: DartType.single,
                  value: digit,
                ),
                twelve: DigitButtonState.focused(
                  type: DartType.double,
                  value: digit,
                ),
                thirteen: DigitButtonState.focused(
                  type: DartType.triple,
                  value: digit,
                ),
                erease: getEreaseButtonState(),
              ),
            );
          },
          focused: (type, value) => handleFocused(type, value),
        );
        break;
      // when digit button thirteen
      case 13:
        state.thirteen.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button twelve, thirteen and fourteen and maybe erease
            emit(
              KeyBoardState.allDisabled().copyWith(
                twelve: DigitButtonState.focused(
                  type: DartType.single,
                  value: digit,
                ),
                thirteen: DigitButtonState.focused(
                  type: DartType.double,
                  value: digit,
                ),
                fourteen: DigitButtonState.focused(
                  type: DartType.triple,
                  value: digit,
                ),
                erease: getEreaseButtonState(),
              ),
            );
          },
          focused: (type, value) => handleFocused(type, value),
        );
        break;
      // when digit button fourteen
      case 14:
        state.fourteen.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button thirteen, fourteen and fifteen and maybe erease
            emit(
              KeyBoardState.allDisabled().copyWith(
                thirteen: DigitButtonState.focused(
                  type: DartType.single,
                  value: digit,
                ),
                fourteen: DigitButtonState.focused(
                  type: DartType.double,
                  value: digit,
                ),
                fifteen: DigitButtonState.focused(
                  type: DartType.triple,
                  value: digit,
                ),
                erease: getEreaseButtonState(),
              ),
            );
          },
          focused: (type, value) => handleFocused(type, value),
        );
        break;
      // when digit button fifteen
      case 15:
        state.fifteen.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button thirteen, fourteen and fifteen and maybe erease
            emit(
              KeyBoardState.allDisabled().copyWith(
                thirteen: DigitButtonState.focused(
                  type: DartType.single,
                  value: digit,
                ),
                fourteen: DigitButtonState.focused(
                  type: DartType.double,
                  value: digit,
                ),
                fifteen: DigitButtonState.focused(
                  type: DartType.triple,
                  value: digit,
                ),
                erease: getEreaseButtonState(),
              ),
            );
          },
          focused: (type, value) => handleFocused(type, value),
        );
        break;
      // when digit button sixteen
      case 16:
        state.sixteen.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button sixteen, seventeen and eighteen and maybe erease
            emit(
              KeyBoardState.allDisabled().copyWith(
                sixteen: DigitButtonState.focused(
                  type: DartType.single,
                  value: digit,
                ),
                seventeen: DigitButtonState.focused(
                  type: DartType.double,
                  value: digit,
                ),
                eighteen: DigitButtonState.focused(
                  type: DartType.triple,
                  value: digit,
                ),
                erease: getEreaseButtonState(),
              ),
            );
          },
          focused: (type, value) => handleFocused(type, value),
        );
        break;
      // when digit button seventeen
      case 17:
        state.seventeen.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button sixteen, seventeen and eighteen and maybe erease
            emit(
              KeyBoardState.allDisabled().copyWith(
                sixteen: DigitButtonState.focused(
                  type: DartType.single,
                  value: digit,
                ),
                seventeen: DigitButtonState.focused(
                  type: DartType.double,
                  value: digit,
                ),
                eighteen: DigitButtonState.focused(
                  type: DartType.triple,
                  value: digit,
                ),
                erease: getEreaseButtonState(),
              ),
            );
          },
          focused: (type, value) => handleFocused(type, value),
        );
        break;
      // when digit button eighteen
      case 18:
        state.eighteen.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button seventeen, eighteen and nineteen and maybe erease
            emit(
              KeyBoardState.allDisabled().copyWith(
                seventeen: DigitButtonState.focused(
                  type: DartType.single,
                  value: digit,
                ),
                eighteen: DigitButtonState.focused(
                  type: DartType.double,
                  value: digit,
                ),
                nineteen: DigitButtonState.focused(
                  type: DartType.triple,
                  value: digit,
                ),
                erease: getEreaseButtonState(),
              ),
            );
          },
          focused: (type, value) => handleFocused(type, value),
        );
        break;
      // when digit button nineteen
      case 19:
        state.nineteen.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button eighteen, nineteen and twenty and maybe erease
            emit(
              KeyBoardState.allDisabled().copyWith(
                eighteen: DigitButtonState.focused(
                  type: DartType.single,
                  value: digit,
                ),
                nineteen: DigitButtonState.focused(
                  type: DartType.double,
                  value: digit,
                ),
                twenty: DigitButtonState.focused(
                  type: DartType.triple,
                  value: digit,
                ),
                erease: getEreaseButtonState(),
              ),
            );
          },
          focused: (type, value) => handleFocused(type, value),
        );
        break;
      // when digit button twenty
      case 20:
        state.twenty.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button nineteen, twenty and twentyFive and maybe erease
            emit(
              KeyBoardState.allDisabled().copyWith(
                nineteen: DigitButtonState.focused(
                  type: DartType.single,
                  value: digit,
                ),
                twenty: DigitButtonState.focused(
                  type: DartType.double,
                  value: digit,
                ),
                twentyFive: DigitButtonState.focused(
                  type: DartType.triple,
                  value: digit,
                ),
                erease: getEreaseButtonState(),
              ),
            );
          },
          focused: (type, value) => handleFocused(type, value),
        );
        break;
      // when digit button twentyFive
      case 25:
        state.twentyFive.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button twenty and twentyFive and maybe erease
            emit(
              KeyBoardState.allDisabled().copyWith(
                twenty: DigitButtonState.focused(
                  type: DartType.single,
                  value: digit,
                ),
                twentyFive: DigitButtonState.focused(
                  type: DartType.double,
                  value: digit,
                ),
                erease: getEreaseButtonState(),
              ),
            );
          },
          focused: (type, value) => handleFocused(type, value),
        );
        break;
    }
  }

  /// Handle incoming [EreasePressed] event.
  void _mapEreasePressedToState() {
    // when smart key board is enabled
    if (_isSmartKeyBoardEnabled()) {
      // and erease button is enabled
      if (state.erease == ButtonState.enabled) {
        // remove dart from darts displayer
        _dartsDisplayerBloc.add(const DartsDisplayerEvent.dartRemoved());
      }
      // when smart key board is not enabled
    } else {
      // remove dart from darts displayer
      _dartsDisplayerBloc.add(const DartsDisplayerEvent.dartRemoved());
    }
  }

  /// Handle incoming [UnfocusRequested] event.
  void _mapUnfocusRequestedToState(
    Emitter<KeyBoardState> emit,
  ) {
    // unfocus and enable all valid buttons
    emit(_getUnfocusedState());
  }

  /// Recalculates the state of this bloc.
  void _refreshState(
    Emitter<KeyBoardState> emit,
  ) {
    // TODO
    emit(_getUnfocusedState());
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
      return KeyBoardState.allEnabled();
    }
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
    return __pointsLeft(_playOfflineService);
  }

  /// Returns the points left of the current turn using [service].
  static int __pointsLeft(
    IPlayOfflineService service,
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
      _playOfflineService.getGame().currentTurn().pointsLeft,
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
