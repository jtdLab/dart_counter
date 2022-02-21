import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/main/core/friends/friends_cubit.dart';
import 'package:dart_counter/application/main/core/game_invitations/game_invitations_cubit.dart';
import 'package:dart_counter/application/main/core/user/user_cubit.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

// TODO doc

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final UserCubit _userCubit;
  final FriendsCubit _friendsCubit;
  final GameInvitationsCubit _gameInvitationsCubit;

  HomeBloc(
    this._userCubit,
    this._friendsCubit,
    this._gameInvitationsCubit,
  ) : super(
          // Set initial state
          const HomeState.loadInProgress(),
        ) {
    // Register event handlers
    on<_Started>(
      (_, emit) async => _handleStarted(emit),
      transformer: restartable(),
    );
  }

  /// Returns instance registered inside getIt.
  factory HomeBloc.getIt(
    UserCubit userCubit,
    FriendsCubit friendsCubit,
    GameInvitationsCubit gameInvitationsCubit,
  ) =>
      getIt<HomeBloc>(param1: [userCubit, friendsCubit, gameInvitationsCubit]);

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of [UserCubit].
  ///
  /// 2. Instance of [FriendsCubit].
  ///
  /// 3. Instance of [GameInvitationsCubit].
  @factoryMethod
  factory HomeBloc.injectable(
    @factoryParam List<Object>? otherDependencies,
  ) =>
      HomeBloc(
        otherDependencies![0] as UserCubit,
        otherDependencies[1] as FriendsCubit,
        otherDependencies[2] as GameInvitationsCubit,
      );

  /// Handle incoming [_Started] event.
  Future<void> _handleStarted(
    Emitter<HomeState> emit,
  ) async {
    HomeState handleStates(
      UserState userState,
      FriendsState friendsState,
      GameInvitationsState gameInvitationsState,
    ) =>
        userState.when(
          loadInProgress: () => const HomeState.loadInProgress(),
          loadSuccess: (user) => friendsState.when(
            loadInProgress: () => const HomeState.loadInProgress(),
            loadSuccess: (_, receivedFriendRequests, __) =>
                gameInvitationsState.when(
              loadInProgress: () => const HomeState.loadInProgress(),
              loadSuccess: (receivedGameInvitations, _) =>
                  HomeState.loadSuccess(
                user: user,
                unreadFriendRequests:
                    receivedFriendRequests.count((element) => !element.read),
                unreadGameInvitations:
                    receivedGameInvitations.count((element) => !element.read),
              ),
              loadFailure: (_) => const HomeState.loadFailure(),
            ),
            loadFailure: (_) => const HomeState.loadFailure(),
          ),
          loadFailure: (_) => const HomeState.loadFailure(),
        );

    await Future.delayed(const Duration(milliseconds: 500));

    emit(
      handleStates(
        _userCubit.state,
        _friendsCubit.state,
        _gameInvitationsCubit.state,
      ),
    );

    await emit.forEach(
      CombineLatestStream<Object, HomeState>(
        [
          _userCubit.stream,
          _friendsCubit.stream,
          _gameInvitationsCubit.stream,
        ],
        (list) => handleStates(
          list[0] as UserState,
          list[1] as FriendsState,
          list[2] as GameInvitationsState,
        ),
      ),
      onData: id,
    );
  }

  /**
   * @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<HomeBloc>()) {
      getIt.resetLazySingleton<HomeBloc>();
    }

    return super.close();
  }
}
   */
}
