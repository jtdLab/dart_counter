part of 'training_bloc.dart';

@freezed
class TrainingEvent with _$TrainingEvent {
  const factory TrainingEvent.started() = _Started;
}