import 'dart:async';

import 'package:bloc/bloc.dart';
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
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade _authFacade;
  final IUserFacade _userFacade;
  final IGameInvitationFacade _gameInvitationFacade;
  final IFriendFacade _friendFacade;

  SignInBloc(
    this._authFacade,
    this._userFacade,
    this._gameInvitationFacade,
    this._friendFacade,
  ) : super(SignInState.initial());

  StreamSubscription<Either<GameInvitationFailure, KtList<GameInvitation>>>?
      _invitationStreamSubscription;

  StreamSubscription<Either<FriendFailure, KtList<FriendRequest>>>?
      _friendRequestStreamSubscription;

  StreamSubscription<Either<UserFailure, User>>? _userStreamSubscription;

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    yield* event.map(
      watchStarted: (e) async* {
        _invitationStreamSubscription?.cancel();
        _friendRequestStreamSubscription?.cancel();
        _userStreamSubscription?.cancel();

        print('2');
        print(getIt<FirebaseAuth>().currentUser?.uid);
        _invitationStreamSubscription =
            _gameInvitationFacade.watchReceivedInvitations().listen(
          (failureOrInvitations) {
            failureOrInvitations.fold(
              (failure) => add(const SignInEvent.failureReceived()),
              (invitations) => add(
                const SignInEvent.invitationsReceived(),
              ),
            );
          },
        );

        _friendRequestStreamSubscription =
            _friendFacade.watchFriendRequests().listen(
          (failureOrFriendRequests) {
            failureOrFriendRequests.fold(
              (failure) => add(const SignInEvent.failureReceived()),
              (friendRequests) => add(
                const SignInEvent.friendRequestsReceived(),
              ),
            );
          },
        );

        _userStreamSubscription = _userFacade.watchCurrentUser().listen(
          (failureOrUser) {
            failureOrUser.fold(
              (failure) => add(const SignInEvent.failureReceived()),
              (user) => add(
                const SignInEvent.userReceived(),
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
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordString),
          authFailureOrSuccess: null,
        );
      },
      signInPressed: (e) async* {
        Either<AuthFailure, Unit>? authFailureOrSuccess;
        final isEmailValid = state.email.isValid();
        final isPasswordValid = state.password.isValid();
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccess: null,
        );

        if (isEmailValid && isPasswordValid) {
          authFailureOrSuccess = await _authFacade.singInWithEmailAndPassword(
              emailAddress: state.email, password: state.password);
        } else {
          authFailureOrSuccess =
              left(const AuthFailure.invalidEmailAndPasswordCombination());
        }

        yield state.copyWith(
          isSubmitting: authFailureOrSuccess.isRight(),
          showErrorMessages: true,
          authFailureOrSuccess: authFailureOrSuccess,
        );
        if (authFailureOrSuccess.isRight()) {
          print('1');
          print(getIt<FirebaseAuth>().currentUser?.uid);
          add(const SignInEvent.watchStarted());
        }
      },
      signInWithFacebookPressed: (e) async* {
        final authFailureOrSuccess = await _authFacade.signInWithFacebook();
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccess: authFailureOrSuccess,
        );
        if (authFailureOrSuccess.isRight()) {
          add(const SignInEvent.watchStarted());
        }
      },
      signInWithGooglePressed: (e) async* {
        final authFailureOrSuccess = await _authFacade.signInWithGoogle();
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccess: authFailureOrSuccess,
        );
        if (authFailureOrSuccess.isRight()) {
          add(const SignInEvent.watchStarted());
        }
      },
      signInWithApplePressed: (e) async* {
        final authFailureOrSuccess = await _authFacade.signInWithApple();
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccess: authFailureOrSuccess,
        );
        if (authFailureOrSuccess.isRight()) {
          add(const SignInEvent.watchStarted());
        }
      },
      invitationsReceived: (_) => _mapInvitationsReceivedToState(),
      friendRequestsReceived: (_) => _mapFriendRequestsReceivedToState(),
      userReceived: (_) => _mapUserReceivedToState(),
      failureReceived: (_) => _mapFailureReceivedToState(),
    );
  }

  Stream<SignInState> _mapInvitationsReceivedToState() async* {
    yield state.copyWith(
      invitationsReceived: true,
    );
  }

  Stream<SignInState> _mapFriendRequestsReceivedToState() async* {
    yield state.copyWith(
      friendRequestsReceived: true,
    );
  }

  Stream<SignInState> _mapUserReceivedToState() async* {
    yield state.copyWith(
      userReceived: true,
    );
  }

  Stream<SignInState> _mapFailureReceivedToState() async* {
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
