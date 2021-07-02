import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/i_friend_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'friends_event.dart';
part 'friends_state.dart';
part 'friends_bloc.freezed.dart';

@injectable
class FriendsBloc extends Bloc<FriendsEvent, FriendsState> {
  final IFriendFacade _friendFacade;

  FriendsBloc(this._friendFacade)
      : super(
          FriendsState(
            friendRequests: _friendFacade
                .watchFriendRequests()
                .valueWrapper! // TODO
                .value
                .fold(
                  (failure) => throw Error(), // TODO
                  (friendRequests) => friendRequests,
                ),
          ),
        );

  StreamSubscription<Either<FriendFailure, KtList<FriendRequest>>>?
      _friendRequestsStreamSubscription;

  @override
  Stream<FriendsState> mapEventToState(
    FriendsEvent event,
  ) async* {
    yield* event.map(
      watchStarted: (_) => _mapWatchStartedToEvent(),
      friendRequestsReceived: (event) =>
          _mapFriendRequestsReceivedToEvent(event),
    );
  }

  Stream<FriendsState> _mapWatchStartedToEvent() async* {
    _friendRequestsStreamSubscription =
        _friendFacade.watchFriendRequests().listen((failureOrFriendRequests) {
      failureOrFriendRequests.fold(
        (failure) => throw Error(), // TODO
        (friendRequests) => add(
          FriendsEvent.friendRequestsReceived(
            friendRequests: friendRequests,
          ),
        ),
      );
    });
  }

  Stream<FriendsState> _mapFriendRequestsReceivedToEvent(
      FriendRequestsReceived event) async* {
    yield state.copyWith(friendRequests: event.friendRequests);
  }
}
