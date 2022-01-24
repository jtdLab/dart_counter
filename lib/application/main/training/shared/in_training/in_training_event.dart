import 'package:freezed_annotation/freezed_annotation.dart';

part 'in_training_event.freezed.dart';

@freezed
class InTrainingEvent with _$InTrainingEvent {
  const factory InTrainingEvent.canceled() = Canceled;
}
