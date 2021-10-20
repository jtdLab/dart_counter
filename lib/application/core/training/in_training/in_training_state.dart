part of 'in_training_bloc.dart';

@freezed
class InTrainingState with _$InTrainingState {
  const factory InTrainingState.initial({
    //GameSnapshot? prevGameSnapshot,
    required TrainingGameSnapshot gameSnapshot,
    //required Either<int, KtList<Dart>> inputOrDarts,
  }) = InTrainingInitial;
}
