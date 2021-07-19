import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/user.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'friend_request.dart';

abstract class IFriendFacade {
  Future<Either<FriendFailure, KtList<User>>> searchUserByUsername({
    required String username,
  });
  Future<Either<FriendFailure, Unit>> addFriend({
    required User user,
  });
  Future<Either<FriendFailure, Unit>> removeFriend({
    required Friend friend,
  });
  Stream<Either<FriendFailure, KtList<Friend>>> watchFriends();
  Stream<Either<FriendFailure, KtList<FriendRequest>>> watchFriendRequests();
  Stream<Either<FriendFailure, int>> watchUnreadFriendRequests();
  void markFriendRequestsAsRead();
}
