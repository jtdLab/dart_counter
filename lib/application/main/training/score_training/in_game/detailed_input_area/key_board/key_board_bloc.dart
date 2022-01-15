import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/detailed/key_board_event.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/detailed/key_board_state.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:injectable/injectable.dart';

export 'package:dart_counter/application/main/training/shared/in_game/input_area/detailed/key_board_event.dart';
export 'package:dart_counter/application/main/training/shared/in_game/input_area/detailed/key_board_state.dart';

@injectable
class KeyBoardBloc extends Bloc<KeyBoardEvent, KeyBoardState> {
  final IScoreTrainingService _trainingService;
  final IDartUtils _dartUtils;

  final DartsDisplayerBloc _dartsDisplayerBloc;

  KeyBoardBloc(
    this._trainingService,
    this._dartUtils,
    @factoryParam DartsDisplayerBloc? dartsDisplayerBloc,
  )   : _dartsDisplayerBloc = dartsDisplayerBloc!,
        super(
          // set initial state
          _calculateState(),
        ) {
    // register event handlers
    on<DigitPressed>((event, emit) => _mapDigitPressedToState(event, emit));
    on<EreasePressed>((_, __) => _mapEreasePressedToState());
    on<UnfocusRequested>((_, emit) => _mapUnfocusRequestedToState(emit));
  }

