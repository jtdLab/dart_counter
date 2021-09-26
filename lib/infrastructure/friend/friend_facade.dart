import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/i_friend_facade.dart';
import 'package:dart_counter/domain/friend/user.dart';
import 'package:dart_counter/domain/friend/user_search_result.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';
import 'package:dart_counter/infrastructure/friend/user_dto.dart';
import 'package:dart_counter/infrastructure/friend/user_search_result_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';
import 'package:social_client/social_client.dart';

import 'friend_request_dto.dart';

@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IFriendFacade)
class FriendFacade implements IFriendFacade {
  final IAuthFacade _authFacade;
  final IUserFacade _userFacade;
  final FirebaseFirestore _firestore;
  final SocialClient _socialClient;

  BehaviorSubject<Either<FriendFailure, KtList<User>>> _friendsController;
  BehaviorSubject<Either<FriendFailure, KtList<FriendRequest>>>
      _receivedFriendRequestsController;
  BehaviorSubject<Either<FriendFailure, KtList<FriendRequest>>>
      _sentFriendRequestsController;

  FriendFacade(
    this._authFacade,
    this._userFacade,
    this._firestore,
    this._socialClient,
  )   : _friendsController = BehaviorSubject(),
        _receivedFriendRequestsController = BehaviorSubject(),
        _sentFriendRequestsController = BehaviorSubject() {
    _authFacade.watchIsAuthenticated().listen((isAuthenticated) async {
      if (isAuthenticated) {
        _friendsController = BehaviorSubject();
        _friendsController.addStream(watchFriends());
        _receivedFriendRequestsController = BehaviorSubject();
        _receivedFriendRequestsController
            .addStream(watchReceivedFriendRequests());
        _sentFriendRequestsController = BehaviorSubject();
        _sentFriendRequestsController.addStream(watchSentFriendRequests());
      } else {
        await _friendsController.close(); // TODO needed
        await _receivedFriendRequestsController.close(); // TODO needed
        await _sentFriendRequestsController.close(); // TODO needed
      }
    });
  }

  @override
  Either<FriendFailure, KtList<User>> getFriends() {
    _checkAuth();
    final failureOrFriends = _friendsController.value;

    if (failureOrFriends == null) {
      return left(const FriendFailure.unexpected()); // TODO name better
    }

    return failureOrFriends;
  }

  @override
  Either<FriendFailure, KtList<FriendRequest>> getReceivedFriendRequests() {
    _checkAuth();
    final failureOrFriendRequests = _receivedFriendRequestsController.value;

    if (failureOrFriendRequests == null) {
      return left(const FriendFailure.unexpected()); // TODO name better
    }

    return failureOrFriendRequests;
  }

  @override
  Either<FriendFailure, KtList<FriendRequest>> getSentFriendRequests() {
    _checkAuth();
    final failureOrFriendRequests = _sentFriendRequestsController.value;

    if (failureOrFriendRequests == null) {
      return left(const FriendFailure.unexpected()); // TODO name better
    }

    return failureOrFriendRequests;
  }

  // TODO implement more efficient and add pagination
  @override
  Stream<Either<FriendFailure, KtList<User>>> watchFriends() {
    _checkAuth();
    return _userFacade
        .watchUser()
        .asyncMap<Either<FriendFailure, KtList<User>>>((failureOrUser) {
      return failureOrUser.fold(
        (failure) => throw Error(), // TODO name better
        (user) async {
          final friendIds = user.friendIds;

          final friends = <User>[];

          for (final friendId in friendIds.iter) {
            final doc = await _firestore
                .profilesCollection()
                .doc(friendId.getOrCrash())
                .get();

            friends.add(UserDto.fromFirestore(doc).toDomain());
          }

          return right(friends.toImmutableList());
        },
      );
    }).onErrorReturnWith((error) => left(const FriendFailure.unexpected()));
  }

