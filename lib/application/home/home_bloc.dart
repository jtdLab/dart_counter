import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/friends/friends_bloc.dart';
import 'package:dart_counter/application/core/invitations/invitations_bloc.dart';
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/application/core/user/user_bloc.dart';
import 'package:dart_counter/domain/connectivity/i_connectivity_facade.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> with AutoResetLazySingleton {
  //final IUserFacade _userFacade;
  final UserBloc _userBloc;
  //final IGameInvitationFacade _invitationFacade;
  final InvitationsBloc _invitationsBloc;
  //final IFriendFacade _friendFacade;
  final FriendsBloc _friendsBloc;
  final PlayBloc _playBloc;

  StreamSubscription? _userSubscription;
  StreamSubscription? _unreadInvitationsSubscription;
  StreamSubscription? _unreadFriendRequestsSubscription;

  HomeBloc(
    this._userBloc,
    this._invitationsBloc,
    this._friendsBloc,
    this._playBloc,
  ) : super(const HomeState.loadInProgress()) {
    _userSubscription = _userBloc.stream.listen(
      (state) => state.map(
        loadInProgress: (_) {},
        loadSuccess: (success) => add(
          HomeEvent.userReceived(user: success.user),
        ),
        loadFailure: (_) => throw Error(), // TODO
      ),
    );

    _unreadInvitationsSubscription = _invitationsBloc.stream.listen(
      (state) => state.map(
        loadInProgress: (_) {},
        loadSuccess: (success) => add(
          HomeEvent.unreadInvitationsReceived(
            unreadInvitations: success.unreadInvitations,
          ),
        ),
        loadFailure: (_) => throw Error(), // TODO
      ),
    );

    _unreadFriendRequestsSubscription = _friendsBloc.stream.listen(
      (state) => state.map(
        loadInProgress: (_) {},
        loadSuccess: (success) => add(
          HomeEvent.unreadFriendRequestsReceived(
            unreadFriendRequests: success.unreadFriendRequests,
          ),
        ),
        loadFailure: (_) => throw Error(), // TODO
      ),
    );

    /**
    _userSubscription = _userFacade.watchUser().listen((failureOrUser) {
      return failureOrUser.fold(
        (failure) => throw Error(), // TODO
        (user) => add(HomeEvent.userReceived(user: user)),
      );
    });

    _unreadInvitationsSubscription = _invitationFacade
        .watchReceivedInvitations()
        .listen((failureOrInvitations) {
      return failureOrInvitations.fold(
        (failure) => throw Error(), // TODO
        (invitations) => add(
          HomeEvent.unreadInvitationsReceived(
            unreadInvitations:
                invitations.iter.where((element) => !element.read).length,
          ),
        ),
      );
    });

    _unreadFriendRequestsSubscription = _friendFacade
        .watchReceivedFriendRequests()
        .listen((failureOrFriendRequests) {
      return failureOrFriendRequests.fold(
        (failure) => throw Error(), // TODO
        (friendRequests) => add(
          HomeEvent.unreadFriendRequestsReceived(
            unreadFriendRequests:
                friendRequests.iter.where((element) => !element.read).length,
          ),
        ),
      );
    });
    */
  }

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
    // TODO remove maybe
  }

  Stream<HomeState> _mapGoToFriendsPressedToState() async* {
    // TODO remove maybe
  }

  Stream<HomeState> _mapCreateOnlineGamePressedToState() async* {
    _playBloc.add(
      const PlayEvent.gameCreated(online: true),
    );

    // TODO AKNKHKHDKHDSKHDSKDSH HIER HILEE
    final failureOrGame = (await _playBloc.stream.firstWhere(
      (element) => element is Success,
    ) as Success)
        .game;
  }

  Stream<HomeState> _mapCreateOfflineGamePressedToState() async* {
    _playBloc.add(
      const PlayEvent.gameCreated(online: false),
    );
  }

  Stream<HomeState> _mapUserReceivedToEvent(
    UserReceived event,
  ) async* {
    final user = event.user;

    yield state.map(
      loadInProgress: (loadInProgress) {
        final unreadInvitations = loadInProgress.unreadInvitations;
        final unreadFriendRequests = loadInProgress.unreadFriendRequests;
        if (unreadInvitations != null && unreadFriendRequests != null) {
          return HomeState.loadSuccess(
            user: user,
            unreadInvitations: unreadInvitations,
            unreadFriendRequests: unreadFriendRequests,
          );
        }

        return loadInProgress.copyWith(user: user);
      },
      loadSuccess: (loadSuccess) => loadSuccess.copyWith(user: user),
    );
  }

  Stream<HomeState> _mapGameReceivedToState(
    GameReceived event,
  ) async* {
    // TODO implement
    throw UnimplementedError();
  }

  Stream<HomeState> _mapUnreadInvitationsReceivedToEvent(
    UnreadInvitationsReceived event,
  ) async* {
    final unreadInvitations = event.unreadInvitations;

    yield state.map(
      loadInProgress: (loadInProgress) {
        final user = loadInProgress.user;
        final unreadFriendRequests = loadInProgress.unreadFriendRequests;
        if (user != null && unreadFriendRequests != null) {
          return HomeState.loadSuccess(
            user: user,
            unreadInvitations: unreadInvitations,
            unreadFriendRequests: unreadFriendRequests,
          );
        }

        return loadInProgress.copyWith(unreadInvitations: unreadInvitations);
      },
      loadSuccess: (loadSuccess) => loadSuccess.copyWith(
        unreadInvitations: unreadInvitations,
      ),
    );
  }

  Stream<HomeState> _mapUnreadFriendRequestsReceivedToEvent(
    UnreadFriendRequestsReceived event,
  ) async* {
    final unreadFriendRequests = event.unreadFriendRequests;

    yield state.map(
      loadInProgress: (loadInProgress) {
        final user = loadInProgress.user;
        final unreadInvitations = loadInProgress.unreadInvitations;

        if (user != null && unreadInvitations != null) {
          return HomeState.loadSuccess(
            user: user,
            unreadInvitations: unreadInvitations,
            unreadFriendRequests: unreadFriendRequests,
          );
        }

        return loadInProgress.copyWith(
          unreadFriendRequests: unreadFriendRequests,
        );
      },
      loadSuccess: (loadSuccess) => loadSuccess.copyWith(
        unreadFriendRequests: unreadFriendRequests,
      ),
    );
  }

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    _unreadInvitationsSubscription?.cancel();
    _unreadFriendRequestsSubscription?.cancel();
    return super.close();
  }
}
