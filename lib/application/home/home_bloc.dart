import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/application/core/friends/friends_bloc.dart';
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/application/core/invitations/invitations_bloc.dart';
import 'package:dart_counter/application/core/user/user_bloc.dart';
import 'package:dart_counter/domain/friend/i_friend_facade.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_facade.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> with AutoResetLazySingleton {
  final IGameInvitationFacade _gameInvitationFacade;
  final IFriendFacade _friendFacade;

  final UserBloc _userBloc;
  final PlayBloc _playBloc;
  final InvitationsBloc _invitationsBloc;
  final FriendsBloc _friendsBloc;

  HomeBloc(
    this._gameInvitationFacade,
    this._friendFacade,
    this._userBloc,
    this._playBloc,
    this._invitationsBloc,
    this._friendsBloc,
  ) : super(
          HomeState(
            user: _userBloc.state.map(
              loading: (_) => throw UnexpectedStateError(),
              success: (success) => success.user,
            ),
            unreadInvitations: _invitationsBloc.state.map(
              loading: (_) => throw UnexpectedStateError(),
              success: (success) => success.unreadInvitations,
            ),
            unreadFriendRequests: _friendsBloc.state.map(
              loading: (_) => throw UnexpectedStateError(),
              success: (success) => success.unreadFriendRequests,
            ),
          ),
        ) {
    _userSubscription = _userBloc.stream.map((state) {
      return state.map(
        loading: (_) => throw UnexpectedStateError(),
        success: (success) => success.user,
      );
    }).listen((user) {
      add(HomeEvent.userReceived(user: user));
    });

    _gameSubscription = _playBloc.stream.map((state) {
      return state.map(
        loading: (_) => null,
        success: (success) => success.game,
      );
    }).listen((game) {
      if (game != null) {
        add(HomeEvent.gameReceived(game: game));
      }
    });

    // TODO _unreadInvitationsSubscription ODER _unreadFriendRequestsSubscription
  }

  StreamSubscription<User>? _userSubscription;

  StreamSubscription<GameSnapshot?>? _gameSubscription;

  StreamSubscription<int>? _unreadInvitationsSubscription;

  StreamSubscription<int>? _unreadFriendRequestsSubscription;

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield* event.map(
      goToInvitationsPressed: (_) => _mapGoToInvitationsPressedToState(),
      goToFriendsPressed: (_) => _mapGoToFriendsPressedToState(),
      createOnlineGamePressed: (_) => _mapCreateOnlineGamePressedToState(),
      createOfflineGamePressed: (_) => _mapCreateOfflineGamePressedToState(),
      userReceived: (event) => _mapUserReceivedToEvent(event),
      gameReceived: (event) => _mapGameReceivedToState(event),
      unreadInvitationsReceived: (event) =>
          _mapUnreadInvitationsReceivedToEvent(event),
      unreadFriendRequestsReceived: (event) =>
          _mapUnreadFriendRequestsReceivedToEvent(event),
    );
  }

  Stream<HomeState> _mapGoToInvitationsPressedToState() async* {
    _gameInvitationFacade.markGameInvitationsAsRead();
  }

  Stream<HomeState> _mapGoToFriendsPressedToState() async* {
    _friendFacade.markFriendRequestsAsRead();
  }

  Stream<HomeState> _mapCreateOnlineGamePressedToState() async* {
    _playBloc.add(
      const PlayEvent.gameCreated(online: true),
    );
  }

  Stream<HomeState> _mapCreateOfflineGamePressedToState() async* {
    _playBloc.add(
      const PlayEvent.gameCreated(online: false),
    );
  }

  Stream<HomeState> _mapUserReceivedToEvent(
    UserReceived event,
  ) async* {
    yield state.copyWith(user: event.user);
  }

  Stream<HomeState> _mapGameReceivedToState(
    GameReceived event,
  ) async* {
    yield state.copyWith(game: event.game);
  }

  Stream<HomeState> _mapUnreadInvitationsReceivedToEvent(
    UnreadInvitationsReceived event,
  ) async* {
    yield state.copyWith(unreadInvitations: event.unreadInvitations);
  }

  Stream<HomeState> _mapUnreadFriendRequestsReceivedToEvent(
    UnreadFriendRequestsReceived event,
  ) async* {
    yield state.copyWith(unreadFriendRequests: event.unreadFriendRequests);
  }

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    _gameSubscription?.cancel();
    _unreadInvitationsSubscription?.cancel();
    _unreadFriendRequestsSubscription?.cancel();
    return super.close();
  }
}
