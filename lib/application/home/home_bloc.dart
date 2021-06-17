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
import 'package:rxdart/rxdart.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IFriendFacade _friendFacade;
  final IGameInvitationFacade _gameInvitationFacade;
  final IUserFacade _userFacade;

  HomeBloc(
    this._friendFacade,
    this._gameInvitationFacade,
    this._userFacade,
  ) : super(const HomeState.initial());

  StreamSubscription<void>? _dataStreamSubscription;

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield* event.map(
      watchDataStarted: (_) => _mapWatchDataStartedToState(),
      dataReceived: (event) => _mapDataReceivedToState(event),
      failureReceived: (_) => _mapFailureReceivedToState(),
    );
  }

  Stream<HomeState> _mapWatchDataStartedToState() async* {
    _dataStreamSubscription =
        _friendFacade.watchFriendRequests().withLatestFrom2(
      _gameInvitationFacade.watchReceivedInvitations(),
      _userFacade.watchCurrentUser(),
      (
        Either<FriendFailure, KtList<FriendRequest>> failureOrFriendRequests,
        Either<GameInvitationFailure, KtList<GameInvitation>>
            failureOrGameInvitations,
        Either<UserFailure, User> failureOrUser,
      ) {
        final friendRequests = failureOrFriendRequests.fold(
          (l) => null,
          (r) => r,
        );
        final gameInvitations = failureOrGameInvitations.fold(
          (l) => null,
          (r) => r,
        );
        final user = failureOrUser.fold(
          (l) => null,
          (r) => r,
        );

        if (friendRequests == null || gameInvitations == null || user == null) {
          return null;
        } else {
          return [friendRequests, gameInvitations, user];
        }
      },
    ).listen(
      (data) {
        if (data != null) {
          final friendRequests = data[0] as KtList<FriendRequest>;
          final gameInvitations = data[1] as KtList<GameInvitation>;
          final user = data[2] as User;
          add(HomeEvent.dataReceived(
            friendRequests: friendRequests,
            gameInvitations: gameInvitations,
            user: user,
          ));
        } else {
          add(const HomeEvent.failureReceived());
        }
      },
    );
  }

  Stream<HomeState> _mapDataReceivedToState(DataReceived event) async* {
    yield HomeState.loadSuccess(
      friendRequests: event.friendRequests,
      gameInvitations: event.gameInvitations,
      user: event.user,
    );
  }

  Stream<HomeState> _mapFailureReceivedToState() async* {}

  @override
  Future<void> close() async {
    await _dataStreamSubscription?.cancel();
    return super.close();
  }
}
