part of 'detailed_key_board_bloc.dart';

@freezed
class DetailedKeyBoardState with _$DetailedKeyBoardState {
  const factory DetailedKeyBoardState({
    int? focusedValue,
  }) = _DetailedKeyBoardState;

  factory DetailedKeyBoardState.initial() => const DetailedKeyBoardState();
}
