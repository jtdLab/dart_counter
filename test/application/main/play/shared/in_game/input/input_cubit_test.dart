import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

/**
 * void main() {
  test('initial state initialized correctly', () {
    // Arrange & Act
    final underTest = InputCubit();

    // Assert
    expect(
      underTest.state,
      left(0),
    );
  });

  group('update', () {
    blocTest<InputCubit, Either<int, KtList<Dart>>>(
      'emits [InputPoints] when update with points is called.',
      build: () => InputCubit(),
      act: (cubit) => cubit.update(newInput: left(88)),
      expect: () => <Either<int, KtList<Dart>>>[left(88)],
    );

    blocTest<InputCubit, Either<int, KtList<Dart>>>(
      'emits [InputPoints] when update with darts is called.',
      build: () => InputCubit(),
      act: (cubit) => cubit.update(
        newInput: right(
          const [
            Dart(type: DartType.single, value: 10),
            Dart(type: DartType.single, value: 11),
            Dart(type: DartType.single, value: 12),
          ].toImmutableList(),
        ),
      ),
      expect: () => <Either<int, KtList<Dart>>>[
        right(
          const [
            Dart(type: DartType.single, value: 10),
            Dart(type: DartType.single, value: 11),
            Dart(type: DartType.single, value: 12),
          ].toImmutableList(),
        )
      ],
    );
  });
}

 */