import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/i_friend_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'friends_bloc.freezed.dart';
part 'friends_event.dart';
part 'friends_state.dart';

@lazySingleton
class FriendsBloc extends Bloc<FriendsEvent, FriendsState>
    with AutoResetLazySingleton {
  final IFriendFacade _friendFacade;

  FriendsBloc(
    this._friendFacade,
  ) : super(
          const FriendsState.loading(),
        );

  StreamSubscription<Either<FriendFailure, KtList<FriendRequest>>>?
      _receivedFriendRequestStreamSubscription;

  StreamSubscription<Either<FriendFailure, int>>?
      _unreadFriendRequestStreamSubscription;

  @override
  Stream<FriendsState> mapEventToState(
    FriendsEvent event,
  ) async* {
    yield* event.map(
      watchStarted: (_) => _mapWatchStartedToState(),
      friendRequestsReceived: (event) =>
          _mapFriendRequestsReceivedToState(event),
      unreadFriendRequestsReceived: (event) =>
          _mapUnreadFriendRequestsReceivedToState(event),
      failureReceived: (event) => _mapFailureReceivedToState(event),
    );
  }

  Stream<FriendsState> _mapWatchStartedToState() async* {
    _receivedFriendRequestStreamSubscription =
        _friendFacade.watchFriendRequests().listen((failureOrFriendRequests) {
      failureOrFriendRequests.fold(
        (failure) => add(
          FriendsEvent.failureReceived(
            failure: failure,
          ),
        ),
        (friendRequests) => add(
          FriendsEvent.friendRequestsReceived(
            friendRequests: friendRequests,
          ),
        ),
      );
    });

    _unreadFriendRequestStreamSubscription = _friendFacade
        .watchUnreadFriendRequests()
        .listen((failureOrUnreadFriendRequests) {
      failureOrUnreadFriendRequests.fold(
        (failure) => add(
          FriendsEvent.failureReceived(
            failure: failure,
          ),
        ),
        (unreadFriendRequests) => add(
          FriendsEvent.unreadFriendRequestsReceived(
            unreadFriendRequests: unreadFriendRequests,
          ),
        ),
      );
    });
  }

  Stream<FriendsState> _mapFriendRequestsReceivedToState(
    FriendRequestsReceived event,
  ) async* {
    yield state.map(
      loading: (loading) {
        final allReceived = loading.unreadFriendRequests != null;
        if (allReceived) {
          return FriendsState.success(
            friendRequests: event.friendRequests,
            unreadFriendRequests: loading.unreadFriendRequests!,
          );
        } else {
          return loading.copyWith(
            friendRequests: event.friendRequests,
          );
        }
      },
      success: (success) => success.copyWith(
        friendRequests: event.friendRequests,
      ),
    );
  }

  Stream<FriendsState> _mapUnreadFriendRequestsReceivedToState(
    UnreadFriendRequestsReceived event,
  ) async* {
    yield state.map(
      loading: (loading) {
        final allReceived = loading.friendRequests != null;
        if (allReceived) {
          return FriendsState.success(
            friendRequests: loading.friendRequests!,
            unreadFriendRequests: event.unreadFriendRequests,
          );
        } else {
          return loading.copyWith(
            unreadFriendRequests: event.unreadFriendRequests,
          );
        }
      },
      success: (success) => success.copyWith(
        unreadFriendRequests: event.unreadFriendRequests,
      ),
    );
  }

  Stream<FriendsState> _mapFailureReceivedToState(
    FailureReceived event,
  ) async* {
     // TODO implement
    // switch over failure types
  }

  @override
  Future<void> close() {
    _receivedFriendRequestStreamSubscription?.cancel();
    _unreadFriendRequestStreamSubscription?.cancel();
    return super.close();
  }
}
