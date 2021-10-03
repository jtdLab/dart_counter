import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/core/data_watcher/data_watcher_bloc.dart';
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/domain/play/i_play_offline_facade.dart';
import 'package:dart_counter/domain/play/i_play_online_facade.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

// TODO handle wrongl
@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> with AutoResetLazySingleton {
  final IPlayOfflineFacade _playOfflineFacade;
  final IPlayOnlineFacade _playOnlineFacade;

  final DataWatcherBloc _dataWatcherBloc;
  final PlayBloc _playBloc;

  StreamSubscription? _dataWatcherSubscription;
  StreamSubscription? _gameSnapshotsSubscription;

  HomeBloc(
    this._playOfflineFacade,
    this._playOnlineFacade,
    this._dataWatcherBloc,
    this._playBloc,
  ) : super(
          _dataWatcherBloc.state.maybeMap(
            loadSuccess: (loadSuccess) => HomeState.initial(
              user: loadSuccess.user,
              unreadInvitations: loadSuccess.receivedGameInvitations.iter
                  .where((element) => !element.read)
                  .length,
              unreadFriendRequests: loadSuccess.receivedFriendRequests.iter
                  .where((element) => !element.read)
                  .length,
              loading: false,
            ),
            orElse: () => throw Error(), // TODO name better
          ),
        ) {
    _dataWatcherSubscription =
        _dataWatcherBloc.stream.listen((dataWatcherState) {
      if (dataWatcherState is DataWatcherLoadSuccess) {
        add(
          HomeEvent.dataReceived(
            user: dataWatcherState.user,
            unreadInvitations: dataWatcherState.receivedGameInvitations.iter
                .where((element) => !element.read)
                .length,
            unreadFriendRequests: dataWatcherState.receivedFriendRequests.iter
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
    );
  }

  Stream<HomeState> _mapCreateOnlineGamePressedToState() async* {
    yield state.copyWith(loading: true);

    final failureOrUnit = await _playOnlineFacade.createGame();
    await Future.delayed(const Duration(milliseconds: 500));
    yield* failureOrUnit.fold(
      (failure) async* {
        yield state.copyWith(loading: false);
      },
      (_) async* {
        _playBloc.add(
          const PlayEvent.gameCreated(online: true),
        );
      },
    );
  }

  Stream<HomeState> _mapCreateOfflineGamePressedToState() async* {
    _playOfflineFacade.createGame();
    _playBloc.add(
      const PlayEvent.gameCreated(online: false),
    );
  }

  Stream<HomeState> _mapDataReceivedToState(
    DataReceived event,
  ) async* {
    yield state.copyWith(
      user: event.user,
      unreadInvitations: event.unreadInvitations,
      unreadFriendRequests: event.unreadFriendRequests,
    );
  }

  Stream<HomeState> _mapGameReceivedToState(
    GameReceived event,
  ) async* {
    yield state.copyWith(loading: false, gameSnapshot: event.gameSnapshot);
  }

  @override
  Future<void> close() {
    _dataWatcherSubscription?.cancel();
    _gameSnapshotsSubscription?.cancel();

    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<HomeBloc>()) {
      getIt.resetLazySingleton<HomeBloc>();
    }
    return super.close();
  }
}
