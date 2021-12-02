part of 'bobs_twenty_seven_bloc.dart';

@freezed
class BobsTwentySevenState with _$BobsTwentySevenState {
  const factory BobsTwentySevenState.initial({
    required KtList<Hit> hits,
  }) = _BobsTwentySevenInitial;
}
