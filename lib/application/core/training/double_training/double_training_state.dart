part of 'double_training_bloc.dart';

@freezed
class DoubleTrainingState with _$DoubleTrainingState {
  const factory DoubleTrainingState.initial({
    required KtList<Hit> hits,
    required Mode mode,
  }) = _DoubleTrainingInitial;
}
