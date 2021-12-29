import 'package:dart_counter/application/main/play/shared/in_game/key_board_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'in_game_state.freezed.dart';

@freezed
class InGameState with _$InGameState {
  const factory InGameState.initial({
    required KeyBoardType keyBoardType,
  }) = InGameInitial;
}
