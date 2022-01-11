part of 'darts_displayer_bloc.dart';

@freezed
class DartsDisplayerState with _$DartsDisplayerState {
  const factory DartsDisplayerState.initial() = DartsDisplayerInitial;
  const factory DartsDisplayerState.darts({
    required NotEmptyList<Dart> darts,
  }) = DartsDisplayerDarts;
}
