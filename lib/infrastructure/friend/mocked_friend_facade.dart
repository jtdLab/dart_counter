import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/i_friend_facade.dart';
import 'package:dart_counter/domain/friend/user.dart';
import 'package:dart_counter/domain/friend/user_search_result.dart';
import 'package:dart_counter/domain/user/profile.dart';
import 'package:dart_counter/main_dev.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@Environment(Environment.dev)
@LazySingleton(as: IFriendFacade)
class MockedFriendFacade implements IFriendFacade {
  final IAuthFacade _authFacade;

  late final BehaviorSubject<Either<FriendFailure, KtList<User>>>
      _friendsController;

  late final BehaviorSubject<Either<FriendFailure, KtList<FriendRequest>>>
      _receivedFriendRequestController;

  late final BehaviorSubject<Either<FriendFailure, KtList<FriendRequest>>>
      _sentFriendRequestController;

  late List<User> _friends;
  late List<FriendRequest> _receivedFriendRequests;
  late List<FriendRequest> _sentFriendRequests;
  final List<UserSearchResult> _userSearchResults;

  MockedFriendFacade(
    this._authFacade,
  ) : _userSearchResults = [] {
    _receivedFriendRequests = [
      FriendRequest.dummy(),
      FriendRequest.dummy(),
      FriendRequest.dummy(),
    ];
    _sentFriendRequests = [
      FriendRequest.dummy(),
      FriendRequest.dummy(),
      FriendRequest.dummy(),
    ];
    _friends = [
      User.dummy(),
      User.dummy(),
    ];

    _receivedFriendRequestController = BehaviorSubject()
      ..add(
        hasNetworkConnection
            ? right(
                KtList.from(_receivedFriendRequests),
              )
            : left(const FriendFailure.unexpected()), // TODO name better
      );
    _sentFriendRequestController = BehaviorSubject()
      ..add(
        hasNetworkConnection
            ? right(
                KtList.from(_sentFriendRequests),
              )
            : left(const FriendFailure.unexpected()), // TODO name better
      );
    _friendsController = BehaviorSubject()
      ..add(
        hasNetworkConnection
            ? right(
                KtList.from(_friends),
              )
            : left(const FriendFailure.unexpected()), // TODO name better
      );
  }

  @override
  KtList<User> getFriends() => _friends.toImmutableList();

  @override
  KtList<FriendRequest> getReceivedFriendRequests() =>
      _receivedFriendRequests.toImmutableList();

  @override
  KtList<FriendRequest> getSentFriendRequests() =>
      _sentFriendRequests.toImmutableList();

  @override
  Stream<Either<FriendFailure, KtList<User>>> watchFriends() {
    if (_authFacade.isAuthenticated()) {
      return _friendsController.stream;
    }

    throw NotAuthenticatedError();
  }

  @override
  Stream<Either<FriendFailure, KtList<FriendRequest>>>
      watchReceivedFriendRequests() {
    if (_authFacade.isAuthenticated()) {
      return _receivedFriendRequestController.stream;
    }

    throw NotAuthenticatedError();
  }

  @override
  Future<Either<FriendFailure, Unit>> markReceivedFriendRequestsAsRead() async {
    if (_authFacade.isAuthenticated()) {
      _receivedFriendRequests = _receivedFriendRequests
          .map(
            (friendRequest) => friendRequest.copyWith(read: true),
          )
          .toList();
      return right(unit);
    }

    throw NotAuthenticatedError();
  }

  @override
  Stream<Either<FriendFailure, KtList<FriendRequest>>>
      watchSentFriendRequests() {
    if (_authFacade.isAuthenticated()) {
      return _sentFriendRequestController.stream;
    }

    throw NotAuthenticatedError();
  }

