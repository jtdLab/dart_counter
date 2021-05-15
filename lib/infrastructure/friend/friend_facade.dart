import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/friend/i_friend_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:dart_counter/domain/friend/user.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@LazySingleton(as: IFriendFacade)
class FriendFacade implements IFriendFacade {
  @override
  Future<Either<FriendFailure, Unit>> addFriend(User user) {
    // TODO: implement addFriend
    throw UnimplementedError();
  }

  @override
  Future<Either<FriendFailure, Unit>> removeFriend(Friend friend) {
    // TODO: implement removeFriend
    throw UnimplementedError();
  }

  @override
  Future<Either<FriendFailure, User>> searchUserByUsername(String username) {
    // TODO: implement searchUserByUsername
    throw UnimplementedError();
  }

  @override
  Stream<Either<FriendFailure, KtList<FriendRequest>>> watchFriendRequests() {
    // TODO: implement watchFriendRequests
    throw UnimplementedError();
  }

  @override
  Stream<Either<FriendFailure, KtList<Friend>>> watchFriends() {
    // TODO: implement watchFriends
    throw UnimplementedError();
  }
}
