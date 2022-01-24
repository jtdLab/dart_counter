import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_board_state.freezed.dart';

@freezed
class KeyBoardState with _$KeyBoardState {
  const factory KeyBoardState.initial() = KeyBoardStateInitial;
}
