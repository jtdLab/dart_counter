import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/application_error.dart';
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
            friends: _friendService.getFriends().getOrElse(
                  () => throw ApplicationError.unexpectedMissingData(),
                ),
            receivedFriendRequests:
                _friendService.getReceivedFriendRequests().getOrElse(
                      () => throw ApplicationError.unexpectedMissingData(),
                    ),
            sentFriendRequests:
                _friendService.getSentFriendRequests().getOrElse(
                      () => throw ApplicationError.unexpectedMissingData(),
                    ),
          ),
        ) {
    on<Started>((_, emit) async => _mapStartedToState(emit));
    on<FriendSelected>((event, emit) => _mapFriendSelectedToState(event, emit));
    on<FriendRequestAccepted>(
      (event, emit) => _mapFriendRequestAcceptedToState(event),
    );
    on<FriendRequestDeclined>(
      (event, emit) => _mapFriendRequestDeclinedToState(event),
    );
  }

  Future<void> _mapStartedToState(
    Emitter<FriendsState> emit,
  ) async {
    // TODO is this the correct location ?
    // TODO does this belong to application or infra atm its infra
    _friendService.markReceivedFriendRequestsAsRead();

    final dataStream = CombineLatestStream(
      [
        _friendService.watchFriends(),
        _friendService.watchReceivedFriendRequests(),
        _friendService.watchSentFriendRequests(),
      ],
      (events) => events,
    );

    // TODO test if this gets canceld on first error occurence
    await emit.forEach(
      dataStream,
      onData: (List data) {
        final failureOrFriends =
            data[0]! as Either<FriendFailure, KtList<Friend>>;
        final failureOrReceivedFriendRequests =
            data[1]! as Either<FriendFailure, KtList<FriendRequest>>;
        final failureOrSentFriendRequests =
            data[2]! as Either<FriendFailure, KtList<FriendRequest>>;

        // TODO load photos here or in infra layer ??

        return state.copyWith(
          friends: failureOrFriends
              .getOrElse(() => throw ApplicationError.unexpectedMissingData()),
          receivedFriendRequests: failureOrReceivedFriendRequests
              .getOrElse(() => throw ApplicationError.unexpectedMissingData()),
          sentFriendRequests: failureOrSentFriendRequests
              .getOrElse(() => throw ApplicationError.unexpectedMissingData()),
        );
      },
    );
  }

  // TODO maybe check if event.friend is element of friends or just use index instead of selectedFriend ??
  void _mapFriendSelectedToState(
    FriendSelected event,
    Emitter<FriendsState> emit,
  ) =>
      emit(state.copyWith(selectedFriend: event.friend));

  void _mapFriendRequestAcceptedToState(
    FriendRequestAccepted event,
  ) {
    // TODO await result ??
    _friendService.acceptFriendRequest(friendRequest: event.friendRequest);
  }

  void _mapFriendRequestDeclinedToState(
    FriendRequestDeclined event,
  ) {
    // TODO await result ??
    _friendService.declineFriendRequest(friendRequest: event.friendRequest);
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
