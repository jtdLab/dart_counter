import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/friend/i_friend_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:dart_counter/domain/friend/user.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';
import 'package:social_client/social_client.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';

import 'friend_request_dto.dart';

@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IFriendFacade)
class FriendFacade implements IFriendFacade {
  final FirebaseFirestore _firestore;
  final SocialClient _socialClient;

  FriendFacade(this._firestore, this._socialClient)
      : _friendRequestController = BehaviorSubject(),
        _unreadFriendRequestController = BehaviorSubject() {
    _friendRequestController.addStream(_watchFriendRequests());
    _unreadFriendRequestController.addStream(_watchUnreadFriendRequests());
  }

  final BehaviorSubject<Either<FriendFailure, KtList<FriendRequest>>>
      _friendRequestController;

  final BehaviorSubject<Either<FriendFailure, int>>
      _unreadFriendRequestController;

  @override
  Future<Either<FriendFailure, Unit>> addFriend(User user) {
    // TODO: implement removeFriend
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
  ValueStream<Either<FriendFailure, KtList<FriendRequest>>>
      watchFriendRequests() {
    return _friendRequestController.stream;
  }

  @override
  ValueStream<Either<FriendFailure, KtList<Friend>>> watchFriends() {
    // TODO: implement watchFriends
    throw UnimplementedError();
  }

  @override
  ValueStream<Either<FriendFailure, int>> watchUnreadFriendRequests() {
    return _unreadFriendRequestController.stream;
  }

  @override
  void markFriendRequestsAsRead() {
    
  }

  Stream<Either<FriendFailure, KtList<FriendRequest>>>
      _watchFriendRequests() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.friendRequestsCollection
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<FriendFailure, KtList<FriendRequest>>(
            snapshot.docs
                .map((doc) => FriendRequestDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      return left(const FriendFailure.unexpected());
    });
  }

  Stream<Either<FriendFailure, int>> _watchUnreadFriendRequests() {
    return watchFriendRequests().map(
      (failureOrFriendRequests) => failureOrFriendRequests.fold(
        (failure) => left(const FriendFailure.unexpected()),
        (friendRequests) => right(
            friendRequests.filter((friendRequest) => !friendRequest.read).size),
      ),
    );
  }
}
