part of 'more_bloc.dart';

@freezed
class MoreEvent with _$MoreEvent {
  const factory MoreEvent.showProfilePressed({
    required Friend friend,
  }) = ShowProfilePressed;
  const factory MoreEvent.removePressed({
    required Friend friend,
  }) = RemovePressed;
}
