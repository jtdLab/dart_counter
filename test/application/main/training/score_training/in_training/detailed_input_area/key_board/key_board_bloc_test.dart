import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/core/application_error.dart';
import 'package:dart_counter/application/main/training/score_training/in_training/detailed_input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDartsDisplayerBloc
    extends MockBloc<DartsDisplayerEvent, DartsDisplayerState>
    implements DartsDisplayerBloc {}

void main() {
  late MockDartsDisplayerBloc dartsDisplayerBloc;

  final keyBoardInitialAllEnabled = KeyBoardState.initialAllEnabled();

  setUpAll(() {
    dartsDisplayerBloc = MockDartsDisplayerBloc();
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test('Initial state set to KeyBoardInitial with all buttons enabled.',
          () {
        // Act
        final underTest = KeyBoardBloc([dartsDisplayerBloc]);

        // Assert
        expect(underTest.state, keyBoardInitialAllEnabled);
      });
    });

    group('#GetIt#', () {});

    group('#Injectable#', () {});
  });

  group('#Events#', () {
    group('#ValueSelected#', () {
      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardFocused '
        'THEN throw ApplicationError.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        seed: () => KeyBoardState.oneFocused(),
        act: (bloc) => bloc.add(const KeyBoardEvent.valueSelected(value: 1)),
        errors: () => [isA<ApplicationError>()],
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardInitial with all buttons enabled '
        'WHEN incoming value is 0 '
        'THEN add Dart.missed to DartsDisplayerBloc, '
        'emit KeyBoardInitial with all buttons enabled.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.valueSelected(value: 0)),
        expect: () => [keyBoardInitialAllEnabled],
        verify: (_) {
          verify(
            () => dartsDisplayerBloc.add(
              const DartsDisplayerEvent.dartAdded(dart: Dart.missed),
            ),
          ).called(1);
        },
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardInitial with all buttons enabled '
        'WHEN incoming value is 1 '
        'THEN emit KeyBoardFocused with focused value 1 '
        'and all buttons disabled except button 0, 1 and 2.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.valueSelected(value: 1)),
        expect: () => [KeyBoardState.oneFocused()],
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardInitial with all buttons enabled '
        'WHEN incoming value is 2 '
        'THEN emit KeyBoardFocused with focused value 2 '
        'and all buttons disabled except button 1, 2 and 3.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.valueSelected(value: 2)),
        expect: () => [KeyBoardState.twoFocused()],
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardInitial with all buttons enabled '
        'WHEN incoming value is 3 '
        'THEN emit KeyBoardFocused with focused value 3 '
        'and all buttons disabled except button 1, 2 and 3.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.valueSelected(value: 3)),
        expect: () => [KeyBoardState.threeFocused()],
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardInitial with all buttons enabled '
        'WHEN incoming value is 4 '
        'THEN emit KeyBoardFocused with focused value 4 '
        'and all buttons disabled except button 4, 5 and 6.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.valueSelected(value: 4)),
        expect: () => [KeyBoardState.fourFocused()],
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardInitial with all buttons enabled '
        'WHEN incoming value is 5 '
        'THEN emit KeyBoardFocused with focused value 5 '
        'and all buttons disabled except button 4, 5 and 6.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.valueSelected(value: 5)),
        expect: () => [KeyBoardState.fiveFocused()],
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardInitial with all buttons enabled '
        'WHEN incoming value is 6 '
        'THEN emit KeyBoardFocused with focused value 6 '
        'and all buttons disabled except button 5, 6 and 7.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.valueSelected(value: 6)),
        expect: () => [KeyBoardState.sixFocused()],
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardInitial with all buttons enabled '
        'WHEN incoming value is 7 '
        'THEN emit KeyBoardFocused with focused value 7 '
        'and all buttons disabled except button 6, 7 and 8.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.valueSelected(value: 7)),
        expect: () => [KeyBoardState.sevenFocused()],
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardInitial with all buttons enabled '
        'WHEN incoming value is 8 '
        'THEN emit KeyBoardFocused with focused value 8 '
        'and all buttons disabled except button 7, 8 and 9.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.valueSelected(value: 8)),
        expect: () => [KeyBoardState.eightFocused()],
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardInitial with all buttons enabled '
        'WHEN incoming value is 9 '
        'THEN emit KeyBoardFocused with focused value 9 '
        'and all buttons disabled except button 7, 8 and 9.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.valueSelected(value: 9)),
        expect: () => [KeyBoardState.nineFocused()],
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardInitial with all buttons enabled '
        'WHEN incoming value is 10 '
        'THEN emit KeyBoardFocused with focused value 10 '
        'and all buttons disabled except button 10, 11 and 12.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.valueSelected(value: 10)),
        expect: () => [KeyBoardState.tenFocused()],
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardInitial with all buttons enabled '
        'WHEN incoming value is 11 '
        'THEN emit KeyBoardFocused with focused value 11 '
        'and all buttons disabled except button 10, 11 and 12.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.valueSelected(value: 11)),
        expect: () => [KeyBoardState.elevenFocused()],
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardInitial with all buttons enabled '
        'WHEN incoming value is 12 '
        'THEN emit KeyBoardFocused with focused value 12 '
        'and all buttons disabled except button 11, 12 and 13.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.valueSelected(value: 12)),
        expect: () => [KeyBoardState.twelveFocused()],
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardInitial with all buttons enabled '
        'WHEN incoming value is 13 '
        'THEN emit KeyBoardFocused with focused value 13 '
        'and all buttons disabled except button 12, 13 and 14.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.valueSelected(value: 13)),
        expect: () => [KeyBoardState.thirteenFocused()],
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardInitial with all buttons enabled '
        'WHEN incoming value is 14 '
        'THEN emit KeyBoardFocused with focused value 14 '
        'and all buttons disabled except button 13, 14 and 15.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.valueSelected(value: 14)),
        expect: () => [KeyBoardState.fourteenFocused()],
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardInitial with all buttons enabled '
        'WHEN incoming value is 15 '
        'THEN emit KeyBoardFocused with focused value 15 '
        'and all buttons disabled except button 13, 14 and 15.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.valueSelected(value: 15)),
        expect: () => [KeyBoardState.fifteenFocused()],
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardInitial with all buttons enabled '
        'WHEN incoming value is 16 '
        'THEN emit KeyBoardFocused with focused value 16 '
        'and all buttons disabled except button 16, 17 and 18.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.valueSelected(value: 16)),
        expect: () => [KeyBoardState.sixteenFocused()],
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardInitial with all buttons enabled '
        'WHEN incoming value is 17 '
        'THEN emit KeyBoardFocused with focused value 17 '
        'and all buttons disabled except button 16, 17 and 18.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.valueSelected(value: 17)),
        expect: () => [KeyBoardState.seventeenFocused()],
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardInitial with all buttons enabled '
        'WHEN incoming value is 18 '
        'THEN emit KeyBoardFocused with focused value 18 '
        'and all buttons disabled except button 17, 18 and 19.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.valueSelected(value: 18)),
        expect: () => [KeyBoardState.eighteenFocused()],
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardInitial with all buttons enabled '
        'WHEN incoming value is 19 '
        'THEN emit KeyBoardFocused with focused value 19 '
        'and all buttons disabled except button 18, 19 and 20.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.valueSelected(value: 19)),
        expect: () => [KeyBoardState.nineteenFocused()],
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardInitial with all buttons enabled '
        'WHEN incoming value is 20 '
        'THEN emit KeyBoardFocused with focused value 20 '
        'and all buttons disabled except button 19, 20 and 25.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.valueSelected(value: 20)),
        expect: () => [KeyBoardState.twentyFocused()],
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardInitial with all buttons enabled '
        'WHEN incoming value is 25 '
        'THEN emit KeyBoardFocused with focused value 25 '
        'and all buttons disabled except button 20 and 25.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.valueSelected(value: 25)),
        expect: () => [KeyBoardState.twentyFiveFocused()],
      );
    });

    group('#TypeSelected#', () {
      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardInitial '
        'THEN throw ApplicationError.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        seed: () => keyBoardInitialAllEnabled,
        act: (bloc) =>
            bloc.add(const KeyBoardEvent.typeSelected(type: DartType.single)),
        errors: () => [isA<ApplicationError>()],
      );

      blocTest<KeyBoardBloc, KeyBoardState>(
        'GIVEN state is KeyBoardFocused with focusedValue X '
        'WHEN incoming type T '
        'THEN add Dart(type:T, value: X) to DartsDisplayerBloc, '
        'emit KeyBoardInitial with all buttons enabled.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        seed: () => KeyBoardState.fiveFocused(),
        act: (bloc) =>
            bloc.add(const KeyBoardEvent.typeSelected(type: DartType.single)),
        expect: () => [keyBoardInitialAllEnabled],
        verify: (_) {
          verify(
            () => dartsDisplayerBloc.add(
              const DartsDisplayerEvent.dartAdded(
                dart: Dart(type: DartType.single, value: 5),
              ),
            ),
          ).called(1);
        },
      );
    });

    group('#EreasePressed#', () {
      blocTest<KeyBoardBloc, KeyBoardState>(
        'Remove dart from DartsDisplayerBloc.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.ereasePressed()),
        verify: (_) {
          verify(
            () =>
                dartsDisplayerBloc.add(const DartsDisplayerEvent.dartRemoved()),
          ).called(1);
        },
      );
    });

    group('#UnfocusRequested#', () {
      blocTest<KeyBoardBloc, KeyBoardState>(
        'Emit KeyBoardInitial with all buttons enabled.',
        build: () {
          return KeyBoardBloc([dartsDisplayerBloc]);
        },
        act: (bloc) => bloc.add(const KeyBoardEvent.unfocusRequested()),
        expect: () => [keyBoardInitialAllEnabled],
      );
    });
  });
}
