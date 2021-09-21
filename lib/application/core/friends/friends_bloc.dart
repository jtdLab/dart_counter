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

  StreamSubscription<Either<FriendFailure, KtList<FriendRequest>>>?
      _receivedFriendRequestSubscription;

  StreamSubscription<Either<FriendFailure, KtList<FriendRequest>>>?
      _sentFriendRequestSubscription;

  FriendsBloc(
    this._friendFacade,
  ) : super(
          const FriendsState.loadInProgress(),
        ) {
    add(
      const FriendsEvent.watchStarted(),
    );
  }

  @override
  Stream<FriendsState> mapEventToState(
    FriendsEvent event,
  ) async* {
    yield* event.map(
      watchStarted: (_) => _mapWatchStartedToState(),
      receivedFriendRequestsReceived: (event) =>
          _mapReceivedFriendRequestsReceivedToState(event),
      sentFriendRequestsReceived: (event) =>
          _mapSentFriendRequestsReceivedToState(event),
      failureReceived: (event) => _mapFailureReceivedToState(event),
    );
  }

  Stream<FriendsState> _mapWatchStartedToState() async* {
    _receivedFriendRequestSubscription = _friendFacade
        .watchReceivedFriendRequests()
        .listen((failureOrFriendRequests) {
      failureOrFriendRequests.fold(
        (failure) => add(
          FriendsEvent.failureReceived(
            failure: failure,
          ),
        ),
        (friendRequests) => add(
          FriendsEvent.receivedFriendRequestsReceived(
            friendRequests: friendRequests,
          ),
        ),
      );
    });

    _sentFriendRequestSubscription = _friendFacade
        .watchSentFriendRequests()
        .listen((failureOrFriendRequests) {
      failureOrFriendRequests.fold(
        (failure) => add(
          FriendsEvent.failureReceived(
            failure: failure,
          ),
        ),
        (friendRequests) => add(
          FriendsEvent.sentFriendRequestsReceived(
            friendRequests: friendRequests,
          ),
        ),
      );
    });
  }

  Stream<FriendsState> _mapReceivedFriendRequestsReceivedToState(
    ReceivedFriendRequestsReceived event,
  ) async* {
    final receivedFriendRequests = event.friendRequests;

    yield state.map(
      loadInProgress: (loadInProgress) {
        final sentFriendRequests = loadInProgress.sentFriendRequests;
        if (sentFriendRequests != null) {
          return FriendsState.loadSuccess(
            receivedFriendRequests: receivedFriendRequests,
            sentFriendRequests: sentFriendRequests,
            unreadFriendRequests: receivedFriendRequests.iter
                .where((element) => !element.read)
                .length,
          );
        }

        return loadInProgress.copyWith(
          receivedFriendRequests: receivedFriendRequests,
        );
      },
      loadSuccess: (success) => success.copyWith(
        receivedFriendRequests: receivedFriendRequests,
      ),
      loadFailure: (loadFailure) => loadFailure, // TODO is that good solution
    );
  }

  Stream<FriendsState> _mapSentFriendRequestsReceivedToState(
    SentFriendRequestsReceived event,
  ) async* {
    final sentFriendRequests = event.friendRequests;

    yield state.map(
      loadInProgress: (loadInProgress) {
        final receivedFriendRequests = loadInProgress.receivedFriendRequests;
        if (receivedFriendRequests != null) {
          return FriendsState.loadSuccess(
            receivedFriendRequests: receivedFriendRequests,
            sentFriendRequests: sentFriendRequests,
            unreadFriendRequests: receivedFriendRequests.iter
                .where((element) => !element.read)
                .length,
          );
        }

        return loadInProgress.copyWith(
          sentFriendRequests: sentFriendRequests,
        );
      },
      loadSuccess: (success) => success.copyWith(
        sentFriendRequests: sentFriendRequests,
      ),
      loadFailure: (loadFailure) => loadFailure, // TODO is that good solution
    );
  }

  Stream<FriendsState> _mapFailureReceivedToState(
    FailureReceived event,
  ) async* {
    yield FriendsState.loadFailure(failure: event.failure);
  }

  @override
  Future<void> close() {
    _receivedFriendRequestSubscription?.cancel();
    _sentFriendRequestSubscription?.cancel();
    return super.close();
  }
}
