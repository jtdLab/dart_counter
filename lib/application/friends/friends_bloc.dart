import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/i_friend_facade.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'friends_event.dart';
part 'friends_state.dart';
part 'friends_bloc.freezed.dart';

@lazySingleton
class FriendsBloc extends Bloc<FriendsEvent, FriendsState>
    with AutoResetLazySingleton {
  final IFriendFacade _friendFacade;

  FriendsBloc(
    this._friendFacade,
  ) : super(
          FriendsState(
            friends: _friendFacade.getFriends()?.fold(
                      (failure) => throw Error(), // TODO log
                      (friends) => friends,
                    ) ??
                (throw Error()),
            receivedFriendRequests:
                _friendFacade.getReceivedFriendRequests()?.fold(
                          (failure) => throw Error(), // TODO log
                          (receivedFriendRequests) => receivedFriendRequests,
                        ) ??
                    (throw Error()),
            sentFriendRequests: _friendFacade.getSentFriendRequests()?.fold(
                      (failure) => throw Error(), // TODO log
                      (sentFriendRequests) => sentFriendRequests,
                    ) ??
                (throw Error()),
          ),
        );

  @override
  Stream<FriendsState> mapEventToState(
    FriendsEvent event,
  ) async* {
    yield* event.map(
      friendSelected: (event) => _mapFriendSelectedToState(event),
    );
  }

  Stream<FriendsState> _mapFriendSelectedToState(
    FriendSelected event,
  ) async* {
    yield state.copyWith(selectedFriend: event.friend);
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
