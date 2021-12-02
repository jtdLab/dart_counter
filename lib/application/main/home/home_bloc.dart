import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/main/training/training_bloc.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_service.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/offline/i_play_offline_service.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dart_counter/domain/training/abstract_training_game_snapshot.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';
import 'package:async/async.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> with AutoResetLazySingleton {
  final IPlayOfflineService _playOfflineService;
  final IPlayOnlineService _playOnlineService;

  final IUserService _userService;
  final IGameInvitationService _gameInvitationService;
  final IFriendService _friendService;

  HomeBloc(
    this._playOfflineService,
    this._playOnlineService,
    this._userService,
    this._gameInvitationService,
    this._friendService,
  ) : super(const HomeState.loadInProgress()) {
    on<_WatchDataStarted>(
      (event, emit) async {
        await emit.forEach(
          CombineLatestStream(
            [
              _userService.watchUser(),
              _gameInvitationService.watchReceivedGameInvitations(),
              _friendService.watchReceivedFriendRequests(),
            ],
            (data) => Tuple3(
              data[0]! as Either<UserFailure, User>,
              data[1]! as Either<GameInvitationFailure, KtList<GameInvitation>>,
              data[2]! as Either<FriendFailure, KtList<FriendRequest>>,
            ),
          ).asyncMap(
            (data) async {
              final failureOrUser = data.value1;
              final failureOrReceivedGameInvitations = data.value2;
              final failureOrReceivedFriendRequests = data.value3;

              if (failureOrUser.isLeft()) {
                return const HomeState.loadFailure();
              } else if (failureOrReceivedGameInvitations.isLeft()) {
                return const HomeState.loadFailure();
              } else if (failureOrReceivedFriendRequests.isLeft()) {
                return const HomeState.loadFailure();
              } else {
                final user = failureOrUser.toOption().toNullable()!;
                final photoUrl = user.profile.photoUrl;
                if (photoUrl != null) {
                  await _fetchImage(url: photoUrl);
                }

                return HomeState.loadSuccess(
                  user: user,
                  unreadInvitations: failureOrReceivedGameInvitations
                      .toOption()
                      .toNullable()!
                      .iter
                      .where((element) => !element.read)
                      .length,
                  unreadFriendRequests: failureOrReceivedFriendRequests
                      .toOption()
                      .toNullable()!
                      .iter
                      .where((element) => !element.read)
                      .length,
                );
              }
            },
          ),
          onData: id,
        );
      },
      transformer: restartable(),
    );
    on<_CreateOnlineGamePressed>(
      (event, emit) async => _mapCreateOnlineGamePressedToState(event, emit),
    );
    on<_CreateOfflineGamePressed>(
      (event, emit) async => _mapCreateOfflineGamePressedToState(event, emit),
    );
    on<_CreateTrainingPressed>(_mapCreateTrainingPressedToState);

    add(const HomeEvent.watchDataStarted());
  }

  Future<void> _mapCreateOnlineGamePressedToState(
    _CreateOnlineGamePressed event,
    Emitter<HomeState> emit,
  ) async {
    await state.mapOrNull(
      loadSuccess: (loadSuccess) async {
        emit(const HomeState.loadInProgress());

        // TODO move to service ?
        await Future.delayed(const Duration(seconds: 1));

        final failureOrGameSnapshot = await _playOnlineService.createGame();
        failureOrGameSnapshot.fold(
          (failure) {
            emit(loadSuccess);
          },
          (gameSnapshot) {
            emit(loadSuccess.copyWith(gameSnapshot: gameSnapshot));
          },
        );
      },
    );
  }

  Future<void> _mapCreateOfflineGamePressedToState(
    _CreateOfflineGamePressed event,
    Emitter<HomeState> emit,
  ) async {
    await state.mapOrNull(
      loadSuccess: (loadSuccess) async {
        final failureOrGameSnapshot = _playOfflineService.createGame(
          owner: loadSuccess.user,
        );
        (await failureOrGameSnapshot).fold(
          (failure) {
            emit(loadSuccess);
          },
          (gameSnapshot) {
            emit(loadSuccess.copyWith(gameSnapshot: gameSnapshot));
          },
        );
      },
    );
  }

  void _mapCreateTrainingPressedToState(
    _CreateTrainingPressed event,
    Emitter<HomeState> emit,
  ) {
    // TODO
    /**
     * state.mapOrNull(
      loadSuccess: (loadSuccess) {
        final failureOrTrainingGameSnapshot = _traingService.createGame(
          owner: loadSuccess.user,
        );
        failureOrTrainingGameSnapshot.fold(
          (failure) {
            emit(loadSuccess);
          },
          (trainingGameSnapshot) {
            emit(loadSuccess.copyWith(trainingGameSnapshot: trainingGameSnapshot));
          },
        );
      },
    );
     */
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
