import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
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

part 'friends_bloc.freezed.dart';
part 'friends_event.dart';
part 'friends_state.dart';

@lazySingleton
class FriendsBloc extends Bloc<FriendsEvent, FriendsState>
    with AutoResetLazySingleton {
  final IFriendService _friendService;

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
    on<_Started>(
      (_, emit) async => _mapStartedToState(emit),
      transformer: restartable(),
    );
    on<_FriendSelected>(
      (event, emit) => _mapFriendSelectedToState(event, emit),
    );
    on<_FriendRequestAccepted>(
      (event, emit) => _mapFriendRequestAcceptedToState(event),
    );
    on<_FriendRequestDeclined>(
      (event, emit) => _mapFriendRequestDeclinedToState(event),
    );
  }

  Future<void> _mapStartedToState(
    Emitter<FriendsState> emit,
  ) async {
    // TODO is this the correct location ?
    // TODO does this belong to application or infra atm its infra
    // TODOD this is wrong becaus it waits to every stream emit at leas 1 value
    _friendService.markReceivedFriendRequestsAsRead();

    // TODO load photos here or in infra layer ??

    await Future.wait(
      [
        emit.forEach(
          _friendService.watchFriends(),
          onData: (Either<FriendFailure, KtList<Friend>> failureOrFriends) =>
              state.copyWith(
            friends: failureOrFriends.getOrElse(
              () => throw ApplicationError
                  .unexpectedMissingData(), // TODO thats no dev error
            ),
          ),
        ),
        emit.forEach(
          _friendService.watchReceivedFriendRequests(),
          onData: (
            Either<FriendFailure, KtList<FriendRequest>>
                failureOrReceivedFriendRequests,
          ) =>
              state.copyWith(
            receivedFriendRequests: failureOrReceivedFriendRequests.getOrElse(
              () => throw ApplicationError
                  .unexpectedMissingData(), // TODO thats no dev error
            ),
          ),
        ),
        emit.forEach(
          _friendService.watchSentFriendRequests(),
          onData: (
            Either<FriendFailure, KtList<FriendRequest>>
                failureOrSentFriendRequests,
          ) =>
              state.copyWith(
            sentFriendRequests: failureOrSentFriendRequests.getOrElse(
              () => throw ApplicationError
                  .unexpectedMissingData(), // TODO thats no dev error
            ),
          ),
        ),
      ],
      eagerError: true,
    );
  }

  // TODO maybe check if event.friend is element of friends or just use index instead of selectedFriend ??
  void _mapFriendSelectedToState(
    _FriendSelected event,
    Emitter<FriendsState> emit,
  ) =>
      emit(state.copyWith(selectedFriend: event.friend));

  void _mapFriendRequestAcceptedToState(
    _FriendRequestAccepted event,
  ) {
    // TODO await result ??
    _friendService.acceptFriendRequest(friendRequest: event.friendRequest);
  }

  void _mapFriendRequestDeclinedToState(
    _FriendRequestDeclined event,
  ) {
    // TODO await result ??
    _friendService.declineFriendRequest(friendRequest: event.friendRequest);
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<FriendsBloc>()) {
      getIt.resetLazySingleton<FriendsBloc>();
    }

    return super.close();
  }
}
