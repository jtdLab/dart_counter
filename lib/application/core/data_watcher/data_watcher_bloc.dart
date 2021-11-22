import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/auth/auth_bloc.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_service.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'data_watcher_bloc.freezed.dart';
part 'data_watcher_event.dart';
part 'data_watcher_state.dart';

// TODO remove ?

@lazySingleton
class DataWatcherBloc extends Bloc<DataWatcherEvent, DataWatcherState>
    with AutoResetLazySingleton {
  final IAuthService _authService;
  final IUserService _userService;
  final IGameInvitationService _gameInvitationService;
  final IFriendService _friendService;

  StreamSubscription? _authSubscription;
  StreamSubscription? _userSubscription;
  StreamSubscription? _receivedGameInvitationsSubscription;
  StreamSubscription? _sentGameInvitationsSubscription;
  StreamSubscription? _friendsSubscription;
  StreamSubscription? _receivedFriendRequestsSubscription;
  StreamSubscription? _sentFriendRequestsSubscription;

  DataWatcherBloc(
    this._authService,
    this._userService,
    this._gameInvitationService,
    this._friendService,
  ) : super(const DataWatcherState.loadInProgress()) {
    _authSubscription = _authService.watchIsAuthenticated().listen((authState) {
      if (authState) {
        //add(DataWatcherEvent.watchDataStarted(appUserId: authState.appUserId));
      } else {
        _cancelDataSubscriptions();
      }
    });
  }

  @override
  Stream<DataWatcherState> mapEventToState(
    DataWatcherEvent event,
  ) async* {
    yield* event.map(
      watchDataStarted: (event) => _mapWatchDataStartedToState(event),
      userReceived: (event) => _mapUserReceivedToState(event),
      receivedGameInvationsReceived: (event) =>
          _mapReceivedGameInvationsReceivedToState(event),
      sentGameInvationsReceived: (event) =>
          _mapSentGameInvationsReceivedToState(event),
      friendsReceived: (event) => _mapFriendsReceivedToState(event),
      receivedFriendRequestsReceived: (event) =>
          _mapReceivedFriendRequestsReceivedToState(event),
      sentFriendRequestsReceived: (event) =>
          _mapSentFriendRequestsReceivedToState(event),
      failureReceived: (_) => _mapFailureReceivedToState(),
    );
  }

  Stream<DataWatcherState> _mapWatchDataStartedToState(
    WatchDataStarted event,
  ) async* {
    _userSubscription = _userService.watchUser().listen((failureOrUser) {
      failureOrUser.fold(
        (failure) => add(const DataWatcherEvent.failureReceived()),
        (user) => add(DataWatcherEvent.userReceived(user: user)),
      );
    });

    _receivedGameInvitationsSubscription = _gameInvitationService
        .watchReceivedGameInvitations()
        .listen((failureOrReceivedGameInvitations) {
      failureOrReceivedGameInvitations.fold(
        (failure) => add(const DataWatcherEvent.failureReceived()),
        (receivedGameInvitations) => add(
          DataWatcherEvent.receivedGameInvationsReceived(
            receivedGameInvitations: receivedGameInvitations,
          ),
        ),
      );
    });

    _sentGameInvitationsSubscription = _gameInvitationService
        .watchSentInvitations()
        .listen((failureOrSentGameInvitations) {
      failureOrSentGameInvitations.fold(
        (failure) => add(const DataWatcherEvent.failureReceived()),
        (sentGameInvitations) => add(
          DataWatcherEvent.sentGameInvationsReceived(
            sentGameInvitations: sentGameInvitations,
          ),
        ),
      );
    });

    _friendsSubscription =
        _friendService.watchFriends().listen((failureOrFriends) {
      failureOrFriends.fold(
        (failure) => add(const DataWatcherEvent.failureReceived()),
        (friends) => add(
          DataWatcherEvent.friendsReceived(
            friends: friends,
          ),
        ),
      );
    });

    _receivedFriendRequestsSubscription = _friendService
        .watchReceivedFriendRequests()
        .listen((failureOrReceivedFriendRequests) {
      failureOrReceivedFriendRequests.fold(
        (failure) => add(const DataWatcherEvent.failureReceived()),
        (receivedFriendRequests) => add(
          DataWatcherEvent.receivedFriendRequestsReceived(
            receivedFriendRequests: receivedFriendRequests,
          ),
        ),
      );
    });

    _sentFriendRequestsSubscription = _friendService
        .watchSentFriendRequests()
        .listen((failureOrSentFriendRequests) {
      failureOrSentFriendRequests.fold(
        (failure) => add(const DataWatcherEvent.failureReceived()),
        (sentFriendRequests) => add(
          DataWatcherEvent.sentFriendRequestsReceived(
            sentFriendRequests: sentFriendRequests,
          ),
        ),
      );
    });
  }

  Stream<DataWatcherState> _mapUserReceivedToState(
    UserReceived event,
  ) async* {
    final user = event.user;

    final photoUrl = user.profile.photoUrl;

    if (photoUrl != null) {
      await _fetchImage(url: photoUrl);
    }

    yield state.map(
      loadInProgress: (loadInProgress) {
        final receivedGameInvitations = loadInProgress.receivedGameInvitations;
        final sentGameInvitations = loadInProgress.sentGameInvitations;
        final friends = loadInProgress.friends;
        final receivedFriendRequests = loadInProgress.receivedFriendRequests;
        final sentFriendRequests = loadInProgress.sentFriendRequests;

        if (receivedGameInvitations != null &&
            sentGameInvitations != null &&
            friends != null &&
            receivedFriendRequests != null &&
            sentFriendRequests != null) {
          return DataWatcherState.loadSuccess(
            user: user,
            receivedGameInvitations: receivedGameInvitations,
            sentGameInvitations: sentGameInvitations,
            friends: friends,
            receivedFriendRequests: receivedFriendRequests,
            sentFriendRequests: sentFriendRequests,
          );
        } else {
          return loadInProgress.copyWith(user: user);
        }
      },
      loadSuccess: (loadSuccess) => loadSuccess.copyWith(user: user),
      loadFailure: (_) => const DataWatcherState.loadFailure(),
    );
  }

  Stream<DataWatcherState> _mapReceivedGameInvationsReceivedToState(
    ReceivedGameInvationsReceived event,
  ) async* {
    final receivedGameInvitations = event.receivedGameInvitations;
    yield state.map(
      loadInProgress: (loadInProgress) {
        final user = loadInProgress.user;
        final sentGameInvitations = loadInProgress.sentGameInvitations;
        final friends = loadInProgress.friends;
        final receivedFriendRequests = loadInProgress.receivedFriendRequests;
        final sentFriendRequests = loadInProgress.sentFriendRequests;

        if (user != null &&
            sentGameInvitations != null &&
            friends != null &&
            receivedFriendRequests != null &&
            sentFriendRequests != null) {
          return DataWatcherState.loadSuccess(
            user: user,
            receivedGameInvitations: receivedGameInvitations,
            sentGameInvitations: sentGameInvitations,
            friends: friends,
            receivedFriendRequests: receivedFriendRequests,
            sentFriendRequests: sentFriendRequests,
          );
        } else {
          return loadInProgress.copyWith(
            receivedGameInvitations: receivedGameInvitations,
          );
        }
      },
      loadSuccess: (loadSuccess) => loadSuccess.copyWith(
        receivedGameInvitations: receivedGameInvitations,
      ),
      loadFailure: (_) => const DataWatcherState.loadFailure(),
    );
  }

  Stream<DataWatcherState> _mapSentGameInvationsReceivedToState(
    SentGameInvationsReceived event,
  ) async* {
    final sentGameInvitations = event.sentGameInvitations;
    yield state.map(
      loadInProgress: (loadInProgress) {
        final user = loadInProgress.user;
        final receivedGameInvitations = loadInProgress.receivedGameInvitations;
        final friends = loadInProgress.friends;
        final receivedFriendRequests = loadInProgress.receivedFriendRequests;
        final sentFriendRequests = loadInProgress.sentFriendRequests;

        if (user != null &&
            receivedGameInvitations != null &&
            friends != null &&
            receivedFriendRequests != null &&
            sentFriendRequests != null) {
          return DataWatcherState.loadSuccess(
            user: user,
            receivedGameInvitations: receivedGameInvitations,
            sentGameInvitations: sentGameInvitations,
            friends: friends,
            receivedFriendRequests: receivedFriendRequests,
            sentFriendRequests: sentFriendRequests,
          );
        } else {
          return loadInProgress.copyWith(
              sentGameInvitations: sentGameInvitations);
        }
      },
      loadSuccess: (loadSuccess) => loadSuccess.copyWith(
        sentGameInvitations: sentGameInvitations,
      ),
      loadFailure: (_) => const DataWatcherState.loadFailure(),
    );
  }

  Stream<DataWatcherState> _mapFriendsReceivedToState(
    FriendsReceived event,
  ) async* {
    final friends = event.friends;
    yield state.map(
      loadInProgress: (loadInProgress) {
        final user = loadInProgress.user;
        final receivedGameInvitations = loadInProgress.receivedGameInvitations;
        final sentGameInvitations = loadInProgress.sentGameInvitations;
        final receivedFriendRequests = loadInProgress.receivedFriendRequests;
        final sentFriendRequests = loadInProgress.sentFriendRequests;

        if (user != null &&
            receivedGameInvitations != null &&
            sentGameInvitations != null &&
            receivedFriendRequests != null &&
            sentFriendRequests != null) {
          return DataWatcherState.loadSuccess(
            user: user,
            receivedGameInvitations: receivedGameInvitations,
            sentGameInvitations: sentGameInvitations,
            friends: friends,
            receivedFriendRequests: receivedFriendRequests,
            sentFriendRequests: sentFriendRequests,
          );
        } else {
          return loadInProgress.copyWith(friends: friends);
        }
      },
      loadSuccess: (loadSuccess) => loadSuccess.copyWith(friends: friends),
      loadFailure: (_) => const DataWatcherState.loadFailure(),
    );
  }

  Stream<DataWatcherState> _mapReceivedFriendRequestsReceivedToState(
    ReceivedFriendRequestsReceived event,
  ) async* {
    final receivedFriendRequests = event.receivedFriendRequests;
    yield state.map(
      loadInProgress: (loadInProgress) {
        final user = loadInProgress.user;
        final receivedGameInvitations = loadInProgress.receivedGameInvitations;
        final sentGameInvitations = loadInProgress.sentGameInvitations;
        final friends = loadInProgress.friends;

        final sentFriendRequests = loadInProgress.sentFriendRequests;

        if (user != null &&
            receivedGameInvitations != null &&
            sentGameInvitations != null &&
            friends != null &&
            sentFriendRequests != null) {
          return DataWatcherState.loadSuccess(
            user: user,
            receivedGameInvitations: receivedGameInvitations,
            sentGameInvitations: sentGameInvitations,
            friends: friends,
            receivedFriendRequests: receivedFriendRequests,
            sentFriendRequests: sentFriendRequests,
          );
        } else {
          return loadInProgress.copyWith(
            receivedFriendRequests: receivedFriendRequests,
          );
        }
      },
      loadSuccess: (loadSuccess) => loadSuccess.copyWith(
        receivedFriendRequests: receivedFriendRequests,
      ),
      loadFailure: (_) => const DataWatcherState.loadFailure(),
    );
  }

  Stream<DataWatcherState> _mapSentFriendRequestsReceivedToState(
    SentFriendRequestsReceived event,
  ) async* {
    final sentFriendRequests = event.sentFriendRequests;
    yield state.map(
      loadInProgress: (loadInProgress) {
        final user = loadInProgress.user;
        final receivedGameInvitations = loadInProgress.receivedGameInvitations;
        final sentGameInvitations = loadInProgress.sentGameInvitations;
        final friends = loadInProgress.friends;
        final receivedFriendRequests = loadInProgress.receivedFriendRequests;

        if (user != null &&
            receivedGameInvitations != null &&
            sentGameInvitations != null &&
            friends != null &&
            receivedFriendRequests != null) {
          return DataWatcherState.loadSuccess(
            user: user,
            receivedGameInvitations: receivedGameInvitations,
            sentGameInvitations: sentGameInvitations,
            friends: friends,
            receivedFriendRequests: receivedFriendRequests,
            sentFriendRequests: sentFriendRequests,
          );
        } else {
          return loadInProgress.copyWith(
            sentFriendRequests: sentFriendRequests,
          );
        }
      },
      loadSuccess: (loadSuccess) => loadSuccess.copyWith(
        sentFriendRequests: sentFriendRequests,
      ),
      loadFailure: (_) => const DataWatcherState.loadFailure(),
    );
  }

  Stream<DataWatcherState> _mapFailureReceivedToState() async* {
    yield const DataWatcherState.loadFailure();
  }

  void _cancelDataSubscriptions() {
    _userSubscription?.cancel();
    _receivedGameInvitationsSubscription?.cancel();
    _sentGameInvitationsSubscription?.cancel();
    _friendsSubscription?.cancel();
    _receivedFriendRequestsSubscription?.cancel();
    _sentFriendRequestsSubscription?.cancel();
  }

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
    _cancelDataSubscriptions();
    _authSubscription?.cancel();

    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<DataWatcherBloc>()) {
      getIt.resetLazySingleton<DataWatcherBloc>();
    }

    return super.close();
  }
}
