import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/training/score_training/in_training/standard_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/main/training/score_training/in_training/standard_input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDartUtils extends Mock implements IDartUtils {}

class MockInputRowBloc extends MockBloc<InputRowEvent, int>
    implements InputRowBloc {}

void main() {
  late MockDartUtils dartUtils;
  late MockInputRowBloc inputRowBloc;

  setUpAll(() {
    dartUtils = MockDartUtils();
    when(
      () => dartUtils.validatePoints(points: any(named: 'points')),
    ).thenReturn(false);
  });

  setUp(() {
    inputRowBloc = MockInputRowBloc();
    when(() => inputRowBloc.state).thenReturn(0);
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test(
          'Initial state set to KeyBoardInitial with all buttons enabled except check button.',
          () {
        // Act
        final underTest = KeyBoardBloc(dartUtils, [inputRowBloc]);

        // Assert
        expect(
          underTest.state,
          const KeyBoardState.initial(
            one: ButtonState.enabled,
            two: ButtonState.enabled,
            three: ButtonState.enabled,
            four: ButtonState.enabled,
            five: ButtonState.enabled,
            six: ButtonState.enabled,
            seven: ButtonState.enabled,
            eight: ButtonState.enabled,
            nine: ButtonState.enabled,
            zero: ButtonState.enabled,
            erease: ButtonState.enabled,
          ),
        );
      });
    });

    group('#GetIt#', () {});

    group('#Injectable#', () {});
  });

  group('#Events#', () {
    group('#DigitPressed#', () {
      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN current input is 0 '
        'Takes the incoming digit as the new input and validates it.',
        build: () {
          return KeyBoardBloc(dartUtils, [inputRowBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.digitPressed(digit: 5)),
        verify: (_) {
          verify(() => dartUtils.validatePoints(points: 5)).called(1);
        },
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN current input is not 0 '
        'Appends the incoming digit to the current input and validates this new input.',
        setUp: () {
          when(() => inputRowBloc.state).thenReturn(31);
        },
        build: () {
          return KeyBoardBloc(dartUtils, [inputRowBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.digitPressed(digit: 5)),
        verify: (_) {
          verify(() => dartUtils.validatePoints(points: 315)).called(1);
        },
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN new input is valid '
        'Change input to new input.',
        setUp: () {
          when(() => dartUtils.validatePoints(points: any(named: 'points')))
              .thenReturn(true);
        },
        build: () {
          return KeyBoardBloc(dartUtils, [inputRowBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.digitPressed(digit: 5)),
        verify: (_) {
          verify(
            () =>
                inputRowBloc.add(const InputRowEvent.inputChanged(newInput: 5)),
          ).called(1);
        },
      );
    });

    group('#EreasePressed#', () {
      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN current input is larger than 9 '
        'Cut the last digit of current input and change input to this new input.',
        setUp: () {
          when(() => inputRowBloc.state).thenReturn(10);
        },
        build: () {
          return KeyBoardBloc(dartUtils, [inputRowBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.ereasePressed()),
        verify: (_) {
          verify(
            () =>
                inputRowBloc.add(const InputRowEvent.inputChanged(newInput: 1)),
          ).called(1);
        },
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN current input is single digit '
        'Change input to 0.',
        setUp: () {
          when(() => inputRowBloc.state).thenReturn(7);
        },
        build: () {
          return KeyBoardBloc(dartUtils, [inputRowBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.ereasePressed()),
        verify: (_) {
          verify(
            () =>
                inputRowBloc.add(const InputRowEvent.inputChanged(newInput: 0)),
          ).called(1);
        },
      );
    });
  });
}
