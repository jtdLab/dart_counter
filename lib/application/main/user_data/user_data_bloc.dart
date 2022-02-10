import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_service.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

part 'user_data_bloc.freezed.dart';
part 'user_data_event.dart';
part 'user_data_state.dart';

@injectable
class UserDataBloc extends Bloc<UserDataEvent, UserDataState> {
  final IUserService _userService;
  final IFriendService _friendService;
  final IGameInvitationService _gameInvitationService;

  UserDataBloc(
    this._userService,
    this._friendService,
    this._gameInvitationService,
  ) : super(
          // Set initial state
          const UserDataState.loadInProgress(),
        ) {
    // Register event handlers
    on<_Started>(
      (_, emit) async => _handleStarted(emit),
      transformer: restartable(),
    );
  }

  /// Handle incoming [_Started] event.
  Future<void> _handleStarted(
    Emitter<UserDataState> emit,
  ) async {
    emit.forEach<
        Tuple5<
            Either<UserFailure, User>,
            Either<FriendFailure, KtList<FriendRequest>>,
            Either<FriendFailure, KtList<FriendRequest>>,
            Either<GameInvitationFailure, KtList<GameInvitation>>,
            Either<GameInvitationFailure, KtList<GameInvitation>>>>(
      CombineLatestStream(
        [
          _userService.watchUser(),
          _friendService.watchReceivedFriendRequests(),
          _friendService.watchSentFriendRequests(),
          _gameInvitationService.watchReceivedGameInvitations(),
          _gameInvitationService.watchSentInvitations(),
        ],
        (list) => Tuple5(
          list[0]! as Either<UserFailure, User>,
          list[1]! as Either<FriendFailure, KtList<FriendRequest>>,
          list[2]! as Either<FriendFailure, KtList<FriendRequest>>,
          list[3]! as Either<GameInvitationFailure, KtList<GameInvitation>>,
          list[4]! as Either<GameInvitationFailure, KtList<GameInvitation>>,
        ),
      ),
      onData: (tuple5) {
        final failureOrUser = tuple5.value1;
        final failureOrReceivedFriendRequests = tuple5.value2;
        final failureOrSentFriendRequests = tuple5.value3;
        final failureOrReceivedGameInvitations = tuple5.value4;
        final failureOrSentGameInvitations = tuple5.value5;

        return failureOrUser.fold(
          (_) => const UserDataState.loadFailure(),
          (user) => failureOrReceivedFriendRequests.fold(
            (_) => const UserDataState.loadFailure(),
            (receivedFriendRequests) => failureOrSentFriendRequests.fold(
              (_) => const UserDataState.loadFailure(),
              (sentFriendRequests) => failureOrReceivedGameInvitations.fold(
                (_) => const UserDataState.loadFailure(),
                (receivedGameInvitations) => failureOrSentGameInvitations.fold(
                  (_) => const UserDataState.loadFailure(),
                  (sentGameInvitations) => UserDataLoadSuccess(
                    user: user,
                    receivedFriendRequests: receivedFriendRequests,
                    sentFriendRequests: sentFriendRequests,
                    receivedGameInvitations: receivedGameInvitations,
                    sentGameInvitations: sentGameInvitations,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
