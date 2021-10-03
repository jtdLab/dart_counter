import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/data_watcher/data_watcher_bloc.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/i_friend_facade.dart';
import 'package:dart_counter/injection.dart';
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

  final DataWatcherBloc _dataWatcherBloc;

  StreamSubscription? _dataWatcherSubscription;

  FriendsBloc(
    this._friendFacade,
    this._dataWatcherBloc,
  ) : super(
          _dataWatcherBloc.state.maybeMap(
            loadSuccess: (loadSuccess) => FriendsState.initial(
              friends: loadSuccess.friends,
              receivedFriendRequests: loadSuccess.receivedFriendRequests,
              sentFriendRequests: loadSuccess.sentFriendRequests,
            ),
            orElse: () => throw Error(), // TODO name better
          ),
        ) {
    _dataWatcherSubscription =
        _dataWatcherBloc.stream.listen((dataWatcherState) {
      if (dataWatcherState is DataWatcherLoadSuccess) {
        add(
          FriendsEvent.dataReceived(
            friends: dataWatcherState.friends,
            receivedFriendRequests: dataWatcherState.receivedFriendRequests,
            sentFriendRequests: dataWatcherState.sentFriendRequests,
          ),
        );
      }
    });

    _friendFacade.markReceivedFriendRequestsAsRead();
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
    _friendFacade.acceptFriendRequest(friendRequest: event.friendRequest);
  }

  Stream<FriendsState> _mapFriendRequestDeclinedToState(
    FriendsFriendRequestDeclined event,
  ) async* {
    _friendFacade.declineFriendRequest(friendRequest: event.friendRequest);
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
    _dataWatcherSubscription?.cancel();

    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<FriendsBloc>()) {
      getIt.resetLazySingleton<FriendsBloc>();
    }
    
    return super.close();
  }
}
