part of 'single_training_bloc.dart';

@freezed
class SingleTrainingState with _$SingleTrainingState {
  const factory SingleTrainingState.initial({
    required KtList<Hit> hits,
    required Mode mode,
  }) = _SingleTrainingInitial;
}
