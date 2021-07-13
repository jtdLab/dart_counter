import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/i_friend_facade.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_facade.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

@lazySingleton
class SplashBloc extends Bloc<SplashEvent, SplashState>
    with AutoResetLazySingleton {
  final IGameInvitationFacade _gameInvitationFacade;
  final IFriendFacade _friendFacade;
  final IUserFacade _userFacade;

  SplashBloc(
    this._gameInvitationFacade,
    this._friendFacade,
    this._userFacade,
  ) : super(
          const SplashState.initial(),
        );

  StreamSubscription<Either<GameInvitationFailure, KtList<GameInvitation>>>?
      _invitationStreamSubscription;

  StreamSubscription<Either<FriendFailure, KtList<FriendRequest>>>?
      _friendRequestStreamSubscription;

  StreamSubscription<Either<UserFailure, User>>? _userStreamSubscription;

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    yield* event.map(
      watchStarted: (_) => _mapWatchStartedToState(),
      invitationsReceived: (_) => _mapInvitationsReceivedToState(),
      friendRequestsReceived: (_) => _mapFriendRequestsReceivedToState(),
      userReceived: (_) => _mapUserReceivedToState(),
      failureReceived: (_) => _mapFailureReceivedToState(),
    );
  }

  Stream<SplashState> _mapWatchStartedToState() async* {
    final failureOrUser = await _userFacade.readCurrentUser();

    yield* failureOrUser.fold(
      (failure) async* {
        yield const SplashState.unauthenticated();
      },
      (user) async* {
        yield const SplashState.authenticated(
          invitationsReceived: false,
          friendRequestsReceived: false,
          userReceived: false,
        );

        _invitationStreamSubscription =
            _gameInvitationFacade.watchReceivedInvitations().listen(
          (failureOrInvitations) {
            failureOrInvitations.fold(
              (failure) => add(const SplashEvent.failureReceived()),
              (invitations) => add(
                const SplashEvent.invitationsReceived(),
              ),
            );
          },
        );

        _friendRequestStreamSubscription =
            _friendFacade.watchFriendRequests().listen(
          (failureOrFriendRequests) {
            failureOrFriendRequests.fold(
              (failure) => add(const SplashEvent.failureReceived()),
              (friendRequests) => add(
                const SplashEvent.friendRequestsReceived(),
              ),
            );
          },
        );

        _userStreamSubscription = _userFacade.watchCurrentUser().listen(
          (failureOrUser) {
            failureOrUser.fold(
              (failure) => add(const SplashEvent.failureReceived()),
              (user) => add(
                const SplashEvent.userReceived(),
              ),
            );
          },
        );
      },
    );
  }

  Stream<SplashState> _mapInvitationsReceivedToState() async* {
    yield state.maybeMap(
      authenticated: (authenticated) {
        return authenticated.copyWith(
          invitationsReceived: true,
        );
      },
      orElse: () => throw Error(), // speficy to Unexpected bloc state error
    );
  }

  Stream<SplashState> _mapFriendRequestsReceivedToState() async* {
    yield state.maybeMap(
      authenticated: (authenticated) {
        return authenticated.copyWith(
          friendRequestsReceived: true,
        );
      },
      orElse: () => throw Error(), // speficy to Unexpected bloc state error
    );
  }

  Stream<SplashState> _mapUserReceivedToState() async* {
    yield state.maybeMap(
      authenticated: (authenticated) {
        return authenticated.copyWith(
          userReceived: true,
        );
      },
      orElse: () => throw Error(), // speficy to Unexpected bloc state error
    );
  }

  Stream<SplashState> _mapFailureReceivedToState() async* {
    // TODO implement
    throw UnimplementedError();
  }

  @override
  Future<void> close() {
    _invitationStreamSubscription?.cancel();
    _friendRequestStreamSubscription?.cancel();
    _userStreamSubscription?.cancel();
    return super.close();
  }
}