  @override
  Stream<Either<FriendFailure, KtList<FriendRequest>>>
      watchReceivedFriendRequests() async* {
    _checkAuth();
    final collection = _firestore.receivedFriendRequestsCollection();
    yield* collection
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snapshot) {
      final receivedFriendRequests = snapshot.docs
          .map((doc) => FriendRequestDto.fromFirestore(doc).toDomain())
          .toImmutableList();
      return right<FriendFailure, KtList<FriendRequest>>(
        receivedFriendRequests,
      );
    }).onErrorReturnWith((e) {
      return left(const FriendFailure.unexpected());
    });
  }

  @override
  Future<Either<FriendFailure, Unit>> markReceivedFriendRequestsAsRead() async {
    _checkAuth();
    final CollectionReference<Object?> collection;
    try {
      collection = _firestore.receivedFriendRequestsCollection();
    } catch (e) {
      rethrow;
    }

    try {
      final querySnapshot = await collection
          .where('read', isNotEqualTo: true)
          .get(const GetOptions(source: Source.cache));

      for (final doc in querySnapshot.docs) {
        await collection.doc(doc.id).update({'read': true});
      }

      return right(unit);
    } catch (e) {
      print(e);
      return left(const FriendFailure.unexpected()); // TODO name better
    }
  }

  @override
  Stream<Either<FriendFailure, KtList<FriendRequest>>>
      watchSentFriendRequests() async* {
    _checkAuth();
    final collection = _firestore.sentFriendRequestsCollection();
    yield* collection
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snapshot) {
      final sentFriendRequests = snapshot.docs
          .map((doc) => FriendRequestDto.fromFirestore(doc).toDomain())
          .toImmutableList();

      return right<FriendFailure, KtList<FriendRequest>>(
        sentFriendRequests,
      );
    }).onErrorReturnWith((e) {
      return left(const FriendFailure.unexpected());
    });
  }

  @override
  Future<Either<FriendFailure, Unit>> sendFriendRequest({
    required UniqueId toId,
  }) async {
    _checkAuth();

    final success = await _socialClient.sendFriendRequest(
      toId: toId.getOrCrash(),
    );

    if (success) {
      return right(unit);
    } else {
      return left(const FriendFailure.unexpected());
    }
  }

  @override
  Future<Either<FriendFailure, Unit>> cancelFriendRequest({
    required FriendRequest friendRequest,
  }) async {
    _checkAuth();
    final success = await _socialClient.cancelFriendRequest(
      toId: friendRequest.toId.getOrCrash(),
    );

    if (success) {
      return right(unit);
    } else {
      return left(const FriendFailure.unexpected());
    }
  }

  @override
  Future<Either<FriendFailure, Unit>> acceptFriendRequest({
    required FriendRequest friendRequest,
  }) async {
    _checkAuth();
    final success = await _socialClient.acceptFriendRequest(
      fromId: friendRequest.fromId.getOrCrash(),
    );

    if (success) {
      return right(unit);
    } else {
      return left(const FriendFailure.unexpected());
    }
  }

  @override
  Future<Either<FriendFailure, Unit>> declineFriendRequest({
    required FriendRequest friendRequest,
  }) async {
    _checkAuth();
    final success = await _socialClient.declineFriendRequest(
      fromId: friendRequest.fromId.getOrCrash(),
    );

    if (success) {
      return right(unit);
    } else {
      return left(const FriendFailure.unexpected());
    }
  }

  @override
  Future<Either<FriendFailure, Unit>> removeFriend({
    required User friend,
  }) async {
    _checkAuth();
    final success = await _socialClient.removeFriend(
      friendId: friend.id.getOrCrash(),
    );

    if (success) {
      return right(unit);
    } else {
      return left(const FriendFailure.unexpected());
    }
  }

  // TODO implement more efficient and add pagination
  //  implement this with field mask - for that check
  // if this feature is available on sdk or restapi of firestore
  @override
  Future<Either<FriendFailure, KtList<UserSearchResult>>> searchUserByUsername({
    required String username,
    UserSearchResult? lastVisible,
    int limit = 5,
  }) async {
    _checkAuth();
    final QuerySnapshot<Object?> querySnapshot;

    if (lastVisible == null) {
      // no pagination
      querySnapshot = await _firestore
          .profilesCollection()
          .orderBy('name')
          .where('name', isGreaterThanOrEqualTo: username)
          .limit(limit)
          .get();
    } else {
      // no pagination
      querySnapshot = await _firestore
          .profilesCollection()
          .orderBy('name')
          .where('name', isGreaterThanOrEqualTo: username)
          .startAfter([lastVisible.username.getOrCrash()])
          .limit(limit)
          .get();
    }

    final searchResults = <UserSearchResult>[];
    try {
      for (final doc in querySnapshot.docs) {
        searchResults.add(UserSearchResultDto.fromFirestore(doc).toDomain());
      }
    } catch (e) {
      print(e);
      return left(const FriendFailure.unexpected()); // TODO name better
    }

    return right(searchResults.toImmutableList());
  }

  /// Throws [NotAuthenticatedError] if app-user is not signed in.
  void _checkAuth() {
    if (!_authFacade.isAuthenticated()) {
      throw NotAuthenticatedError();
    }
  }
}
