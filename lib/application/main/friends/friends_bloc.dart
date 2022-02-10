import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/core/application_error.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'friends_bloc.freezed.dart';
part 'friends_event.dart';
part 'friends_state.dart';

@injectable
class FriendsBloc extends Bloc<FriendsEvent, FriendsState> {
  final IFriendService _friendService;

  FriendsBloc(
    this._friendService,
  ) : super(
          // Set inital state
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
    // Register event handlers
    on<_Started>(
      (_, emit) async => _handleStarted(emit),
      transformer: restartable(), // TODO test
    );
    on<_FriendSelected>(
      (event, emit) => _handleFriendSelected(event, emit),
    );
    on<_FriendRequestAccepted>(
      (event, emit) => _handleFriendRequestAccepted(event),
    );
    on<_FriendRequestDeclined>(
      (event, emit) => _handleFriendRequestDeclined(event),
    );
  }

  /// Handle incoming [_Started] event.
  Future<void> _handleStarted(
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

  /// Handle incoming [_FriendSelected] event.
  // TODO maybe check if event.friend is element of friends or just use index instead of selectedFriend ??
  void _handleFriendSelected(
    _FriendSelected event,
    Emitter<FriendsState> emit,
  ) =>
      emit(state.copyWith(selectedFriend: event.friend));

  /// Handle incoming [_FriendRequestAccepted] event.
  void _handleFriendRequestAccepted(
    _FriendRequestAccepted event,
  ) {
    // TODO await result ??
    _friendService.acceptFriendRequest(friendRequest: event.friendRequest);
  }

  /// Handle incoming [_FriendRequestDeclined] event.
  void _handleFriendRequestDeclined(
    _FriendRequestDeclined event,
  ) {
    // TODO await result ??
    _friendService.declineFriendRequest(friendRequest: event.friendRequest);
  }

  /**
   * @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<FriendsBloc>()) {
      getIt.resetLazySingleton<FriendsBloc>();
    }

    return super.close();
  }
   */
}
