part of 'darts_displayer_bloc.dart';

@freezed
class DartsDisplayerEvent with _$DartsDisplayerEvent {
  const factory DartsDisplayerEvent.dartAdded({
    required Dart dart,
  }) = _DartAdded;
  const factory DartsDisplayerEvent.dartRemoved() = _DartRemoved;
}
