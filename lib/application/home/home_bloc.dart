import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/application/training/training_bloc.dart';
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

  final PlayBloc _playBloc;
  final TrainingBloc _trainingBloc;

  StreamSubscription? _dataSubscription;
  StreamSubscription? _gameSnapshotsSubscription;
  StreamSubscription? _trainingGameSnapshotsSubscription;

  HomeBloc(
    this._playOfflineService,
    this._playOnlineService,
    this._userService,
    this._gameInvitationService,
    this._friendService,
    this._playBloc,
    this._trainingBloc,
  ) : super(const HomeState.loadInProgress()) {
    final dataStream = CombineLatestStream(
      [
        _userService.watchUser(),
        _gameInvitationService.watchReceivedGameInvitations(),
        _friendService.watchReceivedFriendRequests(),
      ],
      (events) => events,
    );

    _dataSubscription = dataStream.listen((data) async {
      final failureOrUser = data[0]! as Either<UserFailure, User>;
      final failureOrReceivedGameInvitations =
          data[1]! as Either<GameInvitationFailure, KtList<GameInvitation>>;
      final failureOrReceivedFriendRequests =
          data[2]! as Either<FriendFailure, KtList<FriendRequest>>;

      if (failureOrUser.isLeft()) {
        // yield load failure state
      } else if (failureOrReceivedGameInvitations.isLeft()) {
        // yield load failure state
      } else if (failureOrReceivedFriendRequests.isLeft()) {
        // yield load failure state
      } else {
        final user = failureOrUser.toOption().toNullable()!;
        final photoUrl = user.profile.photoUrl;
        if (photoUrl != null) {
          await _fetchImage(url: photoUrl);
        }

        add(
          HomeEvent.dataReceived(
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
          ),
        );
      }
    });

    _gameSnapshotsSubscription = _playBloc.stream.listen((playState) {
      if (playState is PlayGameInProgress) {
        final gameSnapshot = playState.gameSnapshot;
        add(HomeEvent.gameReceived(gameSnapshot: gameSnapshot));
      }
    });

    _trainingGameSnapshotsSubscription =
        _trainingBloc.stream.listen((trainingState) {
      if (trainingState is TrainingInitial) {
        final gameSnapshot = trainingState.gameSnapshot;
        add(HomeEvent.trainingGameReceived(trainingGameSnapshot: gameSnapshot));
      }
    });
  }

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield* event.map(
      createOnlineGamePressed: (_) => _mapCreateOnlineGamePressedToState(),
      createOfflineGamePressed: (_) => _mapCreateOfflineGamePressedToState(),
      dataReceived: (event) => _mapDataReceivedToState(event),
      gameReceived: (event) => _mapGameReceivedToState(event),
      trainingGameReceived: (event) => _mapTrainingGameReceivedToState(event),
    );
  }

  Stream<HomeState> _mapCreateOnlineGamePressedToState() async* {
    yield* state.maybeMap(
      loadSuccess: (loadSuccess) async* {
        yield const HomeState.loadInProgress();

        await Future.delayed(const Duration(seconds: 1));
        final failureOrUnit = await _playOnlineService.createGame();

        yield* failureOrUnit.fold(
          (failure) async* {
            yield loadSuccess;
          },
          (_) async* {
            _playBloc.add(
              const PlayEvent.gameCreated(online: true),
            );
          },
        );
      },
      orElse: () async* {},
    );
  }

  Stream<HomeState> _mapCreateOfflineGamePressedToState() async* {
    yield* state.maybeMap(
      loadSuccess: (loadSuccess) async* {
        _playOfflineService.createGame(owner: loadSuccess.user);
        _playBloc.add(
          const PlayEvent.gameCreated(online: false),
        );
      },
      orElse: () async* {},
    );
  }

  Stream<HomeState> _mapDataReceivedToState(
    DataReceived event,
  ) async* {
    yield HomeState.loadSuccess(
      user: event.user,
      unreadInvitations: event.unreadInvitations,
      unreadFriendRequests: event.unreadFriendRequests,
    );
  }

  Stream<HomeState> _mapGameReceivedToState(
    GameReceived event,
  ) async* {
    yield* state.maybeMap(
      loadSuccess: (loadSuccess) async* {
        yield loadSuccess.copyWith(
          gameSnapshot: event.gameSnapshot,
        );
      },
      orElse: () async* {},
    );
  }

  Stream<HomeState> _mapTrainingGameReceivedToState(
    TrainingGameReceived event,
  ) async* {
    yield* state.maybeMap(
      loadSuccess: (loadSuccess) async* {
        yield loadSuccess.copyWith(
          trainingGameSnapshot: event.trainingGameSnapshot,
        );
      },
      orElse: () async* {},
    );
  }

  /// Loads and caches image located at [url].

  // TODO move this to repo layer or keep here
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
    _dataSubscription?.cancel();
    _gameSnapshotsSubscription?.cancel();
    _trainingGameSnapshotsSubscription?.cancel();

    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<HomeBloc>()) {
      getIt.resetLazySingleton<HomeBloc>();
    }

    return super.close();
  }
}
