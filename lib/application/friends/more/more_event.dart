part of 'more_bloc.dart';

@freezed
class MoreEvent with _$MoreEvent {
  const factory MoreEvent.removePressed({
    required User friend,
  }) = RemovePressed;
  const factory MoreEvent.showProfilePressed({
    required User friend,
  }) = ShowProfilePressed;
}
