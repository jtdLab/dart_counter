import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/i_friend_facade.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_facade.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/play/i_play_facade.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IGameInvitationFacade _gameInvitationFacade;
  final IFriendFacade _friendFacade;
  final IUserFacade _userFacade;
  final IPlayFacade _playFacade;

  HomeBloc(this._gameInvitationFacade, this._friendFacade, this._userFacade,
      this._playFacade)
      : super(
          HomeState(
            unreadReceivedInvitations:
                _gameInvitationFacade.watchUnreadInvitations().valueWrapper !=
                        null
                    ? _gameInvitationFacade
                        .watchUnreadInvitations()
                        .valueWrapper!
                        .value
                        .fold(
                          (failure) => throw Error(), // TODO
                          (receivedInvitations) => receivedInvitations,
                        )
                    : throw Error(), // TODO
            unreadFriendRequests:
                _friendFacade.watchUnreadFriendRequests().valueWrapper != null
                    ? _friendFacade
                        .watchUnreadFriendRequests()
                        .valueWrapper!
                        .value
                        .fold(
                          (failure) => throw Error(), // TODO
                          (friendRequests) => friendRequests,
                        )
                    : throw Error(), // TODO
            user: _userFacade.watchCurrentUser().valueWrapper != null
                ? _userFacade.watchCurrentUser().valueWrapper!.value.fold(
                      (failure) => throw Error(), // TODO
                      (user) => user,
                    )
                : throw Error(), // TODO
          ),
        );

  StreamSubscription<Either<GameInvitationFailure, int>>?
      _unreadReceivedInvitationsSubscription;

  StreamSubscription<Either<FriendFailure, int>>?
      _unreadFriendRequestsSubscription;

  StreamSubscription<Either<UserFailure, User>>? _userSubscription;

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield* event.map(
      watchStarted: (_) => _mapWatchStartedToState(),
      unreadInvitationsReceived: (event) =>
          _mapUnreadInvitationsReceivedToState(event),
      unreadFriendRequestsReceived: (event) =>
          _mapUnreadFriendRequestsReceivedToState(event),
      userReceived: (event) => _mapUserReceivedToState(event),
      gameCreated: (event) => _mapGameCreatedToState(),
      goToInvitationsPressed: (_) => _mapGoToInvitationsPressedToState(),
      goToFriendsPressed: (_) => _mapGoToFriendsPressedToState(),
      createOnlineGamePressed: (_) => _mapCreateOnlineGamePressedToState(),
      createOfflineGamePressed: (_) => _mapCreateOfflineGamePressedToState(),
    );
  }

  Stream<HomeState> _mapWatchStartedToState() async* {
    _unreadReceivedInvitationsSubscription =
        _gameInvitationFacade.watchUnreadInvitations().listen(
      (failureOrUnreadInvitations) {
        failureOrUnreadInvitations.fold(
          (failure) => throw Error(), // TODO
          (unreadInvitations) => add(
            HomeEvent.unreadInvitationsReceived(
              unreadInvitations: unreadInvitations,
            ),
          ),
        );
      },
    );

    _unreadFriendRequestsSubscription =
        _friendFacade.watchUnreadFriendRequests().listen(
      (failureOrUnreadFriendRequests) {
        failureOrUnreadFriendRequests.fold(
          (failure) => throw Error(), // TODO
          (unreadFriendRequests) => add(
            HomeEvent.unreadFriendRequestsReceived(
              unreadFriendRequests: unreadFriendRequests,
            ),
          ),
        );
      },
    );

    _userSubscription = _userFacade.watchCurrentUser().listen(
      (failureOrUser) {
        failureOrUser.fold(
          (failure) => throw Error(), // TODO
          (user) => add(
            HomeEvent.userReceived(
              user: user,
            ),
          ),
        );
      },
    );
  }

  Stream<HomeState> _mapUnreadInvitationsReceivedToState(
      UnreadInvitationsReceived event) async* {
    yield state.copyWith(unreadReceivedInvitations: event.unreadInvitations);
  }

  Stream<HomeState> _mapUnreadFriendRequestsReceivedToState(
      UnreadFriendRequestsReceived event) async* {
    yield state.copyWith(unreadFriendRequests: event.unreadFriendRequests);
  }

  Stream<HomeState> _mapUserReceivedToState(UserReceived event) async* {
    yield state.copyWith(user: event.user);
  }

  Stream<HomeState> _mapGameCreatedToState() async* {
    final game = _playFacade.game;
    yield state.copyWith(game: game);
  }

  Stream<HomeState> _mapGoToInvitationsPressedToState() async* {
    _gameInvitationFacade.markGameInvitationsAsRead();
  }

  Stream<HomeState> _mapGoToFriendsPressedToState() async* {
    _friendFacade.markFriendRequestsAsRead();
  }

  Stream<HomeState> _mapCreateOnlineGamePressedToState() async* {
    // TODO load
    final failurOrUnit = await _playFacade.createGame(online: true);
    failurOrUnit.fold(
      (failure) => throw Error(), // TODO
      (_) => add(const HomeEvent.gameCreated()),
    );
  }

  Stream<HomeState> _mapCreateOfflineGamePressedToState() async* {
    final failurOrUnit = await _playFacade.createGame(online: false);
    failurOrUnit.fold(
      (failure) => throw Error(), // TODO
      (_) => add(const HomeEvent.gameCreated()),
    );
  }

  @override
  Future<void> close() {
    _unreadReceivedInvitationsSubscription?.cancel();
    _unreadFriendRequestsSubscription?.cancel();
    _userSubscription?.cancel();
    return super.close();
  }
}
