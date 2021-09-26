import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/domain/friend/i_friend_facade.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_facade.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> with AutoResetLazySingleton {
  final IUserFacade _userFacade;
  final IGameInvitationFacade _invitationFacade;
  final IFriendFacade _friendFacade;

  final PlayBloc _playBloc;

  StreamSubscription? _userSubscription;
  StreamSubscription? _unreadInvitationsSubscription;
  StreamSubscription? _unreadFriendRequestsSubscription;

  HomeBloc(
    this._userFacade,
    this._invitationFacade,
    this._friendFacade,
    this._playBloc,
  ) : super(
    // TODO initial state function
          _userFacade.getUser()?.fold(
                    (failure) => HomeState.failure(failure: failure),
                    (user) => _invitationFacade
                        .getReceivedGameInvitations()
                        ?.fold(
                          (failure) => HomeState.failure(failure: failure),
                          (receivedInvitations) => _invitationFacade
                              .getSentGameInvitations()
                              ?.fold(
                                (failure) =>
                                    HomeState.failure(failure: failure),
                                (sentInvitations) => _friendFacade
                                    .getFriends()
                                    ?.fold(
                                      (failure) =>
                                          HomeState.failure(failure: failure),
                                      (friends) => _friendFacade
                                          .getReceivedFriendRequests()
                                          ?.fold(
                                            (failure) => HomeState.failure(
                                              failure: failure,
                                            ),
                                            (receivedFriendRequests) =>
                                                _friendFacade
                                                    .getSentFriendRequests()
                                                    ?.fold(
                                                      (failure) =>
                                                          HomeState.failure(
                                                        failure: failure,
                                                      ),
                                                      (sentFriendRequests) => HomeState.loadSuccess(
                                                          user: user,
                                                          unreadInvitations:
                                                              receivedInvitations
                                                                  .iter
                                                                  .where((element) =>
                                                                      !element
                                                                          .read)
                                                                  .length,
                                                          unreadFriendRequests:
                                                              receivedFriendRequests
                                                                  .iter
                                                                  .where((element) =>
                                                                      !element
                                                                          .read)
                                                                  .length),
                                                    ),
                                          ),
                                    ),
                              ),
                        ),
                  ) ??
              const HomeState.loadInProgress(),
        ) {
    add(const HomeEvent.watchStarted());
  }

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield* event.map(
        watchStarted: (_) => _mapWatchStartedToState(),
        goToInvitationsPressed: (_) => _mapGoToInvitationsPressedToState(),
        goToFriendsPressed: (_) => _mapGoToFriendsPressedToState(),
        createOnlineGamePressed: (_) => _mapCreateOnlineGamePressedToState(),
        createOfflineGamePressed: (_) => _mapCreateOfflineGamePressedToState(),
        userReceived: (event) => _mapUserReceivedToState(event),
        gameReceived: (event) => _mapGameReceivedToState(event),
        unreadInvitationsReceived: (event) =>
            _mapUnreadInvitationsReceivedToState(event),
        unreadFriendRequestsReceived: (event) =>
            _mapUnreadFriendRequestsReceivedToState(event),
        failureReceived: (event) => _mapFailureReceivedToState(event));
  }

  Stream<HomeState> _mapWatchStartedToState() async* {
    await Future.delayed(const Duration(milliseconds: 500));
    _userSubscription = _userFacade.watchUser().listen(
          (failureOrUser) => failureOrUser.fold(
            (failure) => add(HomeEvent.failureReceived(failure: failure)),
            (user) => add(HomeEvent.userReceived(user: user)),
          ),
        );

    _unreadInvitationsSubscription =
        _invitationFacade.watchReceivedInvitations().listen(
              (failureOrInvitations) => failureOrInvitations.fold(
                (failure) => add(HomeEvent.failureReceived(failure: failure)),
                (invitations) => add(
                  HomeEvent.unreadInvitationsReceived(
                    unreadInvitations: invitations.iter
                        .where((element) => !element.read)
                        .length,
                  ),
                ),
              ),
            );

    _unreadFriendRequestsSubscription =
        _friendFacade.watchReceivedFriendRequests().listen(
              (failureOrFriendRequests) => failureOrFriendRequests.fold(
                (failure) => add(HomeEvent.failureReceived(failure: failure)),
                (friendRequests) => add(
                  HomeEvent.unreadFriendRequestsReceived(
                    unreadFriendRequests: friendRequests.iter
                        .where((element) => !element.read)
                        .length,
                  ),
                ),
              ),
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

  Stream<HomeState> _mapUserReceivedToState(
    UserReceived event,
  ) async* {
    final user = event.user;

    /**
   *   final state = this.state;
    if (state is HomeLoadInProgress) {
      final unreadInvitations = state.unreadInvitations;
      final unreadFriendRequests = state.unreadFriendRequests;
      if (unreadInvitations != null && unreadFriendRequests != null) {
          print('c');
            Future.delayed(const Duration(seconds: 5));
        yield HomeState.loadSuccess(
          user: user,
          unreadInvitations: unreadInvitations,
          unreadFriendRequests: unreadFriendRequests,
        );
      }

      yield state.copyWith(user: user);
    } else if (state is HomeLoadSuccess) {
      yield state.copyWith(user: user);
    } else {
      yield HomeState.loadInProgress(user: user);
    }
    */

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
      failure: (failure) => failure,
    );
  }

  Stream<HomeState> _mapGameReceivedToState(
    GameReceived event,
  ) async* {
    // TODO implement
    throw UnimplementedError();
  }

  Stream<HomeState> _mapUnreadInvitationsReceivedToState(
    UnreadInvitationsReceived event,
  ) async* {
    final unreadInvitations = event.unreadInvitations;

    /**
     * final state = this.state;
    if (state is HomeLoadInProgress) {
      final user = state.user;
      final unreadFriendRequests = state.unreadFriendRequests;
      if (user != null && unreadFriendRequests != null) {
        print('b');
        Future.delayed(const Duration(seconds: 5));
        yield HomeState.loadSuccess(
          user: user,
          unreadInvitations: unreadInvitations,
          unreadFriendRequests: unreadFriendRequests,
        );
      }

      yield state.copyWith(unreadInvitations: unreadInvitations);
    } else if (state is HomeLoadSuccess) {
      yield state.copyWith(
        unreadInvitations: unreadInvitations,
      );
    } else {
      yield HomeState.loadInProgress(unreadInvitations: unreadInvitations);
    }
     */

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
      failure: (failure) => failure,
    );
  }

  Stream<HomeState> _mapUnreadFriendRequestsReceivedToState(
    UnreadFriendRequestsReceived event,
  ) async* {
    final unreadFriendRequests = event.unreadFriendRequests;

/**
 * 
    final state = this.state;
    if (state is HomeLoadInProgress) {
      final user = state.user;
      final unreadInvitations = state.unreadInvitations;

      if (user != null && unreadInvitations != null) {
        print('a');
        Future.delayed(const Duration(seconds: 5));
        yield HomeState.loadSuccess(
          user: user,
          unreadInvitations: unreadInvitations,
          unreadFriendRequests: unreadFriendRequests,
        );
      }

      yield state.copyWith(
        unreadFriendRequests: unreadFriendRequests,
      );
    } else if (state is HomeLoadSuccess) {
      yield state.copyWith(
        unreadFriendRequests: unreadFriendRequests,
      );
    } else {
      yield HomeState.loadInProgress(
          unreadFriendRequests: unreadFriendRequests);
    }

 */

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
      failure: (failure) => failure,
    );
  }

  Stream<HomeState> _mapFailureReceivedToState(
    FailureReceived event,
  ) async* {
    yield HomeState.failure(failure: event.failure);
  }

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    _unreadInvitationsSubscription?.cancel();
    _unreadFriendRequestsSubscription?.cancel();
    return super.close();
  }
}
