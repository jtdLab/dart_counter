import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'input_state.dart';
part 'input_cubit.freezed.dart';

@lazySingleton
class InputCubit extends Cubit<InputState> {
  InputCubit() : super(const InputState.points(points: 0));

  void update({
    required Either<int, KtList<Dart>> newInput,
  }) =>
      emit(
        newInput.fold(
          (points) => InputState.points(points: points),
          (darts) => InputState.darts(darts: darts),
        ),
      );

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<InputCubit>()) {
      getIt.resetLazySingleton<InputCubit>();
    }

    return super.close();
  }
}
