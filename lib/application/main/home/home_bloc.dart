import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dart_counter/application/core/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_service.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart'; // TODO shouldnt be here
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> with AutoResetLazySingleton {
  final IUserService _userService;
  final IGameInvitationService _gameInvitationService;
  final IFriendService _friendService;

  HomeBloc(
    this._userService,
    this._gameInvitationService,
    this._friendService,
  ) : super(const HomeState.loadInProgress()) {
    on<_Started>(
      (_, emit) async => _mapWatchDataStartedToState(emit),
      transformer: restartable(),
    );
  }

  Future<void> _mapWatchDataStartedToState(
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loadInProgress());
    await emit.forEach(
      CombineLatestStream(
        [
          _userService.watchUser(),
          _gameInvitationService.watchReceivedGameInvitations(),
          _friendService.watchReceivedFriendRequests(),
        ],
        (list) => Tuple3(
          list[0]! as Either<UserFailure, User>,
          list[1]! as Either<GameInvitationFailure, KtList<GameInvitation>>,
          list[2]! as Either<FriendFailure, KtList<FriendRequest>>,
        ),
      ).asyncMap(
        (tuple3) async {
          final failureOrUser = tuple3.value1;

          if (failureOrUser.isRight()) {
            // TODO better error
            final user = failureOrUser.getOrElse(() => throw Error());
            final photoUrl = user.profile.photoUrl;
            if (photoUrl != null) {
              await _fetchImage(url: photoUrl);
            }
          }

          return tuple3;
        },
      ),
      onData: (
        Tuple3<
                Either<UserFailure, User>,
                Either<GameInvitationFailure, KtList<GameInvitation>>,
                Either<FriendFailure, KtList<FriendRequest>>>
            data,
      ) {
        final failureOrUser = data.value1;
        final failureOrReceivedGameInvitations = data.value2;
        final failureOrReceivedFriendRequests = data.value3;

        if (state is HomeLoadInProgress) {
          if (failureOrUser.isLeft()) {
            return const HomeState.loadFailure();
          } else if (failureOrReceivedGameInvitations.isLeft()) {
            return const HomeState.loadFailure();
          } else if (failureOrReceivedFriendRequests.isLeft()) {
            return const HomeState.loadFailure();
          }
        }

        return HomeState.loadSuccess(
          // TODO better Error
          user: failureOrUser.getOrElse(() => throw Error()),
          unreadGameInvitations: failureOrReceivedGameInvitations
              // TODO better Error
              .getOrElse(() => throw Error())
              .count((element) => !element.read),
          unreadFriendRequests: failureOrReceivedFriendRequests
              // TODO better Error
              .getOrElse(() => throw Error())
              .count((element) => !element.read),
        );
      },
    );
  }

  // TODO move this to repo layer or keep here
  /// Loads and caches image located at [url].
  Future<void> _fetchImage({
    required String url,
  }) async {
    final Completer<void> completer = Completer<void>();
    final provider = CachedNetworkImageProvider(url);
    provider.resolve(ImageConfiguration.empty).addListener(
      ImageStreamListener((image, synchronousCall) {
        completer.complete();
      }),
    );

    await completer.future;
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<HomeBloc>()) {
      getIt.resetLazySingleton<HomeBloc>();
    }

    return super.close();
  }
}
