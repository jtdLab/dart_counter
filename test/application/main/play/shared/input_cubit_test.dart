import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/shared/input/input_cubit.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

void main() {
  test('initial state initialized correctly', () {
    // Arrange & Act
    final underTest = InputCubit();

    // Assert
    expect(
      underTest.state,
      const InputState.points(points: 0),
    );
  });

  group('update', () {
    blocTest<InputCubit, InputState>(
      'emits [InputPoints] when update with points is called.',
      build: () => InputCubit(),
      act: (cubit) => cubit.update(newInput: left(88)),
      expect: () => <InputState>[
        const InputState.points(points: 88),
      ],
    );

    blocTest<InputCubit, InputState>(
      'emits [InputPoints] when update with darts is called.',
      build: () => InputCubit(),
      act: (cubit) => cubit.update(
        newInput: right(
          [
            const Dart(type: DartType.single, value: 10),
            const Dart(type: DartType.single, value: 11),
            const Dart(type: DartType.single, value: 12),
          ].toImmutableList(),
        ),
      ),
      expect: () => <InputState>[
        InputState.darts(
          darts: const [
            Dart(type: DartType.single, value: 10),
            Dart(type: DartType.single, value: 11),
            Dart(type: DartType.single, value: 12),
          ].toImmutableList(),
        ),
      ],
    );
  });
}
