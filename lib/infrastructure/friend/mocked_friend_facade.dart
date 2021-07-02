import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/friend/i_friend_facade.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:dart_counter/domain/friend/user.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@Environment(Environment.dev)
@LazySingleton(as: IFriendFacade)
class MockedFriendFacade implements IFriendFacade {
  final BehaviorSubject<Either<FriendFailure, KtList<FriendRequest>>>
      _friendRequestController = BehaviorSubject();

  final BehaviorSubject<Either<FriendFailure, KtList<Friend>>>
      _friendsController = BehaviorSubject();

  final BehaviorSubject<Either<FriendFailure, int>>
      _unreadFriendRequestController = BehaviorSubject();

  MockedFriendFacade() {
    _friendRequestController.add(
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

    _friendsController.add(
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

    _unreadFriendRequestController.add(
      _friendRequestController.valueWrapper!.value.fold(
        (failure) => left(const FriendFailure.unexpected()),
        (friendRequests) {
          final unreadFriendRequests = friendRequests
              .filter((friendRequest) => !friendRequest.read)
              .size;
          return right(unreadFriendRequests);
        },
      ),
    );
  }

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
  ValueStream<Either<FriendFailure, KtList<FriendRequest>>>
      watchFriendRequests() {
    return _friendRequestController.stream;
  }

  @override
  ValueStream<Either<FriendFailure, KtList<Friend>>> watchFriends() {
    return _friendsController.stream;
  }

  @override
  ValueStream<Either<FriendFailure, int>> watchUnreadFriendRequests() {
    return _unreadFriendRequestController.stream;
  }

  @override
  void markFriendRequestsAsRead() {
    final failureOrFriendRequests =
        _friendRequestController.valueWrapper?.value;
    if (failureOrFriendRequests != null) {
      failureOrFriendRequests.fold(
        (failure) {},
        (friendRequests) {
          final readFriendRequests = friendRequests
              .map((friendRequest) => friendRequest.copyWith(read: true));
          _friendRequestController.add(right(readFriendRequests));
          _unreadFriendRequestController.add(right(0));
        },
      );
    }
  }
}
