import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_invitation_failure.freezed.dart';

// TODO remove not needed failure types

/// All failures of the game invitation domain.
@freezed
class GameInvitationFailure with _$GameInvitationFailure {
  const factory GameInvitationFailure.unexpected() = _Unexpected;
  const factory GameInvitationFailure.noNetworkAccess() = _NoNetworkAccess;
  const factory GameInvitationFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory GameInvitationFailure.unableToRead() = _UnableToRead;
}
