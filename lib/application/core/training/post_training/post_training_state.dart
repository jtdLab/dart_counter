part of 'post_training_bloc.dart';

@freezed
class PostTrainingState with _$PostTrainingState {
   const factory PostTrainingState.initial({
    required TrainingGameSnapshot gameSnapshot,
  }) = PostTrainingInitial;
}
