import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dart_counter/domain/friend/user_snapshot.dart';
import 'package:dart_counter/domain/user/profile.dart';
import 'package:dart_counter/main_dev.dart';
import 'package:dartz/dartz.dart';
import 'package:faker/faker.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@Environment(Environment.dev)
@LazySingleton(as: IFriendService)
class MockedFriendService implements IFriendService {
  final IAuthService _authService;
  //final IUserService _userService; // TODO needed like in real ?

  BehaviorSubject<Either<FriendFailure, KtList<Friend>>>? _friendsController;

  BehaviorSubject<Either<FriendFailure, KtList<FriendRequest>>>?
      _receivedFriendRequestController;

  BehaviorSubject<Either<FriendFailure, KtList<FriendRequest>>>?
      _sentFriendRequestController;

  final List<UserSnapshot> _userSearchResults;

  MockedFriendService(
    this._authService,
    //this._userService,
  )   : _friendsController = _createFriendsController(),
        _receivedFriendRequestController =
            _createReceivedFriendRequestsController(),
        _sentFriendRequestController = _createSentFriendRequestsController(),
        _userSearchResults = [] {
    _authService.watchIsAuthenticated().listen((isAuthenticated) async {
      if (isAuthenticated) {
        _friendsController = _createFriendsController();
        _receivedFriendRequestController =
            _createReceivedFriendRequestsController();
        _sentFriendRequestController = _createSentFriendRequestsController();
      } else {
        await _friendsController?.close();
        await _receivedFriendRequestController?.close();
        await _sentFriendRequestController?.close();
        _friendsController = null;
        _receivedFriendRequestController = null;
        _sentFriendRequestController = null;
      }
    });
  }

  @override
  Future<Either<FriendFailure, Unit>> acceptFriendRequest({
    required FriendRequest friendRequest,
  }) async {
    _checkAuth();
    if (hasNetworkConnection) {
      _removeFromReceivedFriendRequests(friendRequest);

      final newFriend = Friend.dummy().copyWith(
        id: friendRequest.fromId,
        profile: Profile.dummy().copyWith(name: friendRequest.fromName),
      );

      final friends =
          _friendsController!.value.toOption().toNullable()!.toMutableList();
      friends.add(newFriend);

      _friendsController!.add(right(friends));
      return right(unit);
    }

    return left(const FriendFailure.noNetworkAccess());
  }

