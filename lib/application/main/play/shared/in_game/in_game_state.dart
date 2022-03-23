// coverage:ignore-file

import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'in_game_state.freezed.dart';

@freezed
class InGameState<T extends AbstractGameSnapshot> with _$InGameState<T> {
  const factory InGameState.initial({
    required T gameSnapshot,
    required bool showCheckoutDetails,
  }) = InGameInitial;
  // TODO remove or kepp and refactor initial state
  // const factory InGameState.showCheckoutDetails() = InGameShowCheckoutDetails;
}
