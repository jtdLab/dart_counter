import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
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

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final IAuthFacade _authFacade;
  final IUserFacade _userFacade;
  final IGameInvitationFacade _gameInvitationFacade;
  final IFriendFacade _friendFacade;

  SignUpBloc(
    this._authFacade,
    this._userFacade,
    this._gameInvitationFacade,
    this._friendFacade,
  ) : super(SignUpState.initial());

  StreamSubscription<Either<GameInvitationFailure, KtList<GameInvitation>>>?
      _invitationStreamSubscription;

  StreamSubscription<Either<FriendFailure, KtList<FriendRequest>>>?
      _friendRequestStreamSubscription;

  StreamSubscription<Either<UserFailure, User>>? _userStreamSubscription;

  @override
  Stream<SignUpState> mapEventToState(
    SignUpEvent event,
  ) async* {
    yield* event.map(
      watchStarted: (e) async* {
        _invitationStreamSubscription =
            _gameInvitationFacade.watchReceivedInvitations().listen(
          (failureOrInvitations) {
            failureOrInvitations.fold(
              (failure) => add(const SignUpEvent.failureReceived()),
              (invitations) => add(
                const SignUpEvent.invitationsReceived(),
              ),
            );
          },
        );

        _friendRequestStreamSubscription =
            _friendFacade.watchFriendRequests().listen(
          (failureOrFriendRequests) {
            failureOrFriendRequests.fold(
              (failure) => add(const SignUpEvent.failureReceived()),
              (friendRequests) => add(
                const SignUpEvent.friendRequestsReceived(),
              ),
            );
          },
        );

        _userStreamSubscription = _userFacade.watchCurrentUser().listen(
          (failureOrUser) {
            failureOrUser.fold(
              (failure) => add(const SignUpEvent.failureReceived()),
              (user) => add(
                const SignUpEvent.userReceived(),
              ),
            );
          },
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          email: EmailAddress(e.emailString),
          authFailureOrSuccess: null,
        );
      },
      usernameChanged: (e) async* {
        yield state.copyWith(
          username: Username(e.usernameString),
          authFailureOrSuccess: null,
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordString),
          authFailureOrSuccess: null,
        );
      },
      passwordAgainChanged: (e) async* {
        yield state.copyWith(
          passwordAgain: Password(e.passwordAgainString),
          authFailureOrSuccess: null,
        );
      },
      signUpPressed: (e) async* {
        Either<AuthFailure, Unit>? authFailureOrSuccess;
        final isEmailValid = state.email.isValid();
        final isUsernameValid = state.username.isValid();
        final isPasswordValid = state.password.isValid();
        final isPasswordAgainValid = state.passwordAgain.isValid();
        final passwordsMatch = state.password == state.passwordAgain;

        if (isEmailValid &&
            isUsernameValid &&
            isPasswordValid &&
            isPasswordAgainValid &&
            passwordsMatch) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccess: null,
          );
          authFailureOrSuccess =
              await _authFacade.singUpWithEmailAndUsernameAndPassword(
            emailAddress: state.email,
            username: state.username,
            password: state.password,
          );
        }

        yield state.copyWith(
          isSubmitting: authFailureOrSuccess?.isRight() ?? false,
          showErrorMessages: true,
          authFailureOrSuccess: authFailureOrSuccess,
        );
      },
      invitationsReceived: (_) => _mapInvitationsReceivedToState(),
      friendRequestsReceived: (_) => _mapFriendRequestsReceivedToState(),
      userReceived: (_) => _mapUserReceivedToState(),
      failureReceived: (_) => _mapFailureReceivedToState(),
    );
  }

  Stream<SignUpState> _mapInvitationsReceivedToState() async* {
    yield state.copyWith(
      invitationsReceived: true,
    );
  }

  Stream<SignUpState> _mapFriendRequestsReceivedToState() async* {
    yield state.copyWith(
      friendRequestsReceived: true,
    );
  }

  Stream<SignUpState> _mapUserReceivedToState() async* {
    yield state.copyWith(
      userReceived: true,
    );
  }

  Stream<SignUpState> _mapFailureReceivedToState() async* {
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