  @override
  Future<Either<FriendFailure, Unit>> cancelFriendRequest({
    required FriendRequest friendRequest,
  }) async {
    _checkAuth();
    if (hasNetworkConnection) {
      final sentFriendRequests = _sentFriendRequestController!.value
          .toOption()
          .toNullable()!
          .toMutableList()
          .asList();

      sentFriendRequests.removeWhere(
        (element) => element == friendRequest,
      );

      _sentFriendRequestController!.add(
        right(sentFriendRequests.toImmutableList()),
      );

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
  Either<FriendFailure, KtList<Friend>>? getFriends() {
    _checkAuth();
    if (hasNetworkConnection) {
      try {
        return _friendsController!.value;
      } catch (e) {
        return null;
      }
    }

    return left(const FriendFailure.noNetworkAccess());
  }

  @override
  Either<FriendFailure, KtList<FriendRequest>>? getReceivedFriendRequests() {
    _checkAuth();
    if (hasNetworkConnection) {
      try {
        return _receivedFriendRequestController!.value;
      } catch (e) {
        return null;
      }
    }

    return left(const FriendFailure.noNetworkAccess());
  }

  @override
  Either<FriendFailure, KtList<FriendRequest>>? getSentFriendRequests() {
    _checkAuth();
    if (hasNetworkConnection) {
      try {
        return _sentFriendRequestController!.value;
      } catch (e) {
        return null;
      }
    }

    return left(const FriendFailure.noNetworkAccess());
  }

  @override
  Future<Either<FriendFailure, Unit>> markReceivedFriendRequestsAsRead() async {
    _checkAuth();

    final receivedFriendRequests =
        _receivedFriendRequestController!.value.toOption().toNullable()!;

    _receivedFriendRequestController!.add(
      right(
        receivedFriendRequests
            .map(
              (friendRequest) => friendRequest.copyWith(read: true),
            )
            .toList(),
      ),
    );

    return right(unit);
  }

  @override
  Future<Either<FriendFailure, Unit>> removeFriend({
    required Friend friend,
  }) async {
    _checkAuth();
    if (hasNetworkConnection) {
      final friends = _friendsController!.value
          .toOption()
          .toNullable()!
          .toMutableList()
          .asList();

      friends.removeWhere(
        (element) => element == friend,
      );

      _friendsController!.add(
        right(friends.toImmutableList()),
      );

      return right(unit);
    }

    return left(const FriendFailure.noNetworkAccess());
  }

// TODO imple better
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

      if (Username('$username-xxx').isValid()) {
        _userSearchResults.addAll(
          List.generate(
            limit,
            (index) => UserSnapshot.dummy().copyWith(
              name: Username(
                '$username-${100 + _userSearchResults.length + index}',
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
                '${username.substring(0, 5)}-${100 + _userSearchResults.length + index}',
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
      return right(UserSnapshot.dummy());
    }

    return left(const FriendFailure.noNetworkAccess());
  }

  @override
  Future<Either<FriendFailure, Unit>> sendFriendRequest({
    required UniqueId toId,
  }) async {
    _checkAuth();
    if (hasNetworkConnection) {
      final sentFriendRequests = _sentFriendRequestController!.value
          .toOption()
          .toNullable()!
          .toMutableList();

      sentFriendRequests.add(
        FriendRequest.dummy().copyWith(toId: toId),
      );
      _sentFriendRequestController!.add(
        right(sentFriendRequests),
      );
      return right(unit);
    }

    return left(const FriendFailure.noNetworkAccess());
  }

  @override
  Stream<Either<FriendFailure, KtList<Friend>>> watchFriends() {
    _checkAuth();
    return _friendsController!.stream;
  }

  @override
  Stream<Either<FriendFailure, KtList<FriendRequest>>>
      watchReceivedFriendRequests() {
    _checkAuth();
    return _receivedFriendRequestController!.stream;
  }

  @override
  Stream<Either<FriendFailure, KtList<FriendRequest>>>
      watchSentFriendRequests() {
    _checkAuth();

    return _sentFriendRequestController!.stream;
  }

  /// Throws [NotAuthenticatedError] if app-user is not signed in.
  void _checkAuth() {
    if (!_authService.isAuthenticated()) {
      throw NotAuthenticatedError();
    }
  }

  /// Creates a new friend controller seeded with either a list of [Friend] or [FriendFailure] depending
  /// on available network connection.
  static BehaviorSubject<Either<FriendFailure, KtList<Friend>>>
      _createFriendsController() {
    return BehaviorSubject.seeded(
      hasNetworkConnection
          ? right(
              faker.randomGenerator
                  .amount((i) => Friend.dummy(), 5)
                  .toImmutableList(),
            )
          : left(const FriendFailure.noNetworkAccess()),
    );
  }

  /// Creates a new received friendRequests controller seeded with either a list of [FriendRequests] or [FriendFailure] depending
  /// on available network connection.
  static BehaviorSubject<Either<FriendFailure, KtList<FriendRequest>>>
      _createReceivedFriendRequestsController() {
    return BehaviorSubject.seeded(
      hasNetworkConnection
          ? right(
              faker.randomGenerator
                  .amount((i) => FriendRequest.dummy(), 5)
                  .toImmutableList(),
            )
          : left(const FriendFailure.noNetworkAccess()),
    );
  }

  /// Creates a new sent friendRequests controller seeded with either a list of [FriendRequests] or [FriendFailure] depending
  /// on available network connection.
  static BehaviorSubject<Either<FriendFailure, KtList<FriendRequest>>>
      _createSentFriendRequestsController() {
    return BehaviorSubject.seeded(
      hasNetworkConnection
          ? right(
              faker.randomGenerator
                  .amount((i) => FriendRequest.dummy(), 20)
                  .toImmutableList(),
            )
          : left(const FriendFailure.noNetworkAccess()),
    );
  }

  /// Removes [friendRequest] from the receivedFriendRequests and emits event.
  void _removeFromReceivedFriendRequests(FriendRequest friendRequest) {
    final receivedFriendRequests = _receivedFriendRequestController!.value
        .toOption()
        .toNullable()!
        .toMutableList()
        .asList();

    receivedFriendRequests.removeWhere(
      (element) => element == friendRequest,
    );

    _receivedFriendRequestController!.add(
      right(receivedFriendRequests.toImmutableList()),
    );
  }
}