  @override
  Future<Either<FriendFailure, Unit>> sendFriendRequest({
    required UniqueId toId,
  }) async {
    if (_authFacade.isAuthenticated()) {
      if (hasNetworkConnection) {
        _sentFriendRequests.add(
          FriendRequest.dummy().copyWith(toId: toId),
        );
        _sentFriendRequestController.add(
          right(_sentFriendRequests.toImmutableList()),
        );
        return right(unit);
      }

      return left(const FriendFailure.unexpected()); // TODO name better
    }

    throw NotAuthenticatedError();
  }

  @override
  Future<Either<FriendFailure, Unit>> cancelFriendRequest({
    required FriendRequest friendRequest,
  }) async {
    if (_authFacade.isAuthenticated()) {
      if (hasNetworkConnection) {
        _sentFriendRequests.removeWhere((element) => element == friendRequest);
        _sentFriendRequestController.add(
          right(_sentFriendRequests.toImmutableList()),
        );
        return right(unit);
      }

      return left(const FriendFailure.unexpected()); // TODO name better
    }

    throw NotAuthenticatedError();
  }

  @override
  Future<Either<FriendFailure, Unit>> acceptFriendRequest({
    required FriendRequest friendRequest,
  }) async {
    if (_authFacade.isAuthenticated()) {
      if (hasNetworkConnection) {
        _removeFromReceivedFriendRequests(friendRequest);

        final newFriend = User.dummy().copyWith(
          id: friendRequest.fromId,
          profile: Profile.dummy().copyWith(username: friendRequest.fromName),
        );
        _friends.add(newFriend);

        _friendsController.add(right(_friends.toImmutableList()));
        return right(unit);
      }

      return left(const FriendFailure.unexpected()); // TODO name better
    }

    throw NotAuthenticatedError();
  }

  @override
  Future<Either<FriendFailure, Unit>> declineFriendRequest({
    required FriendRequest friendRequest,
  }) async {
    if (_authFacade.isAuthenticated()) {
      if (hasNetworkConnection) {
        _removeFromReceivedFriendRequests(friendRequest);
        return right(unit);
      }

      return left(const FriendFailure.unexpected()); // TODO name better
    }

    throw NotAuthenticatedError();
  }

  @override
  Future<Either<FriendFailure, Unit>> removeFriend({
    required User friend,
  }) async {
    if (_authFacade.isAuthenticated()) {
      if (hasNetworkConnection) {
        _friends.removeWhere((element) => element == friend);
        _friendsController.add(right(_friends.toImmutableList()));
        return right(unit);
      }

      return left(const FriendFailure.unexpected()); // TODO name better
    }

    throw NotAuthenticatedError();
  }

  @override
  Future<Either<FriendFailure, KtList<UserSearchResult>>> searchUserByUsername({
    required String username,
    UserSearchResult? lastVisible,
    int limit = 5,
  }) async {
    if (_authFacade.isAuthenticated()) {
      if (hasNetworkConnection) {
        if (_userSearchResults.isNotEmpty) {
          final name = _userSearchResults.last.username.getOrCrash();
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
              (index) => UserSearchResult.dummy().copyWith(
                username: Username(
                  '$username-${100 + _userSearchResults.length + index}',
                ),
              ),
            ),
          );
        } else {
          _userSearchResults.addAll(
            List.generate(
              limit,
              (index) => UserSearchResult.dummy().copyWith(
                username: Username(
                  '${username.substring(0, 5)}-${100 + _userSearchResults.length + index}',
                ),
              ),
            ),
          );
        }

        return right(_userSearchResults.toImmutableList());
      }

      return left(const FriendFailure.unexpected()); // TODO name better
    }

    throw NotAuthenticatedError();
  }

  /// Removes [friendRequest] from the receivedFriendRequests and emits event.
  void _removeFromReceivedFriendRequests(FriendRequest friendRequest) {
    _receivedFriendRequests.removeWhere((element) => element == friendRequest);
    _receivedFriendRequestController.add(
      right(_receivedFriendRequests.toImmutableList()),
    );
  }
}
