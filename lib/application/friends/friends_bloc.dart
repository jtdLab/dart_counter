import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

part 'friends_bloc.freezed.dart';
part 'friends_event.dart';
part 'friends_state.dart';

@lazySingleton
class FriendsBloc extends Bloc<FriendsEvent, FriendsState>
    with AutoResetLazySingleton {
  final IFriendService _friendService;

  StreamSubscription? _dataSubscription;

  FriendsBloc(
    this._friendService,
  ) : super(
          FriendsState.initial(
            friends: _friendService.getFriends().toOption().toNullable()!,
            receivedFriendRequests: _friendService
                .getReceivedFriendRequests()
                .toOption()
                .toNullable()!,
            sentFriendRequests:
                _friendService.getSentFriendRequests().toOption().toNullable()!,
          ),
        ) {
    final dataStream = CombineLatestStream(
      [
        _friendService.watchFriends(),
        _friendService.watchReceivedFriendRequests(),
        _friendService.watchSentFriendRequests(),
      ],
      (events) => events,
    );

    _dataSubscription = dataStream.listen((data) async {
      final failureOrFriends =
          data[0]! as Either<FriendFailure, KtList<Friend>>;
      final failureOrReceivedFriendRequests =
          data[1]! as Either<FriendFailure, KtList<FriendRequest>>;
      final failureOrSentFriendRequests =
          data[2]! as Either<FriendFailure, KtList<FriendRequest>>;

      if (failureOrFriends.isLeft()) {
        // yield load failure state
      } else if (failureOrReceivedFriendRequests.isLeft()) {
        // yield load failure state
      } else if (failureOrSentFriendRequests.isLeft()) {
        // yield load failure state
      } else {
        // TODO load photos

        add(
          FriendsEvent.dataReceived(
            friends: failureOrFriends.toOption().toNullable()!,
            receivedFriendRequests:
                failureOrReceivedFriendRequests.toOption().toNullable()!,
            sentFriendRequests:
                failureOrSentFriendRequests.toOption().toNullable()!,
          ),
        );
      }
    });

    _friendService.markReceivedFriendRequestsAsRead();
  }

  @override
  Stream<FriendsState> mapEventToState(
    FriendsEvent event,
  ) async* {
    yield* event.map(
      friendSelected: (event) => _mapFriendSelectedToState(event),
      friendRequestAccepted: (event) => _mapFriendRequestAcceptedToState(event),
      friendRequestDeclined: (event) => _mapFriendRequestDeclinedToState(event),
      dataReceived: (event) => _mapDataReceivedToState(event),
    );
  }

  Stream<FriendsState> _mapFriendSelectedToState(
    FriendsFriendSelected event,
  ) async* {
    yield state.copyWith(selectedFriend: event.friend);
  }

  Stream<FriendsState> _mapFriendRequestAcceptedToState(
    FriendsFriendRequestAccepted event,
  ) async* {
    _friendService.acceptFriendRequest(friendRequest: event.friendRequest);
  }

  Stream<FriendsState> _mapFriendRequestDeclinedToState(
    FriendsFriendRequestDeclined event,
  ) async* {
    _friendService.declineFriendRequest(friendRequest: event.friendRequest);
  }

  Stream<FriendsState> _mapDataReceivedToState(
    FriendsDataReceived event,
  ) async* {
    yield state.copyWith(
      friends: event.friends,
      receivedFriendRequests: event.receivedFriendRequests,
      sentFriendRequests: event.sentFriendRequests,
    );
  }

  @override
  Future<void> close() {
    _dataSubscription?.cancel();

    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<FriendsBloc>()) {
      getIt.resetLazySingleton<FriendsBloc>();
    }

    return super.close();
  }
}
