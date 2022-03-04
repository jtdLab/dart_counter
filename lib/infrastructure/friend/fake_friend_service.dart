import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dart_counter/domain/friend/user_snapshot.dart';
import 'package:dart_counter/domain/user/profile.dart';
import 'package:dartz/dartz.dart';
import 'package:faker/faker.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@Environment(Environment.dev)
@LazySingleton(as: IFriendService)
class FakeFriendService implements IFriendService {
  static bool hasNetworkConnection = true;

  final IAuthService _authService;

  final BehaviorSubject<KtList<Friend>> _friendsController;
  final BehaviorSubject<KtList<FriendRequest>> _receivedFriendRequestController;
  final BehaviorSubject<KtList<FriendRequest>> _sentFriendRequestController;

  final List<UserSnapshot> _userSearchResults;

  FakeFriendService(
    this._authService,
  )   : _friendsController = BehaviorSubject.seeded(
          faker.randomGenerator
              .amount((i) => Friend.dummy(), 5)
              .toImmutableList(),
        ),
        _receivedFriendRequestController = BehaviorSubject.seeded(
          faker.randomGenerator
              .amount((i) => FriendRequest.dummy(), 10)
              .toImmutableList(),
        ),
        _sentFriendRequestController = BehaviorSubject.seeded(
          faker.randomGenerator
              .amount((i) => FriendRequest.dummy(), 10)
              .toImmutableList(),
        ),
        _userSearchResults = [] {
    // TODO remove
    /**
     * _authService.watchIsAuthenticated().listen((isAuthenticated) {
      if (isAuthenticated) {
        if (!_friendsController.hasValue) {
          _friendsController.add(
            faker.randomGenerator
                .amount((i) => Friend.dummy(), 5)
                .toImmutableList(),
          );
        }

        if (!_receivedFriendRequestController.hasValue) {
          _receivedFriendRequestController.add(
            faker.randomGenerator
                .amount((i) => FriendRequest.dummy(), 10)
                .toImmutableList(),
          );
        }

        if (!_sentFriendRequestController.hasValue) {
          _sentFriendRequestController.add(
            faker.randomGenerator
                .amount((i) => FriendRequest.dummy(), 10)
                .toImmutableList(),
          );
        }
      }
    });
   */
  }

  @override
  Future<Either<FriendFailure, Unit>> acceptFriendRequest({
    required FriendRequest friendRequest,
  }) async {
    _checkAuth();

    // when has internet connection
    if (hasNetworkConnection) {
      // remove accepted friend requests from received friend requests
      _removeFromReceivedFriendRequests(friendRequest);

      // create new friend
      final newFriend = Friend.dummy().copyWith(
        id: friendRequest.fromId,
        profile: Profile.dummy().copyWith(name: friendRequest.fromName),
      );

      // add new friend to friends
      final friends = _friendsController.value.toMutableList();
      friends.add(newFriend);

      // emit new friends
      _friendsController.add(friends);

      // return unit
      return right(unit);
      // when has no internet connection
    }

    // return no network access failure
    return left(const FriendFailure.noNetworkAccess());
  }

  @override
  Future<Either<FriendFailure, Unit>> cancelFriendRequest({
    required FriendRequest friendRequest,
  }) async {
    _checkAuth();

    if (hasNetworkConnection) {
      final sentFriendRequests =
          _sentFriendRequestController.value.toMutableList().asList();

      sentFriendRequests.removeWhere((element) => element == friendRequest);

      _sentFriendRequestController.add(sentFriendRequests.toImmutableList());

      return right(unit);
    }

    return left(const FriendFailure.noNetworkAccess());
  }

  @override
  Future<Either<FriendFailure, Unit>> declineFriendRequest({
    required FriendRequest friendRequest,
  }) async {
    _checkAuth();

    if (hasNetworkConnection) {
      _removeFromReceivedFriendRequests(friendRequest);
      return right(unit);
    }

    return left(const FriendFailure.noNetworkAccess());
  }

  @override
  Future<Either<FriendFailure, KtList<Friend>>> getFriends() async {
    _checkAuth();

    if (hasNetworkConnection) {
      return right(_friendsController.value);
    }

    return left(const FriendFailure.noNetworkAccess());
  }

  @override
  Future<Either<FriendFailure, KtList<FriendRequest>>>
      getReceivedFriendRequests() async {
    _checkAuth();

    if (hasNetworkConnection) {
      return right(_receivedFriendRequestController.value);
    }

    return left(const FriendFailure.noNetworkAccess());
  }

  @override
  Future<Either<FriendFailure, KtList<FriendRequest>>>
      getSentFriendRequests() async {
    _checkAuth();

    if (hasNetworkConnection) {
      return right(_sentFriendRequestController.value);
    }

    return left(const FriendFailure.noNetworkAccess());
  }

