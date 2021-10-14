part of 'more_bloc.dart';

@freezed
class MoreEvent with _$MoreEvent {
  const factory MoreEvent.removePressed({
    required Friend
        friend, // TODO get this from ref to friend bloc in value selected friend
  }) = RemovePressed;
}
