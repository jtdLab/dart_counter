import 'package:dart_counter/domain/game/dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'darts_displayer_event.freezed.dart';

@freezed
class DartsDisplayerEvent with _$DartsDisplayerEvent {
  const factory DartsDisplayerEvent.dartAdded({
    required Dart dart,
  }) = DartAdded;
  const factory DartsDisplayerEvent.dartRemoved() = DartRemoved;
  const factory DartsDisplayerEvent.resetRequested() = ResetRequested;
}
