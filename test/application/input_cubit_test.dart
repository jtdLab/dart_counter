import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/play/shared/input/input_cubit.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

void main() {
  blocTest<InputCubit, InputState>(
    'emits [InputPoints, InputDarts, InputDarts, InputPoints] when update, update, update is called.',
    build: () => InputCubit(),
    act: (cubit) {
      cubit.update(newInput: left(8));
      cubit.update(
        newInput: right(
          [
            const Dart(type: DartType.single, value: 10),
            const Dart(type: DartType.single, value: 11),
          ].toImmutableList(),
        ),
      );
      cubit.update(
        newInput: right(
          [
            const Dart(type: DartType.single, value: 10),
            const Dart(type: DartType.single, value: 11),
            const Dart(type: DartType.single, value: 12),
          ].toImmutableList(),
        ),
      );
      cubit.update(newInput: left(20));
    },
    expect: () => <InputState>[
      const InputState.points(points: 8),
      InputState.darts(
        darts: const [
          Dart(type: DartType.single, value: 10),
          Dart(type: DartType.single, value: 11),
        ].toImmutableList(),
      ),
      InputState.darts(
        darts: const [
          Dart(type: DartType.single, value: 10),
          Dart(type: DartType.single, value: 11),
          Dart(type: DartType.single, value: 12),
        ].toImmutableList(),
      ),
      const InputState.points(points: 20)
    ],
  );
}
