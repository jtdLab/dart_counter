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

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IFriendFacade _friendFacade;
  final IGameInvitationFacade _gameInvitationFacade;
  final IUserFacade _userFacade;

  HomeBloc(this._friendFacade, this._gameInvitationFacade, this._userFacade)
      : super(const HomeState(error: false, loading: true));

  StreamSubscription<Either<FriendFailure, KtList<FriendRequest>>>?
      _friendRequestStreamSubscription;

  StreamSubscription<Either<GameInvitationFailure, KtList<GameInvitation>>>?
      _invitationStreamSubscription;

  StreamSubscription<Either<UserFailure, User>>? _userStreamSubscription;

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield* event.map(
      watchDataStarted: (e) async* {
        _friendRequestStreamSubscription = _friendFacade
            .watchFriendRequests()
            .listen(
              (failureOrFriendRequests) => add(
                  HomeEvent.friendRequestsReceived(failureOrFriendRequests)),
            );
        _invitationStreamSubscription =
            _gameInvitationFacade.watchReceivedInvitations().listen(
                  (failureOrInvitations) =>
                      add(HomeEvent.invitationsReceived(failureOrInvitations)),
                );
        _userStreamSubscription = _userFacade.watchCurrentUser().listen(
              (failureOrUser) => add(HomeEvent.userReceived(failureOrUser)),
            );
      },
      friendRequestsReceived: (e) async* {
        yield e.failureOrFriendRequests.fold(
          (f) => state.copyWith(error: true),
          (friendRequests) => state.copyWith(
              loading: state.newGameInvitations == null || state.user == null,
              newFriendRequests: friendRequests.size), // TODO only new
        );
      },
      invitationsReceived: (e) async* {
        yield e.failureOrInvitations.fold(
          (f) => state.copyWith(error: true),
          (invitations) => state.copyWith(
              loading: state.newFriendRequests == null || state.user == null,
              newGameInvitations: invitations.size), // TODO only new
        );
      },
      userReceived: (e) async* {
        yield e.failureOrUser.fold(
          (f) => state.copyWith(error: true),
          (user) => state.copyWith(
              loading: state.newFriendRequests == null ||
                  state.newGameInvitations == null,
              user: user),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _friendRequestStreamSubscription?.cancel();
    await _invitationStreamSubscription?.cancel();
    await _userStreamSubscription?.cancel();
    return super.close();
  }
}
