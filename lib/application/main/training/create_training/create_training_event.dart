part of 'create_training_bloc.dart';

@freezed
class CreateTrainingEvent with _$CreateTrainingEvent {
  const factory CreateTrainingEvent.started() = _Started;
}