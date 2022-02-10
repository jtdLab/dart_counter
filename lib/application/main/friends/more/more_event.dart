// coverage:ignore-file

part of 'more_bloc.dart';

@freezed
class MoreEvent with _$MoreEvent {
  const factory MoreEvent.removePressed() = _RemovePressed;
}
