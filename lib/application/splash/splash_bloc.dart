import 'dart:async';

import 'package:bloc/bloc.dart';
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

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final IGameInvitationFacade _gameInvitationFacade;
  final IFriendFacade _friendFacade;
  final IUserFacade _userFacade;

  SplashBloc(this._gameInvitationFacade, this._friendFacade, this._userFacade)
      : super(
          SplashState(
            invitationsReceived: _gameInvitationFacade
                    .watchReceivedInvitations()
                    .valueWrapper
                    ?.value
                    .fold(
                      (failure) => throw Error(), // TODO
                      (invitations) => true,
                    ) ??
                false,
            friendRequestsReceived:
                _friendFacade.watchFriendRequests().valueWrapper?.value.fold(
                          (failure) => throw Error(), // TODO
                          (friendRequests) => true,
                        ) ??
                    false,
            userReceived:
                _userFacade.watchCurrentUser().valueWrapper?.value.fold(
                          (failure) => throw Error(), // TODO
                          (user) => true,
                        ) ??
                    false,
          ),
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
      watchStarted: (_) => _mapWatchStartedToEvent(),
      invitationsReceived: (event) => _mapInvitationsReceivedToEvent(event),
      friendRequestsReceived: (event) =>
          _mapFriendRequestsReceivedToEvent(event),
      userReceived: (event) => _mapUserReceivedToEvent(event),
      failureReceived: (_) => _mapFailureReceivedToEvent(),
    );
  }

  Stream<SplashState> _mapWatchStartedToEvent() async* {
    _invitationStreamSubscription =
        _gameInvitationFacade.watchReceivedInvitations().listen(
      (failureOrInvitations) {
        failureOrInvitations.fold(
          (failure) => add(const SplashEvent.failureReceived()),
          (invitations) => add(
            SplashEvent.invitationsReceived(
              gameInvitations: invitations,
            ),
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
            SplashEvent.friendRequestsReceived(
              friendRequests: friendRequests,
            ),
          ),
        );
      },
    );

    _userStreamSubscription = _userFacade.watchCurrentUser().listen(
      (failureOrUser) {
        failureOrUser.fold(
          (failure) => add(const SplashEvent.failureReceived()),
          (user) => add(
            SplashEvent.userReceived(
              user: user,
            ),
          ),
        );
      },
    );
  }

  Stream<SplashState> _mapInvitationsReceivedToEvent(
      InvitationsReceived event) async* {
    yield state.copyWith(
      invitationsReceived: true,
    );
  }

  Stream<SplashState> _mapFriendRequestsReceivedToEvent(
      FriendRequestsReceived event) async* {
    yield state.copyWith(
      friendRequestsReceived: true,
    );
  }

  Stream<SplashState> _mapUserReceivedToEvent(UserReceived event) async* {
    yield state.copyWith(
      userReceived: true,
    );
  }

  Stream<SplashState> _mapFailureReceivedToEvent() async* {
    throw Error(); // TODO
  }

  @override
  Future<void> close() {
    _invitationStreamSubscription?.cancel();
    _friendRequestStreamSubscription?.cancel();
    _userStreamSubscription?.cancel();
    return super.close();
  }
}
