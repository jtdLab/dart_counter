import 'package:freezed_annotation/freezed_annotation.dart';

import 'key_board_type.dart';

part 'in_game_state.freezed.dart';

@freezed
class InGameState with _$InGameState {
  const factory InGameState.initial({
    required KeyBoardType keyBoardType,
  }) = InGameInitial;
}