  @override
  Future<void> markReceivedFriendRequestsAsRead() async {
    _checkAuth();

    final receivedFriendRequests = _receivedFriendRequestController.value;

    _receivedFriendRequestController.add(
      receivedFriendRequests
          .map((friendRequest) => friendRequest.copyWith(read: true))
          .toList(),
    );
  }

  @override
  Future<Either<FriendFailure, Unit>> removeFriend({
    required Friend friend,
  }) async {
    _checkAuth();

    if (hasNetworkConnection) {
      final friends = _friendsController.value.toMutableList().asList();

      friends.removeWhere((element) => element == friend);

      _friendsController.add(friends.toImmutableList());

      return right(unit);
    }

    return left(const FriendFailure.noNetworkAccess());
  }

  // TODO imple better and test success case
  @override
  Future<Either<FriendFailure, KtList<UserSnapshot>>> searchUserByUsername({
    required String username,
    UserSnapshot? lastVisible,
    int limit = 5,
  }) async {
    _checkAuth();

    if (hasNetworkConnection) {
      if (_userSearchResults.isNotEmpty) {
        final name = _userSearchResults.last.name.getOrCrash();
        if (username == name) {
          _userSearchResults.clear();
        }

        if (lastVisible == null) {
          _userSearchResults.clear();
        } else {
          final index = _userSearchResults.indexOf(lastVisible);
          _userSearchResults.removeRange(
            index + 1,
            _userSearchResults.length - 1,
          );
        }
      }

      if (Username('${username}xxxx').isValid()) {
        _userSearchResults.addAll(
          List.generate(
            limit,
            (index) => UserSnapshot.dummy().copyWith(
              name: Username(
                '$username${1000 + _userSearchResults.length + index}',
              ),
            ),
          ),
        );
      } else {
        _userSearchResults.addAll(
          List.generate(
            limit,
            (index) => UserSnapshot.dummy().copyWith(
              name: Username(
                '${username.substring(0, 5)}${1000 + _userSearchResults.length + index}',
              ),
            ),
          ),
        );
      }

      return right(_userSearchResults.toImmutableList());
    }

    return left(const FriendFailure.noNetworkAccess());
  }

  @override
  Future<Either<FriendFailure, UserSnapshot>> getUserById({
    required String id,
  }) async {
    _checkAuth();

    if (hasNetworkConnection) {
      return right(
        UserSnapshot.dummy().copyWith(id: UniqueId.fromUniqueString(id)),
      );
    }

    return left(const FriendFailure.noNetworkAccess());
  }

  @override
  Future<Either<FriendFailure, Unit>> sendFriendRequest({
    required UniqueId toId,
  }) async {
    _checkAuth();

    if (hasNetworkConnection) {
      final sentFriendRequests =
          _sentFriendRequestController.value.toMutableList();

      sentFriendRequests.add(
        FriendRequest.dummy().copyWith(toId: toId),
      );
      _sentFriendRequestController.add(sentFriendRequests);
      return right(unit);
    }

    return left(const FriendFailure.noNetworkAccess());
  }

  @override
  Stream<Either<FriendFailure, KtList<Friend>>> watchFriends() {
    _checkAuth();

    if (hasNetworkConnection) {
      return _friendsController.stream.map(
        (friends) => right(friends),
      );
    } else {
      return Stream.value(left(const FriendFailure.noNetworkAccess()));
    }
  }

  @override
  Stream<Either<FriendFailure, KtList<FriendRequest>>>
      watchReceivedFriendRequests() {
    _checkAuth();

    if (hasNetworkConnection) {
      return _receivedFriendRequestController.stream.map(
        (receivedFriendRequests) => right(receivedFriendRequests),
      );
    } else {
      return Stream.value(left(const FriendFailure.noNetworkAccess()));
    }
  }

  @override
  Stream<Either<FriendFailure, KtList<FriendRequest>>>
      watchSentFriendRequests() {
    _checkAuth();

    if (hasNetworkConnection) {
      return _sentFriendRequestController.stream.map(
        (sentFriendRequests) => right(sentFriendRequests),
      );
    } else {
      return Stream.value(left(const FriendFailure.noNetworkAccess()));
    }
  }

  /// Throws [NotAuthenticatedError] if app-user is not signed in.
  void _checkAuth() {
    if (!_authService.isAuthenticated()) {
      throw NotAuthenticatedError();
    }
  }

  /// Removes [friendRequest] from the receivedFriendRequests and emits event.
  void _removeFromReceivedFriendRequests(
    FriendRequest friendRequest,
  ) {
    final receivedFriendRequests =
        _receivedFriendRequestController.value.toMutableList().asList();

    receivedFriendRequests.removeWhere(
      (element) => element == friendRequest,
    );

    _receivedFriendRequestController.add(
      receivedFriendRequests.toImmutableList(),
    );
  }
}
