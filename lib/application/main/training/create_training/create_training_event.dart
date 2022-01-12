part of 'create_training_bloc.dart';

@freezed
class CreateTrainingEvent with _$CreateTrainingEvent {
  const factory CreateTrainingEvent.created() = _Created;
  const factory CreateTrainingEvent.playerAdded() = _PlayerAdded;
  const factory CreateTrainingEvent.playerRemoved({
    required int index,
  }) = _PlayerRemoved;
  const factory CreateTrainingEvent.playerReordered({
    required int oldIndex,
    required int newIndex,
  }) = _PlayerReordered;
  const factory CreateTrainingEvent.playerNameUpdated({
    required int index,
    required String newName,
  }) = _PlayerNameUpdated;
  const factory CreateTrainingEvent.typeChanged({
    required Type newType,
  }) = _TypeChanged;
  const factory CreateTrainingEvent.started() = _Started;
  const factory CreateTrainingEvent.canceled() = _Canceled;
  // TODO this event show that sperate bloc are needed
  const factory CreateTrainingEvent.singleDoubleModeChanged({
    required Mode newMode,
  }) = _SingleDoubleModeChanged;
  const factory CreateTrainingEvent.numberOfTakesChanged({
    required int newNumberOfTakes,
  }) = _NumberOfTakesChanged;
  const factory CreateTrainingEvent.bobsTwentySevenModeChanged({
    required bobs27.Mode newMode,
  }) = _BobsTwentySevenModeChanged;
  //
  const factory CreateTrainingEvent.snapshotReceived({
    required AbstractTrainingGameSnapshot gameSnapshot,
  }) = _SnapshotReceived;
}
