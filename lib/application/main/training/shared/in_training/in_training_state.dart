import 'package:freezed_annotation/freezed_annotation.dart';

part 'in_training_state.freezed.dart';

@freezed
class InTrainingState with _$InTrainingState {
  const factory InTrainingState.initial() = InTrainingInitial;
}
// TODO remove this
