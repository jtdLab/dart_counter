// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';

part 'in_game_state.freezed.dart';

@freezed
class InGameState with _$InGameState {
  const factory InGameState.initial({
    required bool showCheckoutDetails,
  }) = InGameInitial;
}
