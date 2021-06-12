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

  HomeBloc(this._friendFacade, this._gameInvitationFacade, this._userFacade)
      : super(const HomeState.loadInProgess());

  StreamSubscription<void>? _dataStreamSubscription;

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield* event.map(
      // TODO not clean to return a object list maybe do this in a more readable and understandable manner
      watchDataStarted: (e) async* {
        _dataStreamSubscription =
            _friendFacade.watchFriendRequests().withLatestFrom2(
          _gameInvitationFacade.watchReceivedInvitations(),
          _userFacade.watchCurrentUser(),
          (
            Either<FriendFailure, KtList<FriendRequest>>
                failureOrFriendRequests,
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

            if (friendRequests == null ||
                gameInvitations == null ||
                user == null) {
              return null;
            } else {
              return [friendRequests, gameInvitations, user];
            }
          },
        ).listen(
          (event) {
            add(HomeEvent.dataReceived(event));
          },
        );
      },
      dataReceived: (e) async* {
        if (state is LoadInProgess) {
          await Future.delayed(const Duration(seconds: 1));
        }
        final data = e.data;
        if (data != null) {
          final friendRequests = data[0] as KtList<FriendRequest>;
          final gameInvitations = data[1] as KtList<GameInvitation>;
          final user = data[2] as User;
          yield HomeState.loadSuccess(
            friendRequests: friendRequests,
            gameInvitation: gameInvitations,
            user: user,
          );
        } else {
          yield const HomeState.loadFailure();
        }
      },
    );
  }

  /**
  *  @override
  void onTransition(Transition<HomeEvent, HomeState> transition) {
    print(transition.nextState);
    super.onTransition(transition);
  }
  */

  @override
  Future<void> close() async {
    await _dataStreamSubscription?.cancel();
    return super.close();
  }
}
