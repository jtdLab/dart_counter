import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/user.dart';
import 'package:dart_counter/domain/friend/user_search_result.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'friend_request.dart';

/// Domain interface for all actions related to friends/friendships of the app-user.
abstract class IFriendFacade {
  // TODO IS THIS A GOOD INTERFACE ??? CONCERNS: live data needed because friendship can be
  // removed by other user at any time on the other hand there should be pagination because the
  // number of friends a user has can be way larger than the number which can be displayed in the app.
  /// Returns a stream of all friends of the app-user.
  ///
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  Stream<Either<FriendFailure, KtList<User>>> watchFriends();

  /// Returns a stream of the received friends requests of the app-user.
  ///
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  Stream<Either<FriendFailure, KtList<FriendRequest>>>
      watchReceivedFriendRequests();

  /// Marks the received friend requests of the app-user globally as read.
  ///
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  Future<Either<FriendFailure, Unit>> markReceivedFriendRequestsAsRead();

  /// Returns a stream of the sent friend requests of the app-user.
  ///
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  Stream<Either<FriendFailure, KtList<FriendRequest>>>
      watchSentFriendRequests();

  /// Sends a friend request to a user with id [toId].
  ///
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  Future<Either<FriendFailure, Unit>> sendFriendRequest({
    required UniqueId toId,
  });

  /// Cancels the [friendRequest].
  ///
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  Future<Either<FriendFailure, Unit>> cancelFriendRequest({
    required FriendRequest friendRequest,
  });

  /// Accepts the [friendRequest].
  ///
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  Future<Either<FriendFailure, Unit>> acceptFriendRequest({
    required FriendRequest friendRequest,
  });

  /// Declines the [friendRequest].
  ///
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  Future<Either<FriendFailure, Unit>> declineFriendRequest({
    required FriendRequest friendRequest,
  });

  /// Removes the [friend] of the app-user.
  ///
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  Future<Either<FriendFailure, Unit>> removeFriend({
    required User friend,
  });

// TODO should throw error or failure if last visible wasnt received in previous successful
  // call to this method
  /// Searches a user by [username] and returns max. [limit] results.
  ///
  /// [lastVisible] should be used for pagination.
  /// It is the last element of a pervious successful call to this method.
  ///
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  Future<Either<FriendFailure, KtList<UserSearchResult>>> searchUserByUsername({
    required String username,
    UserSearchResult? lastVisible,
    int limit = 5,
  });
}
