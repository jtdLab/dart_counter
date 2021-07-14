import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_invitation_failure.freezed.dart';

@freezed
class GameInvitationFailure with _$GameInvitationFailure {
  const factory GameInvitationFailure.unexpected() = _Unexpected;
  const factory GameInvitationFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory GameInvitationFailure.unableToRead() = _UnableToRead;
}
