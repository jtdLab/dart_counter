part of 'detailed_input_area_bloc.dart';

@freezed
class DetailedInputAreaState with _$DetailedInputAreaState {
  const factory DetailedInputAreaState.initial() = DetailedInputAreaInitial;
  const factory DetailedInputAreaState.focused({
    required int focusedValue,
    required DartType maxAllowedType,
  }) = DetailedInputAreaFocused;
}
