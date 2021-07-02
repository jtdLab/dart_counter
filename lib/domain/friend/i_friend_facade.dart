import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/user.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import 'friend_request.dart';

abstract class IFriendFacade {
  Future<Either<FriendFailure, User>> searchUserByUsername(String username);
  Future<Either<FriendFailure, Unit>> addFriend(User user);
  Future<Either<FriendFailure, Unit>> removeFriend(Friend friend);
  ValueStream<Either<FriendFailure, KtList<Friend>>> watchFriends();
  ValueStream<Either<FriendFailure, KtList<FriendRequest>>>
      watchFriendRequests();
  ValueStream<Either<FriendFailure, int>> watchUnreadFriendRequests();
  void markFriendRequestsAsRead();
}
