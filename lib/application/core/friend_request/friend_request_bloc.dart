import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/i_friend_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'friend_request_event.dart';
part 'friend_request_state.dart';
part 'friend_request_bloc.freezed.dart';

@injectable
class FriendRequestBloc extends Bloc<FriendRequestEvent, FriendRequestState> {
  final IFriendFacade _friendFacade;

  FriendRequestBloc(this._friendFacade)
      : super(const FriendRequestState.loadInProgress());

  StreamSubscription<Either<FriendFailure, KtList<FriendRequest>>>?
      _friendRequestsStreamSubscription;

  @override
  Stream<FriendRequestState> mapEventToState(
    FriendRequestEvent event,
  ) async* {
    yield* event.map(
      watchStarted: (_) => _mapWatchStartedToEvent(),
      friendRequestsReceived: (event) =>
          _mapFriendRequestsReceivedToEvent(event),
      failureReceived: (_) => _mapFailureReceivedToEvent(),
      newInvitationsRead: (_) => _mapNewInvitationsReadToEvent(),
    );
  }

  Stream<FriendRequestState> _mapWatchStartedToEvent() async* {
    _friendFacade.watchFriendRequests().listen((failureOrFriendRequests) {
      failureOrFriendRequests.fold(
        (failure) => add(const FriendRequestEvent.failureReceived()),
        (friendRequests) => add(
          FriendRequestEvent.friendRequestsReceived(
            friendRequests: friendRequests,
          ),
        ),
      );
    });
  }

  Stream<FriendRequestState> _mapFriendRequestsReceivedToEvent(
      FriendRequestsReceived event) async* {
    yield FriendRequestState.loadSuccess(friendRequests: event.friendRequests);
  }

  Stream<FriendRequestState> _mapFailureReceivedToEvent() async* {
    yield const FriendRequestState.loadFailure();
  }

  Stream<FriendRequestState> _mapNewInvitationsReadToEvent() async* {
    final mutableFriendRequests =
        (state as LoadSuccess).friendRequests.toMutableList();
    final List<FriendRequest> friendRequests = [];

    mutableFriendRequests.forEach((friendRequest) {
      friendRequests.add(friendRequest.copyWith(read: true));
    });

    yield FriendRequestState.loadSuccess(
      friendRequests: KtList.from(friendRequests),
    );
  }

  @override
  Future<void> close() {
    _friendRequestsStreamSubscription?.cancel();
    return super.close();
  }
}
