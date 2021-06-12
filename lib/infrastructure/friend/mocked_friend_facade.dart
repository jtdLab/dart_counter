import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/friend/i_friend_facade.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:dart_counter/domain/friend/user.dart';
import 'package:kt_dart/kt.dart';

@Environment(Environment.dev)
@LazySingleton(as: IFriendFacade)
class MockedFriendFacade implements IFriendFacade {
  bool fail = false; // toggle to simulate working / notworking endpoint

  @override
  Future<Either<FriendFailure, Unit>> addFriend(User user) {
    if (fail) {
      return Future.value(left(const FriendFailure.unexpected()));
    } else {
      return Future.value(right(unit));
    }
  }

  @override
  Future<Either<FriendFailure, Unit>> removeFriend(Friend friend) {
    if (fail) {
      return Future.value(left(const FriendFailure.unexpected()));
    } else {
      return Future.value(right(unit));
    }
  }

  @override
  Future<Either<FriendFailure, User>> searchUserByUsername(String username) {
    if (fail) {
      return Future.value(left(const FriendFailure.unexpected()));
    } else {
      return Future.value(
        right(
          User.dummy().copyWith(
            username: Username(username),
          ),
        ),
      );
    }
  }

  @override
  Stream<Either<FriendFailure, KtList<FriendRequest>>> watchFriendRequests() {
    return Stream.value(
      fail
          ? left(const FriendFailure.unexpected())
          : right(
              KtList.from(
                [
                  FriendRequest.dummy(),
                  FriendRequest.dummy(),
                  FriendRequest.dummy(),
                ],
              ),
            ),
    );
  }

  @override
  Stream<Either<FriendFailure, KtList<Friend>>> watchFriends() {
    return Stream.value(
      fail
          ? left(const FriendFailure.unexpected())
          : right(
              KtList.from(
                [
                  Friend.dummy(),
                  Friend.dummy(),
                ],
              ),
            ),
    );
  }
}
