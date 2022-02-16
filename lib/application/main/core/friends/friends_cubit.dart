import 'dart:async';

import 'package:bloc/bloc.dart';
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

part 'friends_cubit.freezed.dart';
part 'friends_state.dart';

// TODO rename watcher
@injectable
class FriendsCubit extends Cubit<FriendsState> {
  final IFriendService _friendService;

  late StreamSubscription _subscription;

  FriendsCubit(this._friendService)
      : super(
          // Set initial state
          const FriendsState.loadInProgress(),
        ) {
    _subscription =
        CombineLatestStream<Either<FriendFailure, Object>, FriendsState>(
      [
        _friendService.watchFriends(),
        _friendService.watchReceivedFriendRequests(),
        _friendService.watchSentFriendRequests(),
      ],
      (list) {
        final friends = list[0] as Either<FriendFailure, KtList<Friend>>;
        final receivedFriendRequests =
            list[1] as Either<FriendFailure, KtList<FriendRequest>>;
        final sentFriendRequests =
            list[2] as Either<FriendFailure, KtList<FriendRequest>>;

        return friends.fold(
          (failure) => FriendsState.loadFailure(failure: failure),
          (friends) => receivedFriendRequests.fold(
            (failure) => FriendsState.loadFailure(failure: failure),
            (receivedFriendRequests) => sentFriendRequests.fold(
              (failure) => FriendsState.loadFailure(failure: failure),
              (sentFriendRequests) => FriendsState.loadSuccess(
                friends: friends,
                receivedFriendRequests: receivedFriendRequests,
                sentFriendRequests: sentFriendRequests,
              ),
            ),
          ),
        );
      },
    ).listen(emit);
  }

  /// Returns instance registered inside getIt.
  factory FriendsCubit.getIt() => getIt<FriendsCubit>();

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
