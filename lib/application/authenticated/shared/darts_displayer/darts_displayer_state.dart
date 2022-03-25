// coverage:ignore-file

import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'darts_displayer_state.freezed.dart';

@freezed
class DartsDisplayerState with _$DartsDisplayerState {
  const factory DartsDisplayerState.empty() = DartsDisplayerEmpty;
  const factory DartsDisplayerState.notEmpty({
    required NotEmptyList<Dart> darts,
  }) = DartsDisplayerNotEmpty;
}
