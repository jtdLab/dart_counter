import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';

import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

/// Domain service for all actions related to the inviting process of games.
abstract class IGameInvitationService {
  /// Accepts the received [invitation].
  ///
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  Future<Either<GameInvitationFailure, Unit>> accept({
    required GameInvitation invitation,
  });

  /// Cancels the sent [invitation].
  ///
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  Future<Either<GameInvitationFailure, Unit>> cancel({
    required GameInvitation invitation,
  });

  /// Declines the received [invitation].
  ///
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  Future<Either<GameInvitationFailure, Unit>> decline({
    required GameInvitation invitation,
  });

  /// Returns the received game invitations of the app-user.
  ///
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  Either<GameInvitationFailure, KtList<GameInvitation>>?
      getReceivedGameInvitations(); // TODO good ?

  /// Returns the received game invitations of the app-user.
  ///
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  Either<GameInvitationFailure, KtList<GameInvitation>>?
      getSentGameInvitations(); // TODO good ?

  /// Marks the received game invitations of the app-user globally as read.
  ///
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  Future<Either<GameInvitationFailure, Unit>> markReceivedInvitationsAsRead();

  /// Sends a game invitation to game with id [gameId] to user with id [toId] .
  ///
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  Future<Either<GameInvitationFailure, Unit>> sendGameInvitation({
    required UniqueId gameId,
    required UniqueId toId,
  });

  /// Returns a stream of the received game invitations of the app-user.
  ///
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>
      watchReceivedGameInvitations();

  /// Returns a stream of the sent game invitations of the app-user.
  ///
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>
      watchSentInvitations();
}
