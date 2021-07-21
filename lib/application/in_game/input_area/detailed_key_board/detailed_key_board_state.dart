part of 'detailed_key_board_bloc.dart';

@freezed
class DetailedKeyBoardState with _$DetailedKeyBoardState {
  const factory DetailedKeyBoardState({
    int? focusedValue,
    required KtList<Dart> darts,
  }) = _DetailedKeyBoardState;

  factory DetailedKeyBoardState.initial() => const DetailedKeyBoardState(
        darts: KtList.empty(),
      );
}