  /// handle incoming [DigitPressed] event.
  void _mapDigitPressedToState(
    DigitPressed event,
    Emitter<KeyBoardState> emit,
  ) {
    // read incoming digit
    final digit = event.digit;

    switch (digit) {
      // when digit button 0
      case 0:
        // add missed dart to darts displayer
        _dartsDisplayerBloc.add(
          const DartsDisplayerEvent.dartAdded(dart: Dart.missed),
        );

        // unfocus // TODO desc
        emit(_calculateState());
        break;
      // when digit button one
      case 1:
        state.one.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button zero, one and two
            emit(
              allDigitButtonsDisabled.copyWith(
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
              ),
            );
          },
          focused: (type, value) {
            // add dart with incoming type and value to darts displayer
            _dartsDisplayerBloc.add(
              DartsDisplayerEvent.dartAdded(
                dart: Dart(type: type, value: value),
              ),
            );

            // unfocus // TODO desc
            emit(_calculateState());
          },
        );
        break;
      // when digit button two
      case 2:
        state.two.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button one, two and three
            emit(
              allDigitButtonsDisabled.copyWith(
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
              ),
            );
          },
          focused: (type, value) {
            // add dart with incoming type and value to darts displayer
            _dartsDisplayerBloc.add(
              DartsDisplayerEvent.dartAdded(
                dart: Dart(type: type, value: value),
              ),
            );

            // unfocus // TODO desc
            emit(_calculateState());
          },
        );
        break;
      // when digit button three
      case 3:
        state.three.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button one, two and three
            emit(
              allDigitButtonsDisabled.copyWith(
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
              ),
            );
          },
          focused: (type, value) {
            // add dart with incoming type and value to darts displayer
            _dartsDisplayerBloc.add(
              DartsDisplayerEvent.dartAdded(
                dart: Dart(type: type, value: value),
              ),
            );

            // unfocus // TODO desc
            emit(_calculateState());
          },
        );
        break;
      // when digit button four
      case 4:
        state.four.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button four, five and six
            emit(
              allDigitButtonsDisabled.copyWith(
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
              ),
            );
          },
          focused: (type, value) {
            // add dart with incoming type and value to darts displayer
            _dartsDisplayerBloc.add(
              DartsDisplayerEvent.dartAdded(
                dart: Dart(type: type, value: value),
              ),
            );

            // unfocus // TODO desc
            emit(_calculateState());
          },
        );
        break;
      // when digit button five
      case 5:
        state.five.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button four, five and six
            emit(
              allDigitButtonsDisabled.copyWith(
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
              ),
            );
          },
          focused: (type, value) {
            // add dart with incoming type and value to darts displayer
            _dartsDisplayerBloc.add(
              DartsDisplayerEvent.dartAdded(
                dart: Dart(type: type, value: value),
              ),
            );

            // unfocus // TODO desc
            emit(_calculateState());
          },
        );
        break;
      // when digit button six
      case 6:
        state.six.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button five, six and seven
            emit(
              allDigitButtonsDisabled.copyWith(
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
              ),
            );
          },
          focused: (type, value) {
            // add dart with incoming type and value to darts displayer
            _dartsDisplayerBloc.add(
              DartsDisplayerEvent.dartAdded(
                dart: Dart(type: type, value: value),
              ),
            );

            // unfocus // TODO desc
            emit(_calculateState());
          },
        );
        break;
      // when digit button seven
      case 7:
        state.seven.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button six, seven and eight
            emit(
              allDigitButtonsDisabled.copyWith(
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
              ),
            );
          },
          focused: (type, value) {
            // add dart with incoming type and value to darts displayer
            _dartsDisplayerBloc.add(
              DartsDisplayerEvent.dartAdded(
                dart: Dart(type: type, value: value),
              ),
            );

            // unfocus // TODO desc
            emit(_calculateState());
          },
        );
        break;
      // when digit button eight
      case 8:
        state.eight.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button seven, eight and nine
            emit(
              allDigitButtonsDisabled.copyWith(
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
              ),
            );
          },
          focused: (type, value) {
            // add dart with incoming type and value to darts displayer
            _dartsDisplayerBloc.add(
              DartsDisplayerEvent.dartAdded(
                dart: Dart(type: type, value: value),
              ),
            );

            // unfocus // TODO desc
            emit(_calculateState());
          },
        );
        break;
      // when digit button nine
      case 9:
        state.nine.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button seven, eight and nine
            emit(
              allDigitButtonsDisabled.copyWith(
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
              ),
            );
          },
          focused: (type, value) {
            // add dart with incoming type and value to darts displayer
            _dartsDisplayerBloc.add(
              DartsDisplayerEvent.dartAdded(
                dart: Dart(type: type, value: value),
              ),
            );

            // unfocus // TODO desc
            emit(_calculateState());
          },
        );
        break;
      // when digit button ten
      case 10:
        state.ten.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button ten, eleven and twelve
            emit(
              allDigitButtonsDisabled.copyWith(
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
              ),
            );
          },
          focused: (type, value) {
            // add dart with incoming type and value to darts displayer
            _dartsDisplayerBloc.add(
              DartsDisplayerEvent.dartAdded(
                dart: Dart(type: type, value: value),
              ),
            );

            // unfocus // TODO desc
            emit(_calculateState());
          },
        );
        break;
      // when digit button eleven
      case 11:
        state.eleven.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button ten, eleven and twelve
            emit(
              allDigitButtonsDisabled.copyWith(
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
              ),
            );
          },
          focused: (type, value) {
            // add dart with incoming type and value to darts displayer
            _dartsDisplayerBloc.add(
              DartsDisplayerEvent.dartAdded(
                dart: Dart(type: type, value: value),
              ),
            );

            // unfocus // TODO desc
            emit(_calculateState());
          },
        );
        break;
      // when digit button twelve
      case 12:
        state.twelve.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button eleven, twelve and thirteen
            emit(
              allDigitButtonsDisabled.copyWith(
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
              ),
            );
          },
          focused: (type, value) {
            // add dart with incoming type and value to darts displayer
            _dartsDisplayerBloc.add(
              DartsDisplayerEvent.dartAdded(
                dart: Dart(type: type, value: value),
              ),
            );

            // unfocus // TODO desc
            emit(_calculateState());
          },
        );
        break;
      // when digit button thirteen
      case 13:
        state.thirteen.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button twelve, thirteen and fourteen
            emit(
              allDigitButtonsDisabled.copyWith(
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
              ),
            );
          },
          focused: (type, value) {
            // add dart with incoming type and value to darts displayer
            _dartsDisplayerBloc.add(
              DartsDisplayerEvent.dartAdded(
                dart: Dart(type: type, value: value),
              ),
            );

            // unfocus // TODO desc
            emit(_calculateState());
          },
        );
        break;
      // when digit button fourteen
      case 14:
        state.fourteen.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button thirteen, fourteen and fifteen
            emit(
              allDigitButtonsDisabled.copyWith(
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
              ),
            );
          },
          focused: (type, value) {
            // add dart with incoming type and value to darts displayer
            _dartsDisplayerBloc.add(
              DartsDisplayerEvent.dartAdded(
                dart: Dart(type: type, value: value),
              ),
            );

            // unfocus // TODO desc
            emit(_calculateState());
          },
        );
        break;
      // when digit button fifteen
      case 15:
        state.fifteen.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button seven, eight and nine
            emit(
              allDigitButtonsDisabled.copyWith(
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
              ),
            );
          },
          focused: (type, value) {
            // add dart with incoming type and value to darts displayer
            _dartsDisplayerBloc.add(
              DartsDisplayerEvent.dartAdded(
                dart: Dart(type: type, value: value),
              ),
            );

            // unfocus // TODO desc
            emit(_calculateState());
          },
        );
        break;
      // when digit button sixteen
      case 16:
        state.sixteen.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button sixteen, seventeen and eighteen
            emit(
              allDigitButtonsDisabled.copyWith(
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
              ),
            );
          },
          focused: (type, value) {
            // add dart with incoming type and value to darts displayer
            _dartsDisplayerBloc.add(
              DartsDisplayerEvent.dartAdded(
                dart: Dart(type: type, value: value),
              ),
            );

            // unfocus // TODO desc
            emit(_calculateState());
          },
        );
        break;
      // when digit button sixteen
      case 17:
        state.seventeen.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button sixteen, seventeen and eighteen
            emit(
              allDigitButtonsDisabled.copyWith(
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
              ),
            );
          },
          focused: (type, value) {
            // add dart with incoming type and value to darts displayer
            _dartsDisplayerBloc.add(
              DartsDisplayerEvent.dartAdded(
                dart: Dart(type: type, value: value),
              ),
            );

            // unfocus // TODO desc
            emit(_calculateState());
          },
        );
        break;
      // when digit button eighteen
      case 18:
        state.eighteen.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button seventeen, eighteen and nineteen
            emit(
              allDigitButtonsDisabled.copyWith(
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
              ),
            );
          },
          focused: (type, value) {
            // add dart with incoming type and value to darts displayer
            _dartsDisplayerBloc.add(
              DartsDisplayerEvent.dartAdded(
                dart: Dart(type: type, value: value),
              ),
            );

            // unfocus // TODO desc
            emit(_calculateState());
          },
        );
        break;
      // when digit button nineteen
      case 19:
        state.nineteen.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button eighteen, nineteen and twenty
            emit(
              allDigitButtonsDisabled.copyWith(
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
              ),
            );
          },
          focused: (type, value) {
            // add dart with incoming type and value to darts displayer
            _dartsDisplayerBloc.add(
              DartsDisplayerEvent.dartAdded(
                dart: Dart(type: type, value: value),
              ),
            );

            // unfocus // TODO desc
            emit(_calculateState());
          },
        );
        break;
      // when digit button fourteen
      case 20:
        state.twenty.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button nineteen, twenty and twentyFive
            emit(
              allDigitButtonsDisabled.copyWith(
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
              ),
            );
          },
          focused: (type, value) {
            // add dart with incoming type and value to darts displayer
            _dartsDisplayerBloc.add(
              DartsDisplayerEvent.dartAdded(
                dart: Dart(type: type, value: value),
              ),
            );

            // unfocus // TODO desc
            emit(_calculateState());
          },
        );
        break;
      // when digit button twentyFive
      case 25:
        state.twentyFive.whenOrNull(
          // is enabled
          enabled: () {
            // emit key board state where all digit buttons are disabled
            // except button twenty and twentyFive
            emit(
              allDigitButtonsDisabled.copyWith(
                twenty: DigitButtonState.focused(
                  type: DartType.single,
                  value: digit,
                ),
                twentyFive: DigitButtonState.focused(
                  type: DartType.double,
                  value: digit,
                ),
              ),
            );
          },
          focused: (type, value) {
            // add dart with incoming type and value to darts displayer
            _dartsDisplayerBloc.add(
              DartsDisplayerEvent.dartAdded(
                dart: Dart(type: type, value: value),
              ),
            );

            // unfocus // TODO desc
            emit(_calculateState());
          },
        );
        break;
    }
  }

  /// handle incoming [EreasePressed] event.
  void _mapEreasePressedToState() {
    // remove dart from darts displayer
    _dartsDisplayerBloc.add(const DartsDisplayerEvent.dartRemoved());
  }

  /// handle incoming [UnfocusRequested] event.
  void _mapUnfocusRequestedToState(
    Emitter<KeyBoardState> emit,
  ) {
    // unfocus
    emit(_calculateState());
  }

  static KeyBoardState _calculateState() {
    // TODO impl real
   return allEnabled;
  }

  static const allEnabled = KeyBoardState.initial(
    zero: DigitButtonState.enabled(),
    one: DigitButtonState.enabled(),
    two: DigitButtonState.enabled(),
    three: DigitButtonState.enabled(),
    four: DigitButtonState.enabled(),
    five: DigitButtonState.enabled(),
    six: DigitButtonState.enabled(),
    seven: DigitButtonState.enabled(),
    eight: DigitButtonState.enabled(),
    nine: DigitButtonState.enabled(),
    ten: DigitButtonState.enabled(),
    eleven: DigitButtonState.enabled(),
    twelve: DigitButtonState.enabled(),
    thirteen: DigitButtonState.enabled(),
    fourteen: DigitButtonState.enabled(),
    fifteen: DigitButtonState.enabled(),
    sixteen: DigitButtonState.enabled(),
    seventeen: DigitButtonState.enabled(),
    eighteen: DigitButtonState.enabled(),
    nineteen: DigitButtonState.enabled(),
    twenty: DigitButtonState.enabled(),
    twentyFive: DigitButtonState.enabled(),
    erease: ButtonState.enabled,
  );

  static const allDigitButtonsDisabled = KeyBoardState.initial(
    zero: DigitButtonState.disabled(),
    one: DigitButtonState.disabled(),
    two: DigitButtonState.disabled(),
    three: DigitButtonState.disabled(),
    four: DigitButtonState.disabled(),
    five: DigitButtonState.disabled(),
    six: DigitButtonState.disabled(),
    seven: DigitButtonState.disabled(),
    eight: DigitButtonState.disabled(),
    nine: DigitButtonState.disabled(),
    ten: DigitButtonState.disabled(),
    eleven: DigitButtonState.disabled(),
    twelve: DigitButtonState.disabled(),
    thirteen: DigitButtonState.disabled(),
    fourteen: DigitButtonState.disabled(),
    fifteen: DigitButtonState.disabled(),
    sixteen: DigitButtonState.disabled(),
    seventeen: DigitButtonState.disabled(),
    eighteen: DigitButtonState.disabled(),
    nineteen: DigitButtonState.disabled(),
    twenty: DigitButtonState.disabled(),
    twentyFive: DigitButtonState.disabled(),
    erease: ButtonState.enabled,
  );
}
