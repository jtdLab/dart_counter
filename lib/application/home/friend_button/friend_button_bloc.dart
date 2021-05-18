import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/i_friend_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'friend_button_event.dart';
part 'friend_button_state.dart';
part 'friend_button_bloc.freezed.dart';

@injectable
class FriendButtonBloc extends Bloc<FriendButtonEvent, FriendButtonState> {
  final IFriendFacade _friendFacade;

  FriendButtonBloc(this._friendFacade)
      : super(const FriendButtonState.noData());

  StreamSubscription<Either<FriendFailure, KtList<FriendRequest>>>?
      _friendRequestStreamSubscription;

  @override
  Stream<FriendButtonState> mapEventToState(
    FriendButtonEvent event,
  ) async* {
    yield* event.map(
      watchDataStarted: (e) async* {
        _friendRequestStreamSubscription = _friendFacade
            .watchFriendRequests()
            .listen(
              (failureOrFriendRequests) =>
                  add(FriendButtonEvent.dataReceived(failureOrFriendRequests)),
            );
      },
      dataReceived: (e) async* {
        yield e.failureOrFriendRequest.fold(
          (f) => const FriendButtonState.noData(),
          (friendRequests) => FriendButtonState.data(
            newFriendRequests: friendRequests.size, // TODO only new
          ),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _friendRequestStreamSubscription?.cancel();
    return super.close();
  }
}